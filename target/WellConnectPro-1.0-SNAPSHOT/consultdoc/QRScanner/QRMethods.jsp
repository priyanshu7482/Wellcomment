<%
  if (session.getAttribute("name")==null){
	  response.sendRedirect("index.jsp");
  }
  %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>

   <!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Payment Options</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gradient-to-r from-indigo-500 from-10% via-red-500 via-30% to-emerald-500 to-90% ">
  <div class="max-w-5xl mx-auto my-8 p-4 bg-white rounded shadow">
  
    <!-- Top Header: Payment Options & Account to Pay -->
    <div class="mb-6">
      <div class="flex justify-between items-center">
        <div class="flex items-center space-x-3">
          <h1 class="text-2xl font-bold text-gray-800">Payment Options</h1>
      
        </div>
        <div class="text-right">
          <p class="text-gray-600 text-sm">Account to Pay</p>
          <p class="text-xl font-semibold text-gray-800">₹499.00</p>
        </div>
      </div>
    </div>
   

   <hr class="border-gray-800" />
   <br>
    <div class="flex divide-x">
      <!-- Left Navigation Menu -->
      <div class="w-1/3 pr-4">
        <ul id="payment-methods" class="space-y-2">
          <li data-tab="debit" class="cursor-pointer p-3 rounded bg-blue-200">Debit / Credit Card</li>
          <li data-tab="paytm" class="cursor-pointer p-3 rounded hover:bg-blue-100">Paytm Postpaid &amp; Wallet</li>
          <li data-tab="upi" class="cursor-pointer p-3 rounded hover:bg-blue-100">UPI</li>
          <li data-tab="google" class="cursor-pointer p-3 rounded hover:bg-blue-100">Google Pay</li>
          <li data-tab="amazon" class="cursor-pointer p-3 rounded hover:bg-blue-100">Amazon Pay</li>
          <li data-tab="phonepe" class="cursor-pointer p-3 rounded hover:bg-blue-100">PhonePe / BHIM UPI</li>
          <li data-tab="netbanking" class="cursor-pointer p-3 rounded hover:bg-blue-100">Net Banking</li>
          <li data-tab="paylater" class="cursor-pointer p-3 rounded hover:bg-blue-100">Pay Later</li>
          <li data-tab="others" class="cursor-pointer p-3 rounded hover:bg-blue-100">Others</li>
        </ul>
      </div>
  
      <!-- Right Content -->
      <div class="w-2/3 pl-4">
        <!-- Debit / Credit Card Section -->
        <div id="debit" class="tab-content">
          <h2 class="text-2xl font-semibold mb-4">Debit / Credit Card</h2>
          <form>
            <div class="mb-4">
              <label class="block text-gray-700">Card Number</label>
              <input type="text" placeholder="0000 0000 0000 0000" class="mt-1 w-full border rounded p-2">
            </div>
            <div class="mb-4">
              <label class="block text-gray-700">Card Holder's Name</label>
              <input type="text" placeholder="Name on Card" class="mt-1 w-full border rounded p-2">
            </div>
            <div class="flex space-x-4 mb-4">
              <div class="w-1/2">
                <label class="block text-gray-700">Valid Thru</label>
                <input type="text" placeholder="MM/YY" class="mt-1 w-full border rounded p-2">
              </div>
              <div class="w-1/2">
                <label class="block text-gray-700">CVV</label>
                <input type="text" placeholder="***" class="mt-1 w-full border rounded p-2">
              </div>
            </div>
            <div class="flex items-center mb-4">
              <input type="checkbox" id="remember" class="mr-2">
              <label for="remember" class="text-gray-700">Remember card details (excluding CVV)</label>
            </div>
            <div class="mb-4">
              <p class="text-lg font-semibold text-gray-800">Amount: ₹499.00</p>
            </div>
            <button type="submit" class="w-full bg-blue-600 text-white p-3 rounded hover:bg-blue-700">Pay</button>
          </form>
          <div class="mt-4 text-gray-500 text-sm">
            <p>100% Secure Transaction</p>
            <!-- Payment provider logos -->
            <div class="flex space-x-2 mt-2">
              <img src="https://via.placeholder.com/40x25?text=Visa" alt="Visa" class="object-contain">
              <img src="https://via.placeholder.com/40x25?text=MC" alt="MasterCard" class="object-contain">
              <img src="https://via.placeholder.com/40x25?text=Amex" alt="American Express" class="object-contain">
              <img src="https://via.placeholder.com/40x25?text=RuPay" alt="RuPay" class="object-contain">
            </div>
          </div>
        </div>
         
        <!-- Paytm Postpaid & Wallet Section -->
        <div id="paytm" class="tab-content hidden">
          <h2 class="text-2xl font-semibold mb-4">Paytm Postpaid &amp; Wallet</h2>
         </div>
        
        
        
        
        <!-- UPI Section -->
        <div id="upi" class="tab-content hidden">
