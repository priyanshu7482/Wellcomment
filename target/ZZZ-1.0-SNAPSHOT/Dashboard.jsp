

<%
  if (session.getAttribute("name")==null){
	  response.sendRedirect("index.jsp");
  }
  %> 


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Dashboard</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body class="bg-gray-50 p-8">
    
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


	 
      
    <br>
  <!-- Top Cards -->
  <div class="flex justify-center gap-6 mb-10 flex-wrap">
    <div class="bg-white shadow-md rounded-xl p-4 w-60 text-center hover:bg-blue-200">
        <a href="ViewSpecialitie.jsp">
      <img src="https://media.istockphoto.com/id/1425469911/photo/telehealth-doctor-woman-connect-digital-tablet-and-virtual-healthcare-analysis-medical.jpg?s=1024x1024&w=is&k=20&c=AXdaqYy6Zh5RyzFcYjWMD9IgzbvJH1kyznO5X7McPvI=" class="w-full h-40 object-cover rounded-md mb-3" alt="Video Consult">
      <h3 class="font-bold text-lg">Instant Video Consultation</h3>
      <p class="text-sm text-gray-500">Connect within 60 secs</p>
        </a>
    </div>
    <div class="bg-white shadow-md rounded-xl p-4 w-60 text-center hover:bg-blue-200">
        <a href="appointment/finddoc.jsp">
      <img src="https://media.istockphoto.com/id/495870770/vector/doctor.jpg?s=1024x1024&w=is&k=20&c=CAJ0xcpF6zbzL_gVoP98t5tRsOF5pvEyHMMbhO_jr_g=" class="w-full h-40 object-cover rounded-md mb-3" alt="Find Doctor">
      <h3 class="font-bold text-lg">Find Doctors Near You</h3>
      <p class="text-sm text-gray-500">Confirmed appointments</p>
        </a>
    </div>
    <div class="bg-white shadow-md rounded-xl p-4 w-60 text-center hover:bg-blue-200">
         <a href="appointment/Surgeries.jsp">
      <img src="https://media.istockphoto.com/id/593306012/photo/thinking-about-the-proper-decision.jpg?s=1024x1024&w=is&k=20&c=4aygTfX2yr8p7dtUFadhSZfU5El23fHMxjzYvlmwRRQ=" class="w-full h-40 object-cover rounded-md mb-3" alt="Surgeries">
      <h3 class="font-bold text-lg">Surgeries</h3>
      <p class="text-sm text-gray-500">Safe and trusted centers</p>
         </a>
    </div>
  </div>

  

   
 

 
