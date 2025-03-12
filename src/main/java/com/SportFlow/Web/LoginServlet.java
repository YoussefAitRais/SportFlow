package com.SportFlow.Web;

import com.SportFlow.DAO.UserDAO;
import com.SportFlow.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet ("/Login")
public class LoginServlet  extends HttpServlet {

    private UserDAO userDAO ;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");


        try {
            if (userDAO.getUser(email, password) != null) {
                HttpSession session = req.getSession();
                try {
                    session.setAttribute("user", userDAO.getUser(email, password));
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                resp.sendRedirect("success.jsp"); // Redirect to dashboard
            } else {
                resp.sendRedirect("login.jsp?error=1"); // Redirect with error
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
