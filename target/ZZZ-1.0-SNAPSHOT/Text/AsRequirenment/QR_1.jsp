<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>QR code generator</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-full min-h-screen bg-gradient-to-br from-green-800 to-blue-800 flex items-center justify-center">
  <div class="bg-white w-72 p-5 rounded-2xl text-center shadow-lg">
    <p class="text-lg font-semibold mb-3">QR Code Payment</p>

    <input type="text" id="input" 
           placeholder="Text or URL" 
           class="w-full p-2 border rounded mb-3" 
           value="upi://pay?pa=7991444752@ybl&pn=Priyanshu Kumar&am=1.00&cu=INR" />
    
    <button id="generateQR" 
            class="w-full h-10 bg-green-500 text-white rounded-lg font-semibold hover:bg-green-600 transition">
      Generate QR
    </button>

    <div id="qrContainer" class="mt-4 hidden flex flex-col items-center">
      <img src="" alt="QR code" id="imageQR" class="mx-auto mb-3"/>
      
      <p class="text-sm text-gray-600">Scan and pay within:</p>
      <p id="timer" class="text-red-600 font-bold text-lg">02:00</p>
      
      <button id="confirmPayment" 
              class="mt-2 text-sm text-blue-500 underline">
        I have paid (simulate)
      </button>
    </div>

    <p id="expiredMsg" class="text-red-600 text-sm mt-3 hidden">QR Code Expired!</p>
  </div>

  <script>
    const input = document.querySelector("#input");
    const btnGenerateQR = document.querySelector("#generateQR");
    const imageQR = document.querySelector("#imageQR");
    const qrContainer = document.querySelector("#qrContainer");
    const timerEl = document.querySelector("#timer");
    const expiredMsg = document.querySelector("#expiredMsg");
    const confirmPayment = document.querySelector("#confirmPayment");

    let countdownInterval;

    function startTimer(duration) {
      let time = duration;

      clearInterval(countdownInterval); // clear any previous timer

      countdownInterval = setInterval(() => {
        const minutes = Math.floor(time / 60);
        const seconds = time % 60;
        timerEl.textContent = 
          `${minutes.toString().padStart(2, '0')}:${seconds.toString().padStart(2, '0')}`;
        
        if (time <= 0) {
          clearInterval(countdownInterval);
          expiredMsg.classList.remove("hidden");
          confirmPayment.classList.add("hidden");
        }

        time--;
      }, 1000);
    }

    function GenerateQR() {
      const value = input.value.trim();
      if (value === "") {
        alert("Please enter UPI URL or data");
        return;
      }

      const qrData = encodeURIComponent(value);
      imageQR.setAttribute("src", 
        'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=' + qrData);

      qrContainer.classList.remove("hidden");
      expiredMsg.classList.add("hidden");
      confirmPayment.classList.remove("hidden");

      startTimer(120); // 2 minutes
    }

    btnGenerateQR.addEventListener("click", GenerateQR);

    confirmPayment.addEventListener("click", () => {
      clearInterval(countdownInterval);
      window.location.href = "payment-success.jsp"; // redirect after simulated success
    });
  </script>
</body>
</html>