<div class="bg-white text-gray-800">
  <!-- Top Specialties Section -->
  <section class="text-center py-10">
    <h2 class="text-2xl font-bold">Consult top doctors online for any health concern</h2>
    <p class="text-sm text-gray-600 mt-1 mb-6">Private online consultations with verified doctors in all specialists</p>
    <div class="flex flex-wrap justify-center gap-6 px-4">
      <!-- Card Item -->
      <div class="w-32 text-center">
        <img src="https://media.istockphoto.com/id/1849093384/vector/female-reproductive-system-vector-illustration-uterus.jpg?s=1024x1024&w=is&k=20&c=1FT7Lt3LEZ9KyUHRBgfYnsn7SKhOCfow8FZ-Mxaf7IU=" class="mx-auto h-16 w-16 rounded-full border-2 border-white-500" alt="Period">
        <p class="mt-2 text-sm font-medium">Period doubts or Pregnancy</p>
        <a href="consultdoc/Gynaecology.jsp" class="text-blue-500 text-xs">CONSULT NOW</a>
      </div>
      
      <div class="w-32 text-center">
        <img src="https://media.istockphoto.com/id/1288087162/photo/papulopustular-rosacea-close-up-of-the-patients-cheek.webp?s=1024x1024&w=is&k=20&c=ieSyBwsZUEbWhZdkwZwgH5NFU14G_rURKdwgxrzR7jA=" class="mx-auto h-16 w-16 rounded-full border-2 border-white-500" alt="Skin">
        <p class="mt-2 text-sm font-medium">Acne, pimple or skin issues</p>
        <a href="consultdoc/Dermatology.jsp" class="text-blue-500 text-xs">CONSULT NOW</a>
      </div>
      <div class="w-32 text-center">
        <img src="https://www.practo.com/consult/static/images/top-speciality-sexology.svg" class="mx-auto h-16 w-16 rounded-full border-2 border-white-500" />  
                <p class="mt-2 text-sm font-medium">Performance issues in bed</p>
        <a href="consultdoc/Sexology.jsp" class="text-blue-500 text-xs">CONSULT NOW</a>
      </div>
      <div class="w-32 text-center">
        <img src="https://www.practostatic.com/consult/consult-home/symptoms_icon/coughing.png" class="mx-auto h-16" alt="Cold">
        <p class="mt-2 text-sm font-medium">Cold, cough or fever</p>
        <a href="consultdoc/GeneralPhysician.jsp" class="text-blue-500 text-xs">CONSULT NOW</a>
      </div>
      <div class="w-32 text-center">
        <img src="https://www.practo.com/consult/static/images/top-speciality-pediatric.svg" class="mx-auto h-16" alt="Child">
        <p class="mt-2 text-sm font-medium">Child not feeling well</p>
        <a href="consultdoc/Pediatrics.jsp" class="text-blue-500 text-xs">CONSULT NOW</a>
      </div>
      <div class="w-32 text-center">
        <img src="https://www.practostatic.com/acred/search-assets/2/12-mental-wellness.png" class="mx-auto h-16" alt="Depression">
        <p class="mt-2 text-sm font-medium">Depression or anxiety</p>
        <a href="consultdoc/Psychiatry.jsp" class="text-blue-500 text-xs">CONSULT NOW</a>
      </div>
    </div>
    <button class="mt-6 border border-blue-500 text-blue-500 px-4 py-1 rounded hover:bg-blue-50"> <a href=" ViewSpecialitie.jsp">View All Specialities</a></button>
  </section>
  </div>
  
  
  <!-- In-Clinic Consultation Section -->
  <section class="px-6 py-10 ">
    <h2 class="text-xl font-bold mb-1">Book an appointment for an in-clinic consultation</h2>
    <p class="text-sm text-gray-600 mb-6">Find experienced doctors across all specialties</p>
    <div class="flex flex-wrap gap-6 justify-start">
      <div class="w-60">
<!-- Video Advertisement Section -->
 
    <video class="w-full h-auto" controls autoplay muted>
      <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/SNv7Pyhimz0q0vg/videoblocks-oral-hygiene-and-dental-care-doctor-dentist-working-with-patient-in-dental-clinic-healthcare-concept_b5qfftbz___0045552a68bc7c32edc5f37b4e36809b__P360.mp4">
      Your browser does not support the video tag.
    </video>
         <p class="font-semibold">Dentist</p>
        <p class="text-sm text-gray-600">Teething troubles? Schedule a dental checkup</p>
      </div>

      <div class="w-60">
        <video class="w-full h-auto" controls autoplay muted>
            <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/S9E7vQXo9l59qs7ny/videoblocks-138z_5644_prg_304k115_56_rs7eb7qqa__95d4be992d6989964983525a9777ec75__P360.mp4">
            Your browser does not support the video tag.
          </video>
                  <p class="font-semibold">Gynecologist/Obstetrician</p>
        <p class="text-sm text-gray-600">Explore for women's health, pregnancy and infertility treatments</p>
      </div>

      <div class="w-60">
<video class="w-full h-auto" controls autoplay muted>
      <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/raGoQNx6tkyfri1z1/videoblocks-638fef7f0a089a658b27872c_s7p_1yn_s__cab9bfd5276ffd0e4b34f0654d9b0ff0__P360.mp4">
      Your browser does not support the video tag.
    </video>
            <p class="font-semibold">Dietitian/Nutrition</p>
        <p class="text-sm text-gray-600">Get guidance on eating right, weight management and sports nutrition</p>
      </div>

      <div class="w-60">
