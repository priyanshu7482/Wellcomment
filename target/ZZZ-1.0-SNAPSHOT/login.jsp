 
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100">
    
  <div class="flex items-center justify-center min-h-screen">
    <div class="max-w-6xl w-full bg-white shadow-lg rounded-lg overflow-hidden flex">
      
      <!-- Illustration Section -->
      <div class="hidden md:block w-1/2 bg-white-100 p-8 flex items-center justify-center">
        <!-- Add your illustration here -->
        <img src="https://i.pinimg.com/736x/88/96/07/889607b6dd0ad7b32fa56d3ad75b393a.jpg" alt="Illustration" class="w-full h-auto">
      </div>
      
      <!-- Login Form Section -->
      <div class="w-full md:w-1/2 p-8">
        <div class="flex border-b mb-6">
          <button class="w-1/2 py-2 px-4 border-blue-500 text-blue-500 font-bold hover:text-red-500"><a href="#">Login</a></button>
          <button class="w-1/2 py-2 px-4 border-blue-500 text-blue-500 font-bold hover:text-red-500"><a href="register.jsp">Register</a></button>
        </div>
          
          
         <form method="post" action="LoginServlet">
          <div class="mb-4">
            <label class="block text-gray-700 font-medium">Mobile Number / Email ID</label>
            <input type="email" name="email" class="w-full p-3 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
          </div>
          <div class="mb-4">
            <label class="block text-gray-700 font-medium">Password</label>
            <input type="password" name="password" class="w-full p-3 border rounded focus:outline-none focus:ring-2 focus:ring-blue-500">
          </div>
         
          <div class="mb-4 flex items-center">
            <input type="checkbox" id="otp-login" class="mr-2">
            <label for="otp-login" class="text-gray-600">Login with OTP instead of password</label>
          </div>
          <a href="Text/forgot_password.jsp" class="text-blue-500 mb-4 inline-block">Forgot password?</a>
          <button class="w-full py-3 bg-blue-500 text-white rounded hover:bg-blue-600">Login</button>
        </form>
      </div>
    </div>
  </div>



  
</body>
</html>