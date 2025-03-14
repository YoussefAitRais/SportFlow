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
<body class="w-full min-h-screen flex flex-col bg-no-repeat bg-cover" style="background-image: url('./image/salle de sport.jpg');">

<!-- Navbar -->
<nav class="w-full bg-blue-900 bg-opacity-90 text-white py-4 shadow-md">
    <div class="max-w-6xl mx-auto flex justify-between items-center px-6">
        <a href="dashboard.jsp" class="text-2xl font-bold">SportFlow Dashboard</a>
        <ul class="flex space-x-6">
            <li><a href="profile.jsp" class="hover:text-gray-300">Profile</a></li>
            <li><a href="Logout" class="hover:text-gray-300">Logout</a></li>
        </ul>
    </div>
</nav>

<!-- Main Content -->
<div class="max-w-6xl mx-auto mt-10 bg-white bg-opacity-95 p-6 rounded-lg shadow-lg">
    <h2 class="text-3xl font-bold mb-4 text-gray-900 text-center">User Management</h2>

    <!-- Add User Button -->
    <div class="text-right mb-4">
        <a href="addUser.jsp" class="bg-green-600 text-white px-4 py-2 rounded hover:bg-green-700">Add New User</a>
    </div>

    <!-- User Table -->
    <div class="overflow-x-auto">
        <table class="w-full border-collapse border border-gray-300 shadow-md rounded-lg overflow-hidden">
            <thead>
            <tr class="bg-gray-800 text-white">
                <th class="border border-gray-300 px-4 py-2">ID</th>
                <th class="border border-gray-300 px-4 py-2">Full Name</th>
                <th class="border border-gray-300 px-4 py-2">Email</th>
                <th class="border border-gray-300 px-4 py-2">Role</th>
                <th class="border border-gray-300 px-4 py-2">Actions</th>
            </tr>
            </thead>
            <tbody class="bg-white">
            <% for (User user : userList) { %>
            <tr class="text-gray-700 hover:bg-gray-200">
                <td class="border border-gray-300 px-4 py-2 text-center"><%= user.getId() %></td>
                <td class="border border-gray-300 px-4 py-2 text-center"><%= user.getNomcomplet() %></td>
                <td class="border border-gray-300 px-4 py-2 text-center"><%= user.getEmail() %></td>
                <td class="border border-gray-300 px-4 py-2 text-center"><%= user.getRole() %></td>
                <td class="border border-gray-300 px-4 py-2 text-center">
                    <a href="editUser.jsp?id=<%= user.getId() %>" class="bg-blue-500 text-white px-3 py-1 rounded hover:bg-blue-600">Edit</a>
                    <a href="DeleteUser?id=<%= user.getId() %>" class="bg-red-500 text-white px-3 py-1 rounded hover:bg-red-600 ml-2">Delete</a>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
    </div>
</div>

<!-- Footer -->
<footer class="w-full bg-blue-900 text-white text-center py-4 mt-auto bg-opacity-90">
    <p>&copy; 2025 SportFlow. All Rights Reserved.</p>
</footer>

</body>
</html>