<video class="w-full h-auto" controls autoplay muted>
      <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/MPaEbz-/videoblocks-v1-0021_20220506-pm-akishin-physiotherapist-office-2-studio00000000_bsl5cfwfds__aa350da756732fce38cf0fde25d33c74__P360.mp4">
      Your browser does not support the video tag.
    </video>
            <p class="font-semibold">Physiotherapist</p>
        <p class="text-sm text-gray-600">Pulled a muscle? Get it treated by a trained physiotherapist</p>
      </div>


      <div class="w-60">
        <video class="w-full h-auto" controls autoplay muted>
              <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/SuFLR1_Nwkex4zo1y/674df496eb475b39c7c298cf-uxadfn4vqt__cc1187e64ea68785a007b936c0eed2f2__P360.mp4">
              Your browser does not support the video tag.
            </video>
                    <p class="font-semibold">General Surgeon</p>
                <p class="text-sm text-gray-600">Need to get operated? find the right Surgeon </p>
              </div>
              <div class="w-60">
                <video class="w-full h-auto" controls autoplay muted>
                      <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/A039Hsw/videoblocks-closeup-orthopedic-doctor-showing-a-knee-joint-model_bmrpxitws__673f106549a21225baba426adc866a52__P360.mp4">
                      Your browser does not support the video tag.
                    </video>
                            <p class="font-semibold">Orthopedist</p>
                        <p class="text-sm text-gray-600">For bone and joints issues, spinal injuries and more</p>
                      </div>


                      <div class="w-60">
                        <video class="w-full h-auto" controls autoplay muted>
                              <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/NrM0QFs3gilniuv44/videoblocks-mri-scan-of-a-human-brain-in-motion-scanning-of-brain-magnetic-resonance-image-diagnostic-medical-tool_hss8usofo__99653a64ded0a267edaae5c772f44c83__P360.mp4">
                              Your browser does not support the video tag.
                          </video>
                           <p class="font-semibold">Neurologist</p>
                            <p class="text-sm text-gray-600">MRI scan of a human brain in motion scanning of brain </p>
                         </div>  
                         
                         <div class="w-60">
                            <video class="w-full h-auto" controls autoplay muted>
                                  <source src="https://dm0qx8t0i9gc9.cloudfront.net/watermarks/video/SLdNPEP75l1jey3wb/videoblocks-326z_2_01322026_1_sm1fhmq1p__2031b2ae6475ed9b18cddcc0b3357822__P360.mp4">
                                  Your browser does not support the video tag.
                                </video>
                                        <p class="font-semibold">Gastroenterologist</p>
                                    <p class="text-sm text-gray-600"> Explore for issues related to digestive system, liver and pancres</p>
                                  </div>           

    </div>
   
    
    
    
     
    <div class="max-w-7xl mx-auto px-4 py-8">

      <!-- Our Doctors Section -->
      <section>
        <h2 class="text-3xl font-bold text-center mb-6">Our Doctors</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
          <!-- Doctor Card 1 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/priyanshu.jpg" alt="Dr. Priyanshu kr." class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Priyanshu kr.</h3>
              <p class="text-gray-500">Dermatologist</p>
              <p class="text-sm text-gray-400">5 years experience</p>
              <p class="text-sm text-gray-400">780 consults done</p>
            </div>
          </div>
          <!-- Doctor Card 2 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/ayush.jpg" alt="Dr. ayushi" class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Ayush Jaishwal</h3>
              <p class="text-gray-500">Sexologist</p>
              <p class="text-sm text-gray-400">6 years experience</p>
              <p class="text-sm text-gray-400">104 consults done</p>
            </div>
          </div>
          <!-- Doctor Card 3 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/bittu.jpg" alt="Dr. Pushpa Gour" class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Pushpa Gour</h3>
              <p class="text-gray-500">Gynecologist</p>
              <p class="text-sm text-gray-400">9 years experience</p>
              <p class="text-sm text-gray-400">440 consults done</p>
            </div>
          </div>
          <!-- Doctor Card 4 -->
          <div class="bg-white shadow rounded-lg p-6 flex items-center">
            <div class="w-16 h-16 rounded-full bg-gray-300 flex-shrink-0 mr-4">
              <img src="img/gautam.jpg" alt="Dr. Prateeksha B S" class="w-full h-full rounded-full" />
            </div>
            <div>
              <h3 class="text-xl font-semibold">Dr. Prateek B S</h3>
              <p class="text-gray-500">Obstetrician, Gynecologist</p>
              <p class="text-sm text-gray-400">6 years experience</p>
              <p class="text-sm text-gray-400">563 consults done</p>
            </div>
          </div>
        </div>
      </section>

      <!-- How It Works Section -->
      <section class="mt-12">
        <h2 class="text-3xl font-bold text-center mb-6">How It Works</h2>
        <div class="flex flex-col md:flex-row justify-center items-center gap-8">
          <!-- Step 1 -->
          <div class="bg-white shadow rounded-lg p-6 text-center">
            <h3 class="text-xl font-semibold mb-2">Step 1</h3>
            <p class="text-gray-600">Select a speciality or symptom</p>
          </div>
          <!-- Step 2 -->
          <div class="bg-white shadow rounded-lg p-6 text-center">
            <h3 class="text-xl font-semibold mb-2">Step 2</h3>
            <p class="text-gray-600">Audio/Video call with a verified doctor</p>
          </div>
          <!-- Step 3 -->
          <div class="bg-white shadow rounded-lg p-6 text-center">
            <h3 class="text-xl font-semibold mb-2">Step 3</h3>
            <p class="text-gray-600">Get a digital prescription &amp; free follow-up</p>
          </div>
        </div>
      </section>

      <!-- Statistics Section -->
      <section class="mt-12">
        <div class="bg-blue-600 text-white rounded-lg p-6">
          <div class="flex flex-col sm:flex-row justify-around items-center">
            <div class="mb-4 sm:mb-0 text-center">
              <p class="text-3xl font-bold">2,000+</p>
              <p class="text-lg">Happy Users</p>
            </div>
            <div class="mb-4 sm:mb-0 text-center">
              <p class="text-3xl font-bold">200+</p>
              <p class="text-lg">Verified Doctors</p>
            </div>
            <div class="mb-4 sm:mb-0 text-center">
              <p class="text-3xl font-bold">25+</p>
              <p class="text-lg">Specialities</p>
            </div>
            <div class="text-center">
              <p class="text-3xl font-bold">4.5 / 5</p>
              <p class="text-lg">App Rating</p>
            </div>
          </div>
        </div>
      </section>
    </div>
   
    
    
     
  <!-- slider-->
  <div class="mx-auto w-full max-w-md p-4">
    <h2 class="text-center text-xl font-bold mb-4">What our users have to say</h2>
    <div class="relative overflow-hidden rounded-lg border border-gray-300 p-4">
      <p class="text-gray-700 italic">
        "Very easy to book, maintain history. Hassle free from older versions of booking appointment via telephone.. Thanks WellConnect Pro for making it simple."
      </p>
      <p class="text-right text-gray-500 mt-2">- Priyanshu</p>
    </div>
    <div class="flex justify-center mt-4 space-x-2">
      <button class="w-3 h-3 rounded-full bg-gray-400"></button>
      <button class="w-3 h-3 rounded-full bg-gray-400"></button>
      <button class="w-3 h-3 rounded-full bg-gray-400"></button>
    </div>
  </div>
   
    <!-- Footer Section -->
  <footer class="bg-blue-800 text-white py-8">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-6">
      <!-- WellConnect -->
      <div>
        <h6 class="text-lg font-semibold">WellConnect</h6>
        <ul class="mt-2 space-y-2">
          <li><a href="AsRequirenment/About.jsp" class="hover:underline">About</a></li>
          <li><a href="#" class="hover:underline">Blog</a></li>
          <li><a href="#" class="hover:underline">Careers</a></li>
          <li><a href="#" class="hover:underline">Press</a></li>
          <li><a href="#" class="hover:underline">Contact Us</a></li>
        </ul>
      </div>
  
      <!-- For patients -->
      <div>
        <h6 class="text-lg font-semibold">For Patients</h6>
        <ul class="mt-2 space-y-2">
          <li><a href="#" class="hover:underline">Search for doctors</a></li>
          <li><a href="#" class="hover:underline">Search for clinics</a></li>
          <li><a href="#" class="hover:underline">Search for hospitals</a></li>
          <li><a href="#" class="hover:underline">Practo Plus</a></li>
          <!-- Add more links as needed -->
        </ul>
      </div>
  
      <!-- Social -->
      <div>
        <h6 class="text-lg font-semibold">Social</h6>
        <ul class="mt-2 space-y-2">
          <li><a href="#" class="hover:underline">Facebook</a></li>
          <li><a href="#" class="hover:underline">Twitter</a></li>
          <li><a href="#" class="hover:underline">LinkedIn</a></li>
          <li><a href="#" class="hover:underline">YouTube</a></li>
        </ul>
      </div>
  
      <!-- More -->
      <div>
        <h6 class="text-lg font-semibold">More</h6>
        <ul class="mt-2 space-y-2">
          <li><a href="#" class="hover:underline">Help</a></li>
          <li><a href="#" class="hover:underline">Privacy Policy</a></li>
          <li><a href="#" class="hover:underline">Terms & Conditions</a></li>
          <!-- Add more links as needed -->
        </ul>
      </div>
    </div>
  
    <div class="border-t border-blue-700 mt-8 pt-4 text-center">
      <p>&copy; 2025 WellConnect. All rights reserved.</p>
    </div>
  </footer>
    
    
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
</body>
</html>