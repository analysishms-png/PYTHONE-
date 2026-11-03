<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hotel Reservation Voucher</title>
</head>

<body style="margin:0; padding:0; background-color:#f5f5f5; font-family:Arial, sans-serif;">
    <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0"
        style="background-color:#f5f5f5; padding:20px 0;">
        <tr>
            <td align="center">
                <!-- Main Container -->
                <table role="presentation" width="600" cellspacing="0" cellpadding="0" border="0"
                    style="background-color:#ffffff; border-radius:8px; overflow:hidden; box-shadow:0 0 5px rgba(0,0,0,0.1);">
                    
                    <!-- Header -->
                    <tr>
                        <td style="padding:15px 20px; background-color:#004aad; color:#ffffff; font-size:14px;">
                            <table role="presentation" width="100%" cellspacing="0" cellpadding="0" border="0">
                                <tr>
                                    <td align="left" style="font-weight:bold;">Sagar</td>
                                    <td align="center">
                                        <div style="font-size:20px; font-weight:bold;">Hotel Grand Paradise</div>
                                        <div style="font-size:12px;">“Experience Luxury & Comfort”</div>
                                    </td>
                                    <td align="right" style="font-size:12px;">
                                        <span id="currentDate"></span>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- Body -->
                    <tr>
                        <td style="padding:30px 20px; text-align:center; color:#333333;">
                            <h2 style="margin-top:0;">Your Reservation Voucher</h2>
                            <p style="font-size:14px; color:#555;">Thank you for choosing Hotel Grand Paradise. Please find your booking details and options below:</p>
                            <table role="presentation" align="center" cellspacing="0" cellpadding="0" border="0"
                                style="margin:20px auto;">
                                <tr>
                                    <td style="padding:10px;">
                                        <a href="#"
                                            style="background-color:#004aad; color:#ffffff; text-decoration:none; padding:10px 20px; border-radius:4px; display:inline-block;">View</a>
                                    </td>
                                    <td style="padding:10px;">
                                        <a href="#"
                                            style="background-color:#28a745; color:#ffffff; text-decoration:none; padding:10px 20px; border-radius:4px; display:inline-block;">Book</a>
                                    </td>
                                    <td style="padding:10px;">
                                        <a href="#"
                                            style="background-color:#ff9800; color:#ffffff; text-decoration:none; padding:10px 20px; border-radius:4px; display:inline-block;">Visit Website</a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <!-- Footer -->
                    <tr>
                        <td style="background-color:#f0f0f0; padding:20px; text-align:center; font-size:12px; color:#555;">
                            <p style="margin:5px 0;">© 2025 Hotel Grand Paradise. All rights reserved.</p>
                            <p style="margin:10px 0;">
                                <a href="https://facebook.com" style="margin:0 5px;"><img
                                        src="https://cdn-icons-png.flaticon.com/512/124/124010.png" width="20" height="20"
                                        alt="Facebook"></a>
                                <a href="https://instagram.com" style="margin:0 5px;"><img
                                        src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png" width="20"
                                        height="20" alt="Instagram"></a>
                                <a href="https://linkedin.com" style="margin:0 5px;"><img
                                        src="https://cdn-icons-png.flaticon.com/512/174/174857.png" width="20"
                                        height="20" alt="LinkedIn"></a>
                            </p>
                            <p style="margin:10px 0;">Need help? Contact us at
                                <a href="mailto:support@mail.com" style="color:#004aad; text-decoration:none;">support@mail.com</a>
                            </p>
                            <p style="margin-top:10px;">
                                <a href="#" style="color:#004aad; text-decoration:none;">Terms of Service</a> |
                                <a href="#" style="color:#004aad; text-decoration:none;">Privacy Policy</a> |
                                <a href="#" style="color:#004aad; text-decoration:none;">Refund Policy</a>
                            </p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

    <!-- Inline JS for dynamic date (safe fallback for clients that support it) -->
    <script>
        const now = new Date();
        document.getElementById('currentDate').innerText = now.toLocaleString('en-IN', {
            dateStyle: 'medium',
            timeStyle: 'short'
        });
    </script>
</body>
</html>
