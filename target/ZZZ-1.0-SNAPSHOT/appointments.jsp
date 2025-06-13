<%
    if (session.getAttribute("name") == null) {
         response.sendRedirect("index.jsp");
    }
    if (session.getAttribute("number") == null) {
         
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointment</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">

    <%@include file="/component/includeFile/nav.jsp" %>

    <div class="flex h-screen">
        <!-- Sidebar -->
        <aside class="w-64 bg-white border-r border-gray-200 flex flex-col">
            <div class="px-6 py-4 border-b bg-teal-300">
                <h1 class="text-2xl font-bold text-indigo-900">Your Drive</h1>
                <p class="text-gray-600 mt-1"><%= session.getAttribute("name") %></p>
                <p class="text-gray-600 text-sm"><%= session.getAttribute("number") %></p>
            </div>
            <nav class="flex-1 overflow-y-auto mt-4 bg-fuchsia-300">
                <ul class="space-y-2 px-4">
                    <li><a href="#" id="DashboardLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Dashboard</a></li>
                    <li><a href="#" id="medicalRecordsLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Medical Records</a></li>
                    <li><a href="#" id="appointmentsLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Appointments</a></li>
                    <li><a href="#" id="labTestsLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Lab Tests</a></li>
                    <li><a href="#" id="medicineOrdersLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Medicine Orders</a></li>
                    <li><a href="#" id="onlineConsultationsLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Online Consultations</a></li>
                    <li><a href="#" id="articlesLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Articles</a></li>
                    <li><a href="#" id="feedbackLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Feedback</a></li>
                    <li><a href="#" id="paymentsLink" class="flex items-center text-gray-800 hover:bg-gray-100 px-4 py-2 rounded">Payments</a></li>
                </ul>
            </nav>
        </aside>

        <!-- Main Content -->
        <main id="mainContent" class="flex-1 bg-gray-50 p-6 overflow-y-auto">
            <div id="DashboardTab" class="tabContent">
                <h2 class="text-2xl font-bold text-gray-800">Dashboard</h2>
                <p class="mt-2 text-gray-600">Select an option from the sidebar to view details.</p>
            </div>

            <div id="medicalRecordsTab" class="tabContent hidden">
                <div class="max-w-1xl mx-auto bg-white p-6 rounded shadow">
                    <div class="flex justify-between items-center mb-4">
                        <h2 class="text-xl font-bold text-gray-800">Medical Records</h2>
                        <button id="uploadBtn" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">Upload Records</button>
                    </div>
                </div>
            </div>

            <div id="appointmentsTab" class="tabContent hidden">
                <h2 class="text-2xl font-bold text-gray-800">Appointments</h2>
                <p class="mt-2 text-gray-600">Content for Appointments goes here.</p>
            </div>

            <div id="labTestsTab" class="tabContent hidden">
                <h2 class="text-2xl font-bold text-gray-800">Lab Tests</h2>
                <p class="mt-2 text-gray-600">Content for Lab Tests goes here.</p>
            </div>

            <div id="medicineOrdersTab" class="tabContent hidden">
                <h2 class="text-2xl font-bold text-gray-800">Medicine Orders</h2>
                <p class="mt-2 text-gray-600">Content for Medicine Orders goes here.</p>
            </div>

            <div id="onlineConsultationsTab" class="tabContent hidden">
                <h2 class="text-2xl font-bold text-gray-800">Online Consultations</h2>
                <p class="mt-2 text-gray-600">Content for Online Consultations goes here.</p>
            </div>

            <div id="articlesTab" class="tabContent hidden">
                <h2 class="text-2xl font-bold text-gray-800">Articles</h2>
                <p class="mt-2 text-gray-600">Content for Articles goes here.</p>
            </div>

            <div id="feedbackTab" class="tabContent hidden">
                <h2 class="text-2xl font-bold text-gray-800">Feedback</h2>
                <p class="mt-2 text-gray-600">Content for Feedback goes here.</p>
            </div>

            <div id="paymentsTab" class="tabContent hidden">
                <h2 class="text-2xl font-bold text-gray-800">Payments</h2>
                <p class="mt-2 text-gray-600">Content for Payments goes here.</p>
            </div>
        </main>
    </div>

    <!-- Modal -->
    <div id="uploadModal" class="fixed inset-0 flex items-center justify-center bg-gray-900 bg-opacity-50 hidden">
        <div class="bg-white w-full max-w-md mx-auto rounded shadow-lg p-6">
            <h2 class="text-2xl font-bold text-gray-800 mb-4">Medical Report</h2>
            <form action="RecordUploadServlet" method="post" enctype="multipart/form-data">
                <div class="mb-4">
                    <label class="block text-gray-700 font-bold mb-2" for="recordTitle">Title</label>
                    <input type="text" name="recordTitle" id="recordTitle" required class="w-full border border-gray-300 rounded px-3 py-2" />
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 font-bold mb-2" for="recordName">Name</label>
                    <input type="text" name="recordName" id="recordName" required class="w-full border border-gray-300 rounded px-3 py-2" />
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 font-bold mb-2" for="recordDate">Date</label>
                    <input type="date" name="recordDate" id="recordDate" required class="w-full border border-gray-300 rounded px-3 py-2" />
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 font-bold mb-2" for="recordType">Record Type</label>
                    <select name="recordType" id="recordType" class="w-full border border-gray-300 rounded px-3 py-2">
                        <option value="report">Report</option>
                        <option value="prescription">Prescription</option>
                        <option value="invoice">Invoice</option>
                    </select>
                </div>
                <div class="mb-4">
                    <label class="block text-gray-700 font-bold mb-2" for="recordFile">Choose File</label>
                    <input type="file" name="recordFile" id="recordFile" required class="w-full" />
                </div>
                <div class="flex justify-end space-x-4 mt-6">
                    <button type="button" id="cancelUpload" class="bg-gray-500 text-white px-4 py-2 rounded">Cancel</button>
                    <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Upload</button>
                </div>
            </form>
        </div>
    </div>
    
    
    
     
    
    

    <!-- JS -->
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Tab functionality
            function showTab(tabId) {
                document.querySelectorAll('.tabContent').forEach(tab => tab.classList.add('hidden'));
                document.getElementById(tabId).classList.remove('hidden');
            }

            const tabLinks = {
                DashboardLink: "DashboardTab",
                medicalRecordsLink: "medicalRecordsTab",
                appointmentsLink: "appointmentsTab",
                labTestsLink: "labTestsTab",
                medicineOrdersLink: "medicineOrdersTab",
                onlineConsultationsLink: "onlineConsultationsTab",
                articlesLink: "articlesTab",
                feedbackLink: "feedbackTab",
                paymentsLink: "paymentsTab"
            };

            for (let linkId in tabLinks) {
                document.getElementById(linkId).addEventListener("click", function (e) {
                    e.preventDefault();
                    showTab(tabLinks[linkId]);
                });
            }

            // Modal logic
            const uploadBtn = document.getElementById("uploadBtn");
            const cancelUpload = document.getElementById("cancelUpload");
            const uploadModal = document.getElementById("uploadModal");

            if (uploadBtn) {
                uploadBtn.addEventListener("click", () => uploadModal.classList.remove("hidden"));
            }

            if (cancelUpload) {
                cancelUpload.addEventListener("click", () => uploadModal.classList.add("hidden"));
            }

            if (uploadModal) {
                uploadModal.addEventListener("click", function (e) {
                    if (e.target === this) {
                        this.classList.add("hidden");
                    }
                });
            }
        });
    </script>

</body>
</html>
