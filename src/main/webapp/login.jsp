<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - SportFlow</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Random Sports Background from Unsplash */
        body {
            background: url('https://source.unsplash.com/1600x900/?sports') no-repeat center center fixed;
            background-size: cover;
        }
    </style>
</head>
<body class="h-screen flex items-center justify-center">

<div class="bg-white bg-opacity-90 p-8 rounded-lg shadow-lg max-w-md w-full">
    <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Login to SportFlow</h2>

    <%-- Display error message if login fails --%>
    <% if (request.getParameter("error") != null) { %>
    <p class="text-red-500 text-sm text-center mb-4">Invalid email or password!</p>
    <% } %>

    <form action="Login" method="post" class="space-y-4">

        <div>
            <label class="block text-gray-700 font-semibold">Email:</label>
            <input type="email" name="email" required
                   class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring focus:ring-blue-300">
        </div>

        <div>
            <label class="block text-gray-700 font-semibold">Password:</label>
            <input type="password" name="password" required
                   class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring focus:ring-blue-300">
        </div>

        <button type="submit"
                class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition">
            Login
        </button>
    </form>

    <p class="text-center text-gray-600 mt-4">
        Don't have an account? <a href="register.jsp" class="text-blue-600 hover:underline">Sign up</a>
    </p>
</div>

</body>
</html>
