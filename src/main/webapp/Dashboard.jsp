<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page import="com.SportFlow.Model.User, com.SportFlow.DAO.UserDAO, java.util.List" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    // Check if user is logged in
    HttpSession sessionUser = request.getSession(false);
    if (sessionUser == null || sessionUser.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    // Get user list
    UserDAO userDAO = new UserDAO();
    List<User> userList = userDAO.getAllUsers();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - SportFlow</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-full min-h-screen bg-gray-100">

<!-- Navbar -->
<nav class="w-full bg-blue-900 text-white py-4 shadow-md">
    <div class="max-w-6xl mx-auto flex justify-between items-center px-6">
        <a href="dashboard.jsp" class="text-2xl font-bold">SportFlow Dashboard</a>
        <ul class="flex space-x-6">
            <li><a href="profile.jsp" class="hover:text-gray-300">Profile</a></li>
            <li><a href="Logout" class="hover:text-gray-300">Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Main Content -->
<div class="max-w-6xl mx-auto mt-10 bg-white p-6 rounded-lg shadow-lg">
    <h2 class="text-3xl font-bold mb-4">User Management</h2>

    <!-- Add User Button -->
    <a href="addUser.jsp" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add New User</a>

    <!-- User Table -->
    <table class="w-full mt-4 border-collapse border border-gray-300">
        <thead>
        <tr class="bg-gray-200">
            <th class="border border-gray-300 px-4 py-2">ID</th>
            <th class="border border-gray-300 px-4 py-2">Full Name</th>
            <th class="border border-gray-300 px-4 py-2">Email</th>
            <th class="border border-gray-300 px-4 py-2">Role</th>
            <th class="border border-gray-300 px-4 py-2">Actions</th>
        </tr>
        </thead>
        <tbody>
        <% for (User user : userList) { %>
        <tr>
            <td class="border border-gray-300 px-4 py-2"><%= user.getId() %></td>
            <td class="border border-gray-300 px-4 py-2"><%= user.getNomcomplet() %></td>
            <td class="border border-gray-300 px-4 py-2"><%= user.getEmail() %></td>
            <td class="border border-gray-300 px-4 py-2"><%= user.getRole() %></td>
            <td class="border border-gray-300 px-4 py-2">
                <a href="editUser.jsp?id=<%= user.getId() %>" class="bg-blue-500 text-white px-3 py-1 rounded hover:bg-blue-600">Edit</a>
                <a href="DeleteUser?id=<%= user.getId() %>" class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600">Delete</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

</body>
</html>
