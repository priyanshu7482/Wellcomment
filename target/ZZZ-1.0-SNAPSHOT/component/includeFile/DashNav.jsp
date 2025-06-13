 <nav class="w-full border-b border-gray-200 px-6 py-3 flex items-center justify-between">
    <!-- Left Section -->
    <div class="flex items-center space-x-6">
      <div class="text-2xl font-bold text-indigo-900 flex items-center">
     
        WellConnectPro
         
      </div>

    <a href="appointment/finddoc.jsp" class="text-gray-800 font-medium hover:text-blue-500">Find Doctors</a>
      <a href="ViewSpecialitie.jsp" class="text-gray-800 font-medium hover:text-blue-500"> Video Consult  </a>  
      <a href="appointment/Surgeries.jsp" class="text-gray-800 font-medium hover:text-blue-500">Surgeries</a>
    </div>

    <!-- Right Section -->
    <div class="flex items-center space-x-6">
      <div class="flex items-center text-gray-800 font-medium cursor-pointer  ">
        <span class="text-xs bg-indigo-800 text-white px-1.5 py-0.5 rounded mr-1">NEW</span>
        For Corporates <i class='bx bxs-chevron-down'></i>
        
      </div>

      <div class="text-gray-800 font-medium cursor-pointer">
        For Providers <i class='bx bxs-chevron-down'></i>
      </div>

      <div class="text-gray-800 font-medium cursor-pointer">
        Security & help <i class='bx bxs-chevron-down'></i>
      </div>
 
     <button class="border border-gray-300 px-3 py-1.5 rounded bg-red-300 text-m hover:bg-red-600 font-bold" id="miniBtn">
            <%=session.getAttribute("name") %> 
          
 
      
         
            
            
            
            
        <!-- Navigation Links -->
         <div  id="dropdownNav"
  class="origin-top-right absolute hidden right-0 mt-2 w-72 rounded-md shadow-lg bg-gray-300 ring-1 ring-black ring-opacity-5 z-10 "
  role="menu"
        aria-orientation="vertical"
        aria-labelledby="menu-button">
             
             <div class="py-3 px-4 border-b border-gray-200 ">
          <p class="text-sm font-medium text-gray-900"><%=session.getAttribute("name") %> </p>
         </div>
             <div class="py-1">
           <a href="appointments.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Appointments</a>
          <a href="tests.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Tests</a>
          <a href="orders.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Medicine Orders</a>
          <a href="records.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Medical Records</a>
          <a href="consultations.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Online Consultations</a>
          <a href="feedback.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">My Feedback</a>
          <a href="profile.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">View / Update Profile</a>
          <a href="settings.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">Settings</a>
          <a href="Logout" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100" role="menuitem">Logout</a>
         
        </div>
        <!-- Provider Switch Link -->
        <div class="py-1 border-t border-gray-200">
          <a href="providerSwitch.jsp" class="block px-4 py-2 text-sm text-blue-600 hover:bg-blue-50">
            <span class="block">Switch to provider products</span>
            <span class="block text-xs text-gray-500">
              Manage your clinic, answer consult questions, write health articles and more.
            </span>
          </a>
        </div>
      </div>
      </div>
      </button>
    </div>
  </nav>
         
 <script>
  document.addEventListener("DOMContentLoaded", function () {
    const miniBtn = document.getElementById("miniBtn");
    const dropdownNav = document.getElementById("dropdownNav");

    miniBtn.addEventListener("click", () => {
      // Toggle the `hidden` class to show/hide the dropdown
      dropdownNav.classList.toggle("hidden");
    });

    // Optional: Close the dropdown when clicking anywhere else
    document.addEventListener("click", (event) => {
      if (!miniBtn.contains(event.target) && !dropdownNav.contains(event.target)) {
        dropdownNav.classList.add("hidden");
      }
    });
  });
</script>