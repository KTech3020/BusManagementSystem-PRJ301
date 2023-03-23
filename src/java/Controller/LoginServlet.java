package Controller;

import Admin.Admin;
import Admin.AdminDB;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;

public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private String userID;
    private String displayName;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // get request parameters for userID and password
        String user = request.getParameter("dn_tendangnhap");
        String pwd = request.getParameter("dn_matkhau");
        boolean loginSuccess = false;

        ArrayList<Admin> adminList = AdminDB.listAll();
        for (Admin admin : adminList) {
            if (admin.getUsername().equals(user) && admin.getPassword().equals(pwd)) {
                userID = user;
                displayName = admin.getDisplayName();
                loginSuccess = true;
                break;
            }
        }

        if (loginSuccess) {
            HttpSession session = request.getSession();
            session.setAttribute("user", userID);
            session.setAttribute("displayName", displayName);
            //setting session to expiry in 30 mins
            session.setMaxInactiveInterval(30 * 60);
            Cookie userName = new Cookie("username", user);
            userName.setMaxAge(30 * 60);
            response.addCookie(userName);
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("loginStatus", "failed");
            RequestDispatcher rd = getServletContext().getRequestDispatcher("/dangnhap.jsp");           
            rd.include(request, response);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
