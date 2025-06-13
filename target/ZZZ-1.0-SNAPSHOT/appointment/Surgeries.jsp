<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Surgeries</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="p-5 font-sans">
    <!-- Navbar -->
    <nav class="w-full border-b border-gray-200 px-6 py-3 flex items-center justify-between bg-white shadow">
        <div class="flex items-center space-x-6">
            <div class="text-2xl font-bold text-indigo-900">WellConnectPro</div>
            <a href="../appointment/finddoc.jsp" class="text-gray-800 font-medium hover:text-blue-500">Find Doctors</a>
            <a href="../ViewSpecialitie.jsp" class="text-gray-800 font-medium hover:text-blue-500">Video Consult</a>
            <a href="../appointment/Surgeries.jsp" class="text-gray-800 font-medium hover:text-blue-500">Surgeries</a>
        </div>

        <button class="border border-gray-300 px-3 py-1.5 rounded bg-red-300 text-m hover:bg-red-600 font-bold">
            <a href="#">
                <%= session.getAttribute("name") != null ? session.getAttribute("name") : "Guest" %>
            </a>
        </button>
    </nav>

    <!-- Page Content -->
    <div class="max-w-7xl mx-auto grid grid-cols-1 md:grid-cols-3 gap-6 bg-white rounded-2xl shadow-lg p-6">
        <!-- Left Section -->
        <div class="md:col-span-2">
            <h2 class="text-xl font-semibold mb-4">We are experts in Surgical solutions for 50+ ailments.</h2>
            <h3 class="text-lg font-medium mb-4">Popular Surgeries</h3>
            <div class="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-5 gap-4">
                <%
                    String[][] surgeries = {
                        {"Piles", "https://images.ctfassets.net/a5lr4xmo2i3k/3Le0YfXevQpqYFtvRZ1fBr/6d86f7bbcca555ed4a89a9e3f339a99c/Non-surgical_Piles.webp?w=112&h=112"},
                        {"Hernia Treatment", "https://c8.alamy.com/comp/2XM3MA2/hernia-icon-black-line-art-vector-in-black-and-white-outline-set-collection-sign-2XM3MA2.jpg"},
                        {"Kidney Stone", "https://static.vecteezy.com/system/resources/previews/011/155/560/original/kidney-bean-internal-organ-anatomy-3d-icon-illustration-png.png"},
                        {"Cataract", "https://assets.dragoart.com/images/187555_502/how-to-draw-cute-eyes-step-4_5e4ce790aa43f1.77964632_117530_5_3.png"},
                        {"Circumcision", "https://png.pngtree.com/png-clipart/20230108/original/pngtree-muslim-circumcision-kids-png-image_8885432.png"},
                        {"Lasik", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY7B7N831dgn3BZkci73xKuUDDIoG39sxTCw&s"},
                        {"Varicose Veins", "https://www.shutterstock.com/image-vector/varicose-veins-blue-blood-vessel-260nw-2492673181.jpg"},
                        {"Gallstone", "https://thumbs.dreamstime.com/b/abdominal-pain-caused-deposits-digestive-fluids-gallbladder-gallstones-health-problem-concept-illustration-323073098.jpg"},
                        {"Anal Fistula", "https://hlsimsurgery.com.sg/wp-content/uploads/2021/05/DrSim-anal-illustration1.svg"},
                        {"Gynaecomastia", "https://intimateclinic.in/wp-content/uploads/2023/08/Gynecomastia-Surgery.jpeg"}
                    };
                    for (String[] surgery : surgeries) {
                %>
                <div class="flex flex-col items-center text-center">
                    <img src="<%= surgery[1] %>" alt="<%= surgery[0] %>" class="w-12 h-12 mb-2">
                    <span class="text-sm"><%= surgery[0] %></span>
                </div>
                <% } %>
            </div>
        </div>

        <!-- Right Section: Form -->
        <div class="bg-gray-50 rounded-xl p-6 shadow-md">
            <h3 class="text-lg font-semibold mb-4">Book your consultation today</h3>
            <form method="post" action="${pageContext.request.contextPath}/SendEmailServlet" class="space-y-4" id="consultForm">
                <input type="hidden" name="confirmed" value="true">

                <select name="location" class="w-full p-2 rounded border border-gray-300" required>
                    <option value="">Select Location</option>
                    <option>Mumbai</option>
                    <option>Delhi</option>
                    <option>Bihar</option>
                    <option>UP</option>
                    <option>Bangalore</option>
                </select>

                <select name="ailment" class="w-full p-2 rounded border border-gray-300" required>
                    <option value="">Select Ailment*</option>
                    <% for (String[] surgery : surgeries) { %>
                        <option><%= surgery[0] %></option>
                    <% } %>
                </select>

                <input type="text" name="name" placeholder="Full Name" class="w-full p-2 rounded border border-gray-300" required>
                <input type="tel" name="phone" placeholder="Phone Number" class="w-full p-2 rounded border border-gray-300" required>

                <button type="submit" onclick="return handleSubmit(event)" class="w-full bg-indigo-800 text-white py-2 rounded hover:bg-indigo-900 transition">
                    Book Appointment
                </button>
            </form>

            <p class="text-sm text-gray-500 text-center mt-4">
                By submitting the form, you agree to WellConnect
                <a href="../img/Termofuse1.pdf" class="text-blue-600">T&C</a>
            </p>

            <div class="mt-6 border-t pt-4 text-center">
                <span class="text-gray-600">OR</span>
                <div class="mt-2 flex justify-center items-center gap-2">
                    <span class="text-gray-700">Reach out to us on</span>
                    <a href="tel:07482892121" class="text-blue-600 font-semibold">07482892121</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Modal -->
    <div id="successModal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 hidden">
        <div class="bg-white rounded-2xl w-[90%] max-w-2xl flex shadow-lg overflow-hidden">
            <div class="w-1/2 bg-indigo-100 hidden md:flex items-center justify-center p-6">
                <img src="https://i.pinimg.com/736x/77/e8/db/77e8db69d4e36cdd7903f8bb3b30887f.jpg" alt="Congratulations" class="h-48">
            </div>
            <div class="w-full md:w-1/2 p-6 relative">
                <button onclick="closeModal()" class="absolute top-3 right-4 text-2xl text-gray-600">&times;</button>
                <h2 class="text-2xl font-bold mb-2">Congratulations!</h2>
                <p class="text-sm text-gray-600 mb-4">Our expert team will reach out to you soon.</p>
                <ul class="space-y-2 text-sm text-gray-700">
                    <li>📞 Expect a call from our surgical team</li>
                    <li>💬 We will explain cost & procedures</li>
                    <li>🏠 We'll arrange the best consultation</li>
                </ul>
                <button onclick="submitConfirmedForm()" class="mt-6 w-full bg-indigo-800 text-white py-2 rounded hover:bg-indigo-900">
                    Okay
                </button>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script>
        function handleSubmit(event) {
            event.preventDefault();
            const form = document.getElementById('consultForm');
            if (form.checkValidity()) {
                document.getElementById('successModal').classList.remove('hidden');
            } else {
                form.reportValidity();
            }
            return false;
        }

        function submitConfirmedForm() {
            document.getElementById('consultForm').submit();
        }

        function closeModal() {
            document.getElementById('successModal').classList.add('hidden');
        }
    </script>
</body>
</html>