<input type="radio" id="phonpay" name="phonpay" value="phonpay" checked class="mr-2" />
          <label for="phonepay" class="text-gray-700"> Phonpay </label>
          <input type="text" id="input" placeholder="Text or URL" class="text-gray-700 w-full p-2 border rounded mb-3"  value="upi://pay?pa=7482892121@ybl&pn=Priyanshu Kumar&am=50.00&cu=INR"  disabled/>
    <!-- Generate QR Button -->
<button id="generateQR" class="w-full h-8 bg-green-300 rounded-lg cursor-pointer hover:scale-90 transition-transform duration-300">
  Generate QR
</button>

<!-- QR Code Image -->
<img src="" alt="QR code here" id="imageQR" class="mx-auto mt-4 hidden"/>

<!-- Continue Button (Initially Hidden) -->
<div class="flex justify-center mt-4">
    <button id="continueBtn" class="bg-blue-600 text-white px-4 py-2 rounded hover:bg-blue-700 hidden">
        <a href="../../video.jsp">Continue to Payment</a>
    </button>
</div>



  </div>
         
  
        <!-- Google Pay Section -->
        <div id="google" class="tab-content hidden">
          <h2 class="text-2xl font-semibold mb-4">Google Pay</h2>
         </div>
  
        <!-- Amazon Pay Section -->
        <div id="amazon" class="tab-content hidden">
          <h2 class="text-2xl font-semibold mb-4">Amazon Pay</h2>
         </div>
  
        <!-- PhonePe / BHIM UPI Section -->
        <div id="phonepe" class="tab-content hidden">
          <h2 class="text-2xl font-semibold mb-4">PhonePe / BHIM UPI</h2>
         </div>
  
        <!-- Net Banking Section -->
        <div id="netbanking" class="tab-content hidden">
          <h2 class="text-2xl font-semibold mb-4">Net Banking</h2>
         </div>
  
        <!-- Pay Later Section -->
        <div id="paylater" class="tab-content hidden">
          <h2 class="text-2xl font-semibold mb-4">Pay Later</h2>
         </div>
  
        <!-- Others Section -->
        <div id="others" class="tab-content hidden">
          <h2 class="text-2xl font-semibold mb-4">Other Payment Options</h2>
         </div>
      </div>
    </div>
  </div>
  
  <!-- JavaScript for Tab Switching -->
  <script>
    document.addEventListener("DOMContentLoaded", function () {
      const tabs = document.querySelectorAll("#payment-methods li");
      const contents = document.querySelectorAll(".tab-content");
      
      tabs.forEach(tab => {
        tab.addEventListener("click", function () {
          // Remove active style from all menu items
          tabs.forEach(t => t.classList.remove("bg-blue-200"));
          // Apply active style to selected item
          this.classList.add("bg-blue-200");
  
          // Hide all content sections
          contents.forEach(content => content.classList.add("hidden"));
          // Reveal the corresponding content section
          const target = this.getAttribute("data-tab");
          document.getElementById(target).classList.remove("hidden");
        });
      });
    });
  </script>
  
<script>
  let input = document.querySelector("#input");
  let btnGenerateQR = document.querySelector("#generateQR");
  let imageQR = document.querySelector("#imageQR");
  let continueBtn = document.querySelector("#continueBtn");

  function GenerateQR() {
    if (input.value == "") {
      alert("Please provide valid input");
      return;
    }
    
    // Generate QR Code
    imageQR.setAttribute("src", 'https://api.qrserver.com/v1/create-qr-code/?size=150x150&data=' + encodeURIComponent(input.value));
    
    // Show QR Code & Continue Button
    imageQR.classList.remove("hidden");
    continueBtn.classList.remove("hidden");
  }

  btnGenerateQR.addEventListener("click", GenerateQR);
</script>
</body>
</html>