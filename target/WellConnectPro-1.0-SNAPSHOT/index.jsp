<%-- 
    Document   : About
    Created on : Apr 23, 2025, 2:33:01 PM
    Author     : sumitkumarsoni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>index</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800">
    
    
    <%@include file= "/component/includeFile/realNav.jsp" %>
    
    
    
    
  <div class="container mx-auto p-6">
    <!-- Header Section -->
    <header class="text-center py-10">
      <h1 class="text-blue-700 text-4xl font-bold">Quality Healthcare Made Simple</h1>
    </header>

    <!-- Mission Section -->
    <section class="bg-white shadow-md rounded-lg p-6 mb-6">
      <h2 class="text-2xl font-semibold mb-4">Our Mission</h2>
      <p class="text-gray-700">
        WellConnect Pro is on a mission to make quality healthcare affordable and accessible for over a billion+ Indians. We believe in empowering our users with the most accurate, comprehensive, and curated information and care, enabling them to make better healthcare decisions.
      </p>
    </section>

     
    
      <!-- Health Habit Section with text over image -->
      <section class="relative h-96 bg-cover bg-center" style="background-image: url('https://img.freepik.com/free-photo/wide-angle-shot-single-tree-growing-clouded-sky-during-sunset-surrounded-by-grass_181624-22807.jpg');">
        <!-- Overlay for better text readability -->
        <div class="absolute inset-0 bg-black opacity-50"></div>
        <!-- Text content placed on top of the image -->
        <div class="relative z-10 flex flex-col items-center justify-center h-full px-4">
          <h2 class="text-white text-3xl font-bold mb-4">Health is a habit</h2>
          <p class="text-white text-lg max-w-xl text-center">
            It is the journey that takes you to new destinations every day filled with endless possibilities of happiness, energy, and hope. WellConnect Pro is here to make this journey easy for every Indian, helping them live healthier, longer lives.
          </p>
        </div>
      </section>



     
    <!-- Fullscreen Promotional Section with Background and Overlay -->
    <section
      class="relative w-full min-h-screen bg-cover bg-center"
     >
      <!-- Dark Overlay for readability -->
      <div class="absolute inset-0 bg-black opacity-60"></div>
      <!-- Content Container -->
      <div class="relative z-10 container mx-auto px-4 py-8 flex flex-col justify-center h-full">
        <!-- Optional Title / Heading -->
        <div class="text-center mb-12">
          <h1 class="text-white text-4xl md:text-5xl font-bold">Quality Healthcare Redefined</h1>
          <p class="text-white mt-4 text-lg">Comprehensive services at your fingertips</p>
        </div>
        <!-- Main Content: Offerings and Metrics -->
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <!-- Offerings List -->
          <div class="text-white">
            <ul class="list-disc space-y-4 ml-6 text-lg">
              <li>
                Comprehensive medical directory with detailed, verified information about more than a lakh doctor partners across the country.
              </li>
              <li>
                Online appointment booking at over 9,000 leading hospitals and clinics with doctors who use WellConnect Pro Prime.
              </li>
              <li>
                Online consultation with trusted doctors across 20+ specialties.
              </li>
              <li>
                Subscription-based health plans offering unlimited online consultations 24*7*365 (Fair usage policy applicable).
              </li>
              <li>
                Ray, WellConnect Pro's award-winning practice management software used by 10,000+ clinics.
              </li>
              <li>
                Insta, a full-stack HIMS solution trusted by 500+ clients across 1,200+ facilities.
              </li>
              <li>
                Diagnostic tests via WellConnect Pro Associate Labs with at-home sample collection.
              </li>
              <li>
                Medicine delivery by a network of verified pharmacies across the country.
              </li>
            </ul>
          </div>
          <!-- Reach Metrics -->
          <div class="flex items-center justify-center">
            <div class="flex flex-col space-y-8">
              <div class="flex justify-around gap-8">
                <div class="text-center">
                  <span class="text-4xl font-bold">20+</span>
                  <p class="mt-2 text-lg">Countries</p>
                </div>
                <div class="text-center">
                  <span class="text-4xl font-bold">30 Cr+</span>
                  <p class="mt-2 text-lg">Patients per Year</p>
                </div>
                <div class="text-center">
                  <span class="text-4xl font-bold">1 L+</span>
                  <p class="mt-2 text-lg">Doctor Partners</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- End of Main Content -->
      </div>
    </section>
   
     


   
    <section class="py-16">
      <div class="container mx-auto px-4">
        <h2 class="text-center text-3xl font-bold mb-12">
          Our approach to healthcare
        </h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <!-- Connect -->
          <div class="text-center">
            <div class="mx-auto mb-4 w-16 h-16 flex items-center justify-center rounded-full bg-gray-200">
              <!-- Replace with your Connect icon -->
              <img
                src="https://www.practo.com/providers/static/images/pages/company/about/connect.svg"
                alt="Connect Icon"
                class="w-8 h-8"
              />
            </div>
            <h3 class="text-xl font-semibold mb-2">Connect</h3>
            <p class="text-gray-600">
              We understand healthcare goes beyond signs, symptoms,
              diagnosis, and treatment. It’s about the deep connection between
              doctors and patients that leads to continuous care and sustained,
              better outcomes.
            </p>
          </div>
          <!-- Trust -->
          <div class="text-center">
            <div class="mx-auto mb-4 w-16 h-16 flex items-center justify-center rounded-full bg-gray-200">
              <!-- Replace with your Trust icon -->
              <img
                src="https://www.practo.com/providers/static/images/pages/company/about/trust.svg"
                alt="Trust Icon"
                class="w-8 h-8"
              />
            </div>
            <h3 class="text-xl font-semibold mb-2">Trust</h3>
            <p class="text-gray-600">
              WellConnect Pro works on trust. We are aware of the responsibility placed on
              us by 30 crore+ patients and over a lakh doctors. We always have and
              always will do everything we possibly can to uphold this trust.
            </p>
          </div>
          <!-- Transparency -->
          <div class="text-center">
            <div class="mx-auto mb-4 w-16 h-16 flex items-center justify-center rounded-full bg-gray-200">
              <!-- Replace with your Transparency icon -->
              <img
                src="https://www.practo.com/providers/static/images/pages/company/about/transparency.svg"
                alt="Transparency Icon"
                class="w-8 h-8"
              />
            </div>
            <h3 class="text-xl font-semibold mb-2">Transparency</h3>
            <p class="text-gray-600">
              We believe in full disclosure. We believe in communicating openly
              and honestly, and holding ourselves to the highest ethical standards.
            </p>
          </div>
        </div>
      </div>
    </section>






    
      <!-- Long horizontal line -->
      <div class="w-full border-t-2 border-gray-300 my-8"></div>
    

     
        <!-- Testimonial Section -->
        <section class="py-16">
          <div class="container mx-auto px-4">
            <div class="swiper-container">
              <div class="swiper-wrapper">
                <!-- Slide 1 -->
                <div class="swiper-slide">
                  <div class="text-center max-w-3xl mx-auto">
                    <h2 class="text-3xl font-bold mb-8">
                      What doctors say about us
                    </h2>
                    <p class="text-gray-600 text-base mb-4">
                      "We must remember that the healthcare industry's primary goal,
                      in any part of the world, is to provide quality healthcare to all
                      those who need it. Many times, it does not happen due to information
                      asymmetry, affordability issues and barriers to access. While all
                      those challenges may be difficult to address in a country like ours,
                      some parts of the problem can definitely be addressed by the
                      digitalization of healthcare. WellConnect Pro is spearheading India's healthcare
                      agenda in that sense by leveraging an integral part of today's routine -
                      the online booking which has helped healthcare reach the last mile through
                      technology. The benefits of digitalization are visible across all areas of
                      healthcare and Fortis itself has made strides in this direction even though
                      we are not a technology company. That's because our aim has always been to
                      provide quicker and better healthcare services to our patients and increased
                      use of technology to connect with our patients is helping us do that more
                      efficiently."
                    </p>
                    <!-- Doctor's info with circular image on the left -->
                    <div class="flex items-center justify-center mt-4">
                      <img
                        src="doctor-image.jpg"
                        alt="Dr Manish Mattoo"
                        class="w-10 h-10 rounded-full mr-4"
                      />
                      <div class="text-left">
                        <p class="text-gray-700 font-semibold text-sm">
                          Dr Manish Mattoo
                        </p>
                        <p class="text-gray-500 text-xs">
                          Vice President, Fortis Healthcare, Bengaluru
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Slide 2 -->
                 
              </div>
              <!-- Slider Navigation Arrows -->
               
            </div>
          </div>
        </section>
        <!-- Swiper JS -->
        
       




        <div class="max-w-7xl mx-auto px-4 py-12">
          <!-- Main Container -->
          <div class="bg-white rounded-lg shadow-lg overflow-hidden flex flex-col md:flex-row">
            <!-- Left Side: Content & Inputs -->
            <div class="w-full md:w-1/2 p-8 flex flex-col justify-center">
              <h1 class="text-4xl font-bold text-gray-800 mb-4">
                Download the WellConnect App
              </h1>
              <p class="text-xl text-blue-500 font-semibold mb-6">
                Get ₹200 HealthCash
              </p>
              <!-- Features List -->
              <ul class="mb-6 space-y-2">
                <li class="flex items-center">
                  <!-- Check Icon -->
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-green-500 mr-2"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 13l4 4L19 7"
                    />
                  </svg>
                  <span>Video consult with Doctors</span>
                </li>
                <li class="flex items-center">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-green-500 mr-2"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 13l4 4L19 7"
                    />
                  </svg>
                  <span>Live medicine order tracking</span>
                </li>
                <li class="flex items-center">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-green-500 mr-2"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 13l4 4L19 7"
                    />
                  </svg>
                  <span>Exclusive healthcare packages</span>
                </li>
                <li class="flex items-center">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-5 w-5 text-green-500 mr-2"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M5 13l4 4L19 7"
                    />
                  </svg>
                  <span>Ask free questions</span>
                </li>
              </ul>
              <!-- Phone Number Input for App Link -->
              <div class="mb-4">
                <p class="text-gray-600 mb-2">Get the link to download the app</p>
                <div class="flex">
                  <span
                    class="inline-flex items-center px-3 rounded-l-md border border-r-0 border-gray-300 bg-gray-50 text-gray-500 text-sm"
                  >
                    +91
                  </span>
                  <input
                    type="text"
                    placeholder="Enter phone number"
                    class="w-full border border-gray-300 rounded-r-md p-2 focus:outline-none focus:ring-2 focus:ring-blue-500"
                  />
                </div>
              </div>
              <!-- Send App Link Button -->
              <button
                class="w-full bg-blue-500 text-white py-2 rounded hover:bg-blue-600 transition duration-200"
              >
                Send app link
              </button>
              <!-- Download Buttons -->
              <div class="mt-6 flex space-x-4">
                <a
                  href="#"
                 >
                  <img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-v52tLnvL3FEjfxjPvZWbvUMYvVUtAm9R6A&s"
                    alt="Google Play"
                    class="mr-2"
                  />
                 </a>
                <a
                  href="#"
                 >
                  <img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSxjQccFPyMrb-F0IdgJknhjL2qto1gEejArA&s"
                    alt="App Store"
                    class="mr-2"
                  />
                 </a>
              </div>
            </div>
            <!-- Right Side: Phone Image -->
            <div class="w-full md:w-1/2">
              <img
                src="https://www.digitaltrends.com/wp-content/uploads/2024/04/iPhone-Find-Phone-Number-Dual-SIM.jpg?fit=720%2C720&p=1"
                alt="Practo App on Phone"
                class="w-full h-full object-cover"
              />
            </div>
          </div>
        </div>








    
   
  </div>
</body>
</html>