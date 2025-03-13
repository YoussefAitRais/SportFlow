<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - SportFlow</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="w-full relative bg-no-repeat bg-cover" style="background-image: url('./image/gym-salle.jpg');">

<div class="bg-white bg-opacity-90 p-8 rounded-lg shadow-lg max-w-md w-full mx-auto mt-10">
    <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Create an Account</h2>

    <%-- Display error message if registration fails --%>
    <% if (request.getParameter("error") != null) { %>
    <p class="text-red-500 text-sm text-center mb-4">Registration failed! Email may be already taken.</p>
    <% } %>

    <form action="Register" method="post" class="space-y-4">
        <div>
            <label class="block text-gray-700 font-semibold">Full Name:</label>
            <input type="text" name="nomcomplet" required
                   class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring focus:ring-blue-300">
        </div>

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

        <div>
            <label class="block text-gray-700 font-semibold">Role:</label>
            <select name="role" required
                    class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring focus:ring-blue-300">
                <option value="user">Member</option>
                <option value="coach">Coach</option>  <%-- Changed value to "coach" --%>
                <option value="admin">Admin</option>
            </select>
        </div>

        <button type="submit"
                class="w-full bg-blue-600 text-white py-2 rounded-lg hover:bg-blue-700 transition">
            Register
        </button>
    </form>

    <p class="text-center text-gray-600 mt-4">
        Already have an account? <a href="login.jsp" class="text-blue-600 hover:underline">Login</a>
    </p>
</div>

</body>
</html>
