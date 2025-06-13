<%
  if (session.getAttribute("name")==null){
	  
  }
   if (session.getAttribute("number") == null) {
        
    }
  %>  
<nav class="w-full border-b border-gray-200 px-6 py-3 flex items-center justify-between bg-white shadow">
        <!-- Left Section -->
        <div class="flex items-center space-x-6">
            <div class="text-2xl font-bold text-indigo-900">
                WellConnectPro
            </div>
           <a href="/appointment/finddoc.jsp" class="text-gray-800 font-medium hover:text-blue-500">Find Doctors</a>
      <a href="ViewSpecialitie.jsp" class="text-gray-800 font-medium hover:text-blue-500"> Video Consult  </a>  
      <a href="appointment/Surgeries.jsp" class="text-gray-800 font-medium hover:text-blue-500">Surgeries</a>
        </div>

       

            <button class="border border-gray-300 px-3 py-1.5 rounded bg-red-300 text-m hover:bg-red-600 font-bold">
                <a href="#"><%=session.getAttribute("name") %></a>
            </button>
        </div>
    </nav>