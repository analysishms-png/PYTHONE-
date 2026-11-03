-- =====================================================
-- STOCK IN HAND (Stores) - 01/04/2025 se aaj tak
-- Item Group wise, 0 stock wale items bhi included
-- Site: ss
-- =====================================================

DECLARE @FromDate  datetime = '2025-04-01';  -- 01 April 2025
DECLARE @ToDate    datetime = GETDATE();     -- aaj ki date (fixed date chahiye to yahan likh do, jaise '2026-09-03')
DECLARE @SiteCode  varchar(10) = 'ss';       -- apna login site code

WITH ItemList AS (
    SELECT I.Code AS ItemCode,
           I.Name AS ItemName,
           I.Type,
           I.IssueUnit AS Unit,
           I.MaxStock * I.ConvRatio AS MaxStock,
           I.MinStock * I.ConvRatio AS MinStock,
           I.ReStock * I.ConvRatio AS ReStock,
           I.ActiveYN,
           ISNULL(G.Name, '') AS ItemGrpName
    FROM ItemMast I
    LEFT JOIN ItemGrp G ON G.Code = I.ItemGroup
    WHERE I.ItemType = 'Store'                -- saare store items (0 stock wale bhi)
),
Opening AS (
    SELECT S.Item,
           SUM(CASE WHEN VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','KSREC','KMREC')
                    THEN S.QtyRec ELSE 0 END) AS OpRecQty,
           SUM(CASE WHEN VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS')
                    THEN S.QtyIss ELSE 0 END) AS OpIssQty,
           SUM(CASE WHEN VT.NCAT IN ('PBC','PBR','STOP','MRE','RQI','KSREC','KMREC')
                    THEN S.Amount ELSE 0 END) AS OpRecAmt,
           SUM(CASE WHEN VT.NCAT IN ('PRR','PRC','RQR','KSISS','KMISS')
                    THEN S.Amount ELSE 0 END) AS OpIssAmt
    FROM Stock S
    INNER JOIN ItemMast I ON S.Item = I.Code AND I.ItemType = 'Store'
    INNER JOIN Voucher_type VT ON S.VType = VT.V_Type AND S.LogSite_Code = VT.LogSite_Code
    WHERE S.LogSite_Code = @SiteCode
      AND S.VDate < @FromDate                 -- 01/04/2025 se pehle ka opening
    GROUP BY S.Item
),
Period AS (
    SELECT S.Item,
           SUM(CASE WHEN VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','KSREC','KMREC')
                    THEN S.QtyRec ELSE 0 END) AS RecQty,
           SUM(CASE WHEN VT.NCAT IN ('PRR','PRC','RQR','STOP','KSISS','KMISS')
                    THEN S.QtyIss ELSE 0 END) AS IssQty,
           SUM(CASE WHEN VT.NCAT IN ('PBC','PBR','MRE','RQI','STOP','KSREC','KMREC')
                    THEN S.Amount ELSE 0 END) AS RecAmt,
           SUM(CASE WHEN VT.NCAT IN ('PRR','PRC','RQR','STOP','KSISS','KMISS')
                    THEN S.Amount ELSE 0 END) AS IssAmt
    FROM Stock S
    INNER JOIN ItemMast I ON S.Item = I.Code AND I.ItemType = 'Store'
    INNER JOIN Voucher_type VT ON S.VType = VT.V_Type AND S.LogSite_Code = VT.LogSite_Code
    WHERE S.LogSite_Code = @SiteCode
      AND S.VDate BETWEEN @FromDate AND @ToDate  -- 01/04/2025 se aaj tak
    GROUP BY S.Item
)
SELECT IL.ItemGrpName,
       IL.ItemCode,
       IL.ItemName,
       IL.Unit,
       IL.Type,
       ISNULL(O.OpRecQty, 0) - ISNULL(O.OpIssQty, 0)          AS OpeningQty,
       ISNULL(P.RecQty, 0)                                    AS ReceiptQty,
       ISNULL(P.IssQty, 0)                                    AS IssueQty,
       ISNULL(O.OpRecQty, 0) - ISNULL(O.OpIssQty, 0)
         + ISNULL(P.RecQty, 0) - ISNULL(P.IssQty, 0)          AS ClosingQty,
       ISNULL(O.OpRecAmt, 0) - ISNULL(O.OpIssAmt, 0)
         + ISNULL(P.RecAmt, 0) - ISNULL(P.IssAmt, 0)          AS ClosingValue,
       IL.MaxStock,
       IL.MinStock,
       IL.ReStock
FROM ItemList IL
LEFT JOIN Opening O ON O.Item = IL.ItemCode
LEFT JOIN Period  P ON P.Item = IL.ItemCode
ORDER BY IL.ItemGrpName, IL.ItemName