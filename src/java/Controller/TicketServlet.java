package Controller;

import Model.Customer;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class TicketServlet extends HttpServlet {    
    ArrayList<Customer> customerList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        Customer c = new Customer();
        if (customerList.isEmpty()){
            c.setTicket_No(1);
        }
        else{
            c.setTicket_No(customerList.size() + 1);
        }
        c.setName(request.getParameter("dk_hoten"));
        c.setPhone_number(request.getParameter("dk_sdt"));
        switch(Integer.parseInt(request.getParameter("dk_tuyen"))){
            case 1: 
                c.setBus_No(1);
                c.setTicket_price(12000);
                break;
            case 2: 
                c.setBus_No(2);
                c.setTicket_price(8000);
                break;
            case 3: 
                c.setBus_No(3);
                c.setTicket_price(15000);
                break;
        }
        customerList.add(c);
        
        try {
            ConnectDB.insertCustomer(c.getTicket_No(), c.getName(), c.getPhone_number(), c.getBus_No(), c.getTicket_price());
        } catch (Exception ex) {
            
        }
        request.getRequestDispatcher("datvethanhcong.jsp").forward(request, response);
    }
}
