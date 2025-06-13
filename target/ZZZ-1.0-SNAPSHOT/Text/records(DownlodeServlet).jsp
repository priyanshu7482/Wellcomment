<%-- 
    Document   : records
    Created on : Apr 29, 2025, 1:38:15 AM
    Author     : sumitkumarsoni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<html>
<head>
    <title>Records List</title>
</head>
<body>
    <h2>Uploaded Records</h2>

    <table border="1" cellpadding="10">
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Name</th>
            <th>Date</th>
            <th>Type</th>
            <th>Action</th>
        </tr>

<%
    // Database Connection
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/wellpro", "root", "root");

        String sql = "SELECT * FROM records";
        pst = con.prepareStatement(sql);
        rs = pst.executeQuery();

        while (rs.next()) {
%>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("recordTitle") %></td>
                <td><%= rs.getString("recordName") %></td>
                <td><%= rs.getDate("recordDate") %></td>
                <td><%= rs.getString("recordType") %></td>
                <td>
                    <a href="DownloadServlet?id=<%= rs.getInt("id") %>">Download</a>
                </td>
            </tr>
<%
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        try { if (rs != null) rs.close(); } catch (Exception e) {}
        try { if (pst != null) pst.close(); } catch (Exception e) {}
        try { if (con != null) con.close(); } catch (Exception e) {}
    }
%>

    </table>

</body>
</html>

