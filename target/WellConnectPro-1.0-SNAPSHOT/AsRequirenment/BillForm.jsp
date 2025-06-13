<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Tailwind CSS -->
  <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
  <title>BillForm</title>
</head>
<body class="bg-gray-100">
  <div class="max-w-4xl mx-auto p-8 bg-white shadow-lg rounded">
    <!-- Header Section -->
    <div class="border-b pb-4 mb-4">
      <h1 class="text-3xl font-bold">
        <%= request.getParameter("myLegalName") != null ? request.getParameter("myLegalName") : "Your Business Name" %>
      </h1>
      <p class="text-sm text-gray-600">
        Bank Account: <%= request.getParameter("bankAccount") != null ? request.getParameter("bankAccount") : "N/A" %> | IFSC: <%= request.getParameter("ifscCode") != null ? request.getParameter("ifscCode") : "N/A" %>
      </p>
    </div>
    
    <!-- BILL FROM & BILL TO -->
    <div class="flex flex-wrap mb-8">
      <!-- Bill From -->
      <div class="w-full md:w-1/2 mb-4 md:mb-0">
        <h2 class="text-xl font-semibold">BILL FROM</h2>
        <p class="mt-1"><strong><%= request.getParameter("myLegalName") != null ? request.getParameter("myLegalName") : "Your Business Name" %></strong></p>
        <p class="mt-1 text-sm text-gray-600">
          Bank Account: <%= request.getParameter("bankAccount") != null ? request.getParameter("bankAccount") : "N/A" %>
        </p>
        <p class="mt-1 text-sm text-gray-600">
          IFSC Code: <%= request.getParameter("ifscCode") != null ? request.getParameter("ifscCode") : "N/A" %>
        </p>
      </div>
      <!-- Bill To -->
      <div class="w-full md:w-1/2">
        <h2 class="text-xl font-semibold">BILL TO</h2>
        <p class="mt-1"><strong><%= request.getParameter("clientCompany") != null ? request.getParameter("clientCompany") : "Client Company" %></strong></p>
        <!-- Agar aapke paas aur billing details hongi to yahan add kar sakte hain -->
      </div>
    </div>
    
    <!-- Invoice Details -->
    <div class="flex justify-between mb-8">
      <div>
        <p class="text-sm"><strong>Invoice #:</strong> 001</p>
        <p class="text-sm">
          <strong>Issue Date:</strong> <%= new java.text.SimpleDateFormat("MM/dd/yyyy").format(new java.util.Date()) %>
        </p>
      </div>
      <div>
        <!-- Due Date ya Payment Terms aap yahan add kar sakte hain -->
        <p class="text-sm">
          <strong>Due Date:</strong> <%= new java.text.SimpleDateFormat("MM/dd/yyyy").format(new java.util.Date()) %>
        </p>
      </div>
    </div>
    
    <!-- Items Table -->
    <div class="overflow-x-auto mb-8">
      <table class="min-w-full border">
        <thead class="bg-gray-200">
          <tr>
            <th class="py-2 px-4 border-b text-left">Item</th>
            <th class="py-2 px-4 border-b text-left">Amount</th>
          </tr>
        </thead>
        <tbody>
          <%
            // Retrieve the comma-separated items and amount from the form
            String items = request.getParameter("items");
            String amountStr = request.getParameter("amount");
            if(items != null && !items.trim().isEmpty()){
              String[] itemArr = items.split(",");
              for(String item : itemArr){
          %>
          <tr>
            <td class="py-2 px-4 border-b"><%= item.trim() %></td>
            <td class="py-2 px-4 border-b"><%= amountStr != null ? amountStr : "0.00" %></td>
          </tr>
          <%
              }
            } else {
          %>
          <tr>
            <td class="py-2 px-4 border-b">No items</td>
            <td class="py-2 px-4 border-b">0.00</td>
          </tr>
          <%
            }
          %>
        </tbody>
      </table>
    </div>
    
    <!-- Total Section -->
    <div class="flex justify-end mb-8">
      <div class="w-full md:w-1/3">
        <div class="flex justify-between border-t pt-2">
          <span class="font-semibold">Total:</span>
          <span class="font-semibold"><%= request.getParameter("total") != null ? request.getParameter("total") : "0.00" %></span>
        </div>
      </div>
    </div>
    
    <!-- Additional Description -->
    <%
      String description = request.getParameter("description");
      if(description != null && !description.trim().isEmpty()){
    %>
    <div class="mb-8">
      <h3 class="text-lg font-semibold mb-2">Additional Description</h3>
      <p class="text-sm text-gray-700"><%= description %></p>
    </div>
    <%
      }
    %>
    
    <!-- Footer / Payment Details -->
    <div class="text-center text-sm text-gray-600 border-t pt-4">
      <p>Payment Details:</p>
      <p>Bank Account: <%= request.getParameter("bankAccount") != null ? request.getParameter("bankAccount") : "N/A" %></p>
      <p>IFSC Code: <%= request.getParameter("ifscCode") != null ? request.getParameter("ifscCode") : "N/A" %></p>
    </div>
  </div>
</body>
</html>