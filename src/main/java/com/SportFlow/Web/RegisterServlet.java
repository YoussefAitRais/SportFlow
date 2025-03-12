package com.SportFlow.Web;

import com.SportFlow.DAO.UserDAO;
import com.SportFlow.Model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet ("Register")
public class RegisterServlet extends HttpServlet {

    private UserDAO userDAO ;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String nomcomplet = req.getParameter("nomcomplet");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String role = "user";

        User newuser = new User(0, nomcomplet, email, password, role);

        try {
            userDAO.addUser(new User);
            resp.sendRedirect("login.jsp");


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }
