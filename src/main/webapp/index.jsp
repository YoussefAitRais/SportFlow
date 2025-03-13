<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportFlow - Home</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-full min-h-screen flex flex-col bg-no-repeat bg-cover" style="background-image: url('./image/gym.jpg');">

<!-- Navbar -->
<nav class="w-full bg-red-900 text-white py-4 shadow-md">
    <div class="max-w-6xl mx-auto flex justify-between items-center px-6">
        <a href="index.jsp" class="text-2xl font-bold">SportFlow</a>
        <ul class="flex space-x-6">
            <li><a href="about.jsp" class="hover:text-gray-400">About</a></li>
            <li><a href="contact.jsp" class="hover:text-gray-400">Contact</a></li>
            <li><a href="register.jsp" class="hover:text-gray-400">Register</a></li>
            <li><a href="login.jsp" class="hover:text-gray-400">Login</a></li>
        </ul>
    </div>
</nav>

<!-- Main Content (Centered Buttons) -->
<div class="flex-grow flex flex-col justify-center items-center text-center">
    <h1 class="text-4xl font-bold text-white mb-6 drop-shadow-lg">Welcome to SportFlow</h1>
    <p class="text-lg text-white mb-8 max-w-lg">Your ultimate platform for sports management and team collaboration.</p>

    <div class="flex space-x-4">
        <a href="register.jsp" class="px-6 py-3 bg-blue-600 text-white font-semibold rounded-lg hover:bg-blue-700 transition">Register</a>
        <a href="login.jsp" class="px-6 py-3 bg-gray-800 text-white font-semibold rounded-lg hover:bg-gray-900 transition">Login</a>
    </div>
</div>

<!-- Footer -->
<footer class="w-full bg-red-900 text-white text-center py-4 mt-auto">
    <p>&copy; 2025 SportFlow. All Rights Reserved. | Legal Notice</p>
</footer>

</body>
</html>
