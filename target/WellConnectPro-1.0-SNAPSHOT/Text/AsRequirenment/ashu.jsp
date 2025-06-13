<%@ page import="javax.servlet.http.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
 
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Admin Dashboard</title>
        
        <!-- style css -->
        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                background-color: #f4f4f9;
                transition: background-color 0.3s ease;
            }
            .top-nav {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 7px 20px;
                background-color: #4CAF50;
                color: white;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
                transition: background-color 0.3s ease;
            }
            .top-nav .logo {
                display: flex;
                align-items: center;
                font-size: 24px;
                font-weight: bold;
            }
            .top-nav .logo .plus-icon {
                font-size: 24px;
                margin-right: 10px;
            }
            .top-nav .search-bar {
                flex-grow: 1;
                margin-left: 20px;
                margin-right: 20px;
                position: relative;
            }
            .top-nav .search-bar input {
                width: 100%;
                max-width: 250px;
                padding: 8px 12px;
                border-radius: 5px;
                border: 1px solid #ccc;
                transition: width 0.3s ease, box-shadow 0.3s ease;
            }
            .top-nav .search-bar input:focus {
                width: 100%;
                outline: none;
                border-color: #4CAF50;
                box-shadow: 0 0 8px rgba(76, 175, 80, 0.5);
            }
            .top-nav .icons {
                display: flex;
                align-items: center;
            }
            .top-nav .icons span {
                margin-left: 15px;
                cursor: pointer;
                font-size: 20px;
            }

            .top-nav:before{
                content: ""
            }
            .side-nav {
                width: 250px;
                height: 100vh;
                background-color: #333;
                color: white;
                position: fixed;
                top: 50px;
                left: 0;
                padding-top: 20px;
                overflow-y: auto;
                transition: all 0.3s ease;
                box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
            }
            .side-nav a {
                padding: 15px 20px;
                text-decoration: none;
                color: white;
                display: block;
                transition: background-color 0.3s ease, transform 0.3s ease, padding-left 0.3s ease;
            }
            .side-nav a:hover {
                background-color: #575757;
                transform: translateX(10px);
                padding-left: 30px;
            }
            .side-nav .submenu {
                display: none;
                background-color: #444;
            }
            .side-nav .submenu a {
                padding-left: 40px;
            }
            .side-nav .has-submenu:hover .submenu {
                display: block;
            }
            .side-nav .control-buttons {
                padding: 15px 20px;
                background-color: #444;
                margin-top: 20px;
            }
            .side-nav .control-buttons button {
                width: 100%;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin-bottom: 10px;
                transition: background-color 0.3s ease, transform 0.3s ease;
            }
            .side-nav .control-buttons button:hover {
                background-color: #45a049;
                transform: translateY(-5px);
            }
            .main-content {
                margin-left: 250px;
                padding: 20px;
                transition: all 0.3s ease;
            }
            .main-content h1 {
                font-size: 24px;
                margin-bottom: 20px;
            }
            .dashboard-cards {
                display: flex;
                flex-wrap: wrap;
                gap: 20px;
            }
            .dashboard-card {
                background-color: white;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
                flex: 1;
                min-width: 250px;
                text-align: center;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
            }
            .dashboard-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 15px 30px rgba(0, 0, 0, 0.2);
            }
            .footer {
                text-align: center;
                padding: 10px;
                background-color: #4CAF50;
                color: white;
                position: fixed;
                width: calc(100% - 250px);
                bottom: 0;
                left: 250px;
                transition: all 0.3s ease;
            }
            .hidden {
                display: none;
            }

            .hamburger {
                display: none;
                cursor: pointer;
                position: fixed;
                top: 10px;
                left: 10px;
                z-index: 1500;
            }

            .hamburger div {
                width: 25px;
                height: 3px;
                background-color: white;
                margin: 5px 0;
                transition: transform 0.3s ease;
            }

            /* Responsive */
            @media (max-width: 768px) {
                .top-nav .icons {
                    display: none;
                }
                .side-nav {
                    left: -250px;
                }
                .main-content {
                    margin-left: 0;
                    padding-top: 50px;
                }
                .footer {
                    width: calc(100% - 0px);
                    left: 0;
                }

                /* Show hamburger menu */
                .hamburger {
                    display: block;
                }
            }

            @media (max-width: 576px) {
                .top-nav .logo {
                    font-size: 20px;
                }
                .top-nav .search-bar input {
                    max-width: 150px;
                }
                .side-nav {
                    width: 70%;
                    left: -70%;
                }
                .main-content {
                    margin-left: 0;
                }
            }
            @media (max-width: 389px){
                .top-nav .logo {
                    font-size: 10px;
                }
                .top-nav .search-bar input {
                    max-width: 100px;
                }
                .side-nav {
                    width: 70%;
                    left: -70%;
                }
                .main-content h1{
                    margin-left: 0;
                    font-size: 22px;
                }
                .top-nav{
                    width: 100%;
                }
            }

            .side-nav {
                /* Your existing sidebar styles */
                transition: left 0.3s ease;
            }

            /* Show Sidebar */
            .show-sidebar {
                left: 0;
            }

            .logout-button {
                display: inline-block;
                padding: 8px 16px;
                background-color: #cd2323;
                color: white;
                text-decoration: none;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                margin:0 10px;
            }

            .logout-button:hover {
                background-color: #45a049;
            }
            .container {
                max-width: 600px;
                margin: 0 auto;
                padding: 20px;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
                padding-bottom: 50px;
            }

            .container h2 {
                text-align: center;
                margin-bottom: 20px;
            }

            .form-grid {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                gap: 20px;
            }

            .form-group {
                display: flex;
                flex-direction: column;
            }

            .form-group-full {
                grid-column: span 2;
            }

            .form-group label {
                margin-bottom: 5px;
                font-weight: bold;
            }

            .form-group input,
            .form-group select {
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }

            input[type="submit"] {
                background-color: #4CAF50;
                color: white;
                border: none;
                cursor: pointer;
                padding: 10px 20px;
                border-radius: 5px;
                width: 100%;
                transition: background-color 0.3s ease;
                margin-top: 20px;
            }

            input[type="submit"]:hover {
                background-color: #45a049;
            }

            @media (max-width: 768px) {
                .form-grid {
                    grid-template-columns: 1fr;
                }

                .form-group-full {
                    grid-column: 1;
                }
            }

            @media (max-width: 576px) {
                .container {
                    padding: 15px;
                    padding-bottom: 50px;
                }

                .container h2 {
                    font-size: 20px;
                }
            }

            @media (max-width: 389px) {
                .container h2 {
                    font-size: 18px;
                }

                .form-group label {
                    font-size: 14px;
                }

                .form-group input,
                .form-group select {
                    padding: 8px;
                }
            }

        </style>
        
        
        
        
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    </head>
    <body>
        <%@ page import="java.sql.*" %>
        <div class="top-nav">
            <div class="logo">
                <span class="plus-icon">+</span>
                <span>HMS</span>
            </div>
            <div class="search-bar">
                <input type="text" placeholder="Search...">
            </div>
            <div class="icons">
                <span><i class='bx bxs-bell-plus'></i></span>
                <span><i class='bx bxl-gitlab'></i></span>
            </div>
            <a href="logoutHandler.jsp" class="logout-button">Logout</a>
            <!-- Hamburger Menu -->
            <div class="hamburger" onclick="toggleSidebar()">
                <div></div>
                <div></div>
                <div></div>
            </div>
        </div>
        <div class="side-nav">
            <a href="#dashboard" onclick="showContent('dashboard')"><i class='bx bxs-dashboard'></i> Dashboard</a>
            <div class="has-submenu">
                <a href="#patients" onclick="toggleSubmenu('patients-submenu')"><img src="images/medical.png" alt="alt"/> Patients</a>
                <div id="patients-submenu" class="submenu">
                    <a href="patients.jsp" onclick="loadContent('patients.jsp')" onclick="toggleSubmenu()">View Patients</a>
                </div>
            </div>
            <div class="has-submenu">
                <a href="#appointments" onclick="toggleSubmenu('appointments-submenu')"><img src="images/appoint.png" alt="alt"/> Appointments</a>
                <div id="appointments-submenu" class="submenu">
                    <a href="appointments.jsp" onclick="loadContent('appointments.jsp') <onclick ="showContent('view-appointments')">View Appointments</a>

                </div>
            </div>
            <div class="has-submenu">
                <a href="#staff" onclick="toggleSubmenu('staff-submenu')"><img src="images/people.png" alt="alt"/>Doctors</a>
                <div id="staff-submenu" class="submenu">
                    <a href="ViewDoctor.jsp">View Doctor</a>
                    <a href="doctorform.html">Add Doctor</a>
                </div>
            </div>
            <div class="has-submenu">
                <a href="#billing" onclick="toggleSubmenu('billing-submenu')"><img src="images/bill.png" alt="alt"/> Billing</a>
                <div id="billing-submenu" class="submenu">
                    <a href="billing.jsp" onclick="loadContent('billing.jsp') <onclick ="showContent('view-billing')">View Billing</a>
                    <a href="#add-bill" onclick="showContent('add-bill')">Add Bill</a>
                </div>
            </div>
            <div class="has-submenu">
                <a href="#reports" onclick="toggleSubmenu('reports-submenu')"><i class='bx bxs-report'></i> Reports</a>
                <div id="reports-submenu" class="submenu">
                    <a href="reports.jsp" onclick="loadContent('billing.jsp') <onclick ="showContent('view-reports')">View Reports</a>
                    <a href="#generate-report" onclick="showContent('generate-report')">Generate Report</a>
                </div>
            </div>
            <div class="control-buttons">
                <button onclick="showContent('add-patient')">+ Add Patient</button>
                <button onclick="showContent('add-admin')">+ Add Admin</button>
                <button onclick="showContent('add-appointment')">+ Add Appointment</button>
            </div>
        </div>

        <div class="main-content">
            <div id="dashboard" class="content-section">
                <h1>Welcome to HMS Dashboard!</h1>
                <div class="dashboard-cards">
                    <%
                        // Database connection setup
                        String url = "jdbc:mysql://localhost:3306/ashu";
                        String username = "root";
                        String password = "root";

                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ashu", "root", "root");
                            Statement stmt = conn.createStatement();

                            // Query to get the total number of Doctors
                            String DoctorsQuery = "SELECT COUNT(*) AS totalDoctors FROM Doctors";
                            ResultSet rsDoctors = stmt.executeQuery(DoctorsQuery);
                            rsDoctors.next();
                            int totalDoctors = rsDoctors.getInt("totalDoctors");

                            // Query to get the total number of active admin
                            String adminQuery = "SELECT COUNT(*) AS totaladmin FROM admin";
                            ResultSet rsadmin = stmt.executeQuery(adminQuery);
                            rsadmin.next();
                            int totaladmin = rsadmin.getInt("totaladmin");

                            // Query to get the total number of patients
                            String patientsQuery = "SELECT COUNT(*) AS totalPatients FROM patients";
                            ResultSet rsPatients = stmt.executeQuery(patientsQuery);
                            rsPatients.next();
                            int totalPatients = rsPatients.getInt("totalPatients");

                            // Query to get the total number of appointments today
                            String appointmentsQuery = "SELECT COUNT(*) AS totalAppointments FROM appointments WHERE DATE(appointment_date) = CURDATE()";
                            ResultSet rsAppointments = stmt.executeQuery(appointmentsQuery);
                            rsAppointments.next();
                            int totalAppointments = rsAppointments.getInt("totalAppointments");

                            // Query to get the total billing for this month
                            String billingQuery = "SELECT SUM(amount) AS totalBilling FROM billing WHERE MONTH(billing_date) = MONTH(CURDATE()) AND YEAR(billing_date) = YEAR(CURDATE())";
                            ResultSet rsBilling = stmt.executeQuery(billingQuery);
                            rsBilling.next();
                            double totalBilling = rsBilling.getDouble("totalBilling");

                            // Query to get the number of new reports
                            String reportsQuery = "SELECT COUNT(*) AS newReports FROM reports WHERE DATE(report_date) = CURDATE()";
                            ResultSet rsReports = stmt.executeQuery(reportsQuery);
                            rsReports.next();
                            int newReports = rsReports.getInt("newReports");

                            // Close resources
                            rsPatients.close();
                            rsDoctors.close();
                            rsAppointments.close();
                            rsBilling.close();
                            rsReports.close();
                            stmt.close();
                            conn.close();

                            // Display data on the dashboard
                    %>
                    <div class="dashboard-card">
                        <h2>Total Doctors</h2>
                        <p><%=totalDoctors%></p>
                    </div>

                    <div class="dashboard-card">
                        <h2>Total Admin</h2>
                        <p><%= totaladmin%></p>
                    </div>
                    <div class="dashboard-card">
                        <h2>Total Patients</h2>
                        <p><%= totalPatients%></p>
                    </div>

                    <div class="dashboard-card">
                        <h2>Appointments Today</h2>
                        <p><%= totalAppointments%></p>
                    </div>
                    <div class="dashboard-card">
                        <h2>Billing This Month</h2>
                        <p>$<%= totalBilling%></p>
                    </div>
                    <div class="dashboard-card">
                        <h2>New Reports</h2>
                        <p><%= newReports%></p>
                    </div>
                    <%
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    %>
                </div>
            </div>
        </div>
                
                
        <div id="add-admin" class="content-section hidden">
            <div class="container">
                <h2>Add Admin</h2>
                <form action="AdminRegistrationHandler.jsp" method="post">
                    <div class="form-group">
                        <label for="name">Full Name:</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Password :</label>
                        <input type="password" id="password" name="password" placeholder="Password" required>
                    </div>

                    <div class="form-group">
                        <label for="phone">Phone Number:</label>
                        <input type="tel" id="phone" name="phone" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number">
                    </div>

                    <div class="form-group">
                        <label for="phone">Aadhar Number:</label>
                        <input type="tel" id="phone" name="Aadhar" required pattern="[0-9]{12}" title="Please enter a valid 12-digit Aadhar number">
                    </div>
                    <input type="submit" value="Add Admin">
                </form>
            </div>
        </div>
                
                
                
                
        <div id="add-patient" class="content-section hidden">
            <div class="container">
                <h2>Add Patient</h2>
                <form action="demo.jsp" method="post">
                    <div class="form-group">
                        <label for="name">Full Name:</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="age">Age:</label>
                        <input type="number" id="age" name="age" required min="1">
                    </div>
                    <div class="form-group">
                        <label for="gender">Gender:</label>
                        <select id="gender" name="gender" required>
                            <option value="">Select Gender</option>
                            <option value="Male">Male</option>
                            <option value="Female">Female</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone Number:</label>
                        <input type="tel" id="phone" name="phone" required pattern="[0-9]{10}" title="Please enter a valid 10-digit phone number">
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address:</label>
                        <input type="email" id="email" name="email" required>
                    </div>

                    <div class="form-group">
                        <label for="date_of_admission">Date of Admission:</label>
                        <input type="date" id="date_of_admission" name="date_of_admission" required>
                    </div>
                    <div class="form-group">
                        <label for="address">Address:</label>
                        <input type="text" id="address" name="address" required>
                    </div>
                    <input type="submit" value="Add Patient">
                </form>
            </div>
        </div>
                
                
        <div id="add-appointment" class="content-section hidden">
            <div class="container">
                <h1>Add appointment</h1>
                <form id="signupForm" action="ashu.jsp" method="post">

                    <div class="form-group">
                        <label for="id">Patient's ID:</label>
                        <input type="number" id = "id" name="id" placeholder="Enter_ID" required>
                    </div>
                    <div class="form-group">
                        <label for="doc_id">Doctor's ID</label>
                        <input type="number" id="doc_id" name="doctor_appointed" required>
                    </div>
                    <div class="form-group">
                        <label for="date">Appointment Date</label>
                        <input type="date" id="date" name="date_of_appointment" placeholder="appointment_date" required>
                    </div>
                    <div class="form-group">
                        <label for="symptoms">Symptoms:</label>
                        <input type="text" id="symptoms" name="symptoms" required>
                    </div>
                    <input type="submit" value="Add Appointment">
                </form>
            </div>
        </div>

        <div id="add-bill" class="content-section hidden">
            <div class="container">
                <h1>Add Bills</h1>
                <form id="signupForm" action="ashu.jsp" method="post">
                    <div class="form-group">
                        <label for="id">Patient's ID</label>
                        <input type="number" id="id" name="id" placeholder="Enter_ID" required>
                    </div>
                    <div class="form-group">
                        <label for="amount">Amount </label>
                        <input type="number" id="amount" name="amount" placeholder="Enter_Amount" required>
                    </div>
                    <div class="form-group">
                    <label for="date">Today's Date</label>
                        <input type="date" id="date" name="date_of_billing" placeholder="Billing_date" required>
                    </div>
                    <input type="submit" value="Add Bill">
                </form>
            </div>
        </div>

        <div id="generate-report" class="content-section hidden">

            <div class="container">
                <h1>Generate Report</h1>
                <form action="ashu.jsp" method="post">
                    <div class="form-group">
                        <label for="id">Patient's ID</label>
                        <input type="number" id="id" name="id" placeholder="Enter_ID" required>
                    </div>
                    <div class="form-group">
                        <label for="date">Today's Date</label>
                        <input type="date" name="date_of_report" placeholder="report_date" required>
                    </div>
                    <div class="form-group">
                        <label for="content">Report Description</label>
                        <input type="text" id="content" name="content" placeholder="Report Description" required>
                    </div>
                    <input type="submit" value="Add Report">
                </form>
            </div>

        </div>
    </div>

    <div class="footer">
        &copy; 2024 Hospital Management System
    </div>

    <script>
        function toggleSubmenu(id) {
        var submenu = document.getElementById(id);
        if (submenu.style.display === 'block') {
        submenu.style.display = 'none';
        } else {
        submenu.style.display = 'block';
        }
        }

        function showContent(id) {
        var sections = document.querySelectorAll('.content-section');
        sections.forEach(section => {
        section.classList.add('hidden');
        });
        document.getElementById(id).classList.remove('hidden');
        }
//            function loadContent(page) {
//            var xhr = new XMLHttpRequest();
//            xhr.open('GET', page, true);
//            xhr.setRequestHeader('X-Requested-With', 'XMLHttpRequest');
//            xhr.onreadystatechange = function() {
//            if (xhr.readyState === 4 && xhr.status === 200) {
//            document.getElementById('main-content').innerHTML = xhr.responseText;
//            }
//            };
//            xhr.send();
//            }

        function toggleSidebar() {
        var sidebar = document.querySelector('.side-nav');
        sidebar.classList.toggle('show-sidebar');
        }

        function fun(){
        window.location.href = "Dashboard.jsp"
        }
    </script>
</body>
</html>