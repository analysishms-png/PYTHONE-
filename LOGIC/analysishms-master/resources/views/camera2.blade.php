<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Aadhaar OCR Scanner</title>
  <script src="https://cdn.jsdelivr.net/npm/tesseract.js@5.0.4/dist/tesseract.min.js"></script>
  <style>
    body { font-family: Arial, sans-serif; text-align: center; padding: 20px; }
    #result { margin-top: 20px; border: 1px solid #ccc; padding: 10px; word-wrap: break-word; text-align: left; }
    input[type="file"] { margin-top: 10px; }
  </style>
</head>
<body>
  <h2>Aadhaar OCR Scanner (Web)</h2>

  <input type="file" id="fileInput" accept="image/*" />
  <div id="result">Extracted data will appear here...</div>

  <script>
    const resultDiv = document.getElementById("result");

    document.getElementById("fileInput").addEventListener("change", async (e) => {
      const file = e.target.files[0];
      if (!file) return;

      resultDiv.innerText = "Processing image...";

      const worker = Tesseract.createWorker();

      try {
        await worker.load();
        await worker.loadLanguage('eng');
        await worker.initialize('eng');

        const imageURL = URL.createObjectURL(file);
        const { data: { text } } = await worker.recognize(imageURL);

        await worker.terminate();
        URL.revokeObjectURL(imageURL);

        let name = text.match(/Name[:\s]*([A-Za-z\s]+)/i);
        let dob = text.match(/DOB[:\s]*([0-9\/\-]+)/i);
        let gender = text.match(/Gender[:\s]*(Male|Female|Other)/i);
        let address = text.match(/Address[:\s]*([\s\S]+)/i);

        resultDiv.innerHTML = `
          <b>Name:</b> ${name ? name[1] : 'Not found'}<br>
          <b>DOB:</b> ${dob ? dob[1] : 'Not found'}<br>
          <b>Gender:</b> ${gender ? gender[1] : 'Not found'}<br>
          <b>Address:</b> ${address ? address[1].split(/\n/)[0] : 'Not found'}<br>
          <pre>${text}</pre>
        `;
      } catch (err) {
        console.error(err);
        resultDiv.innerText = "Error processing image!";
      }
    });
  </script>
</body>
</html>
