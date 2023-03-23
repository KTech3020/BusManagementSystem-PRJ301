<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    if(session.getAttribute("user") == null){
        response.sendRedirect("index.jsp");
}
    
    String dbUser = "sa"; 
    String dbPassword = "123";
    String ServerName ="K-LAPV2";
    String DBName ="BusManagement";
    String dbURL = "jdbc:sqlserver://"+ServerName+";databaseName="+DBName+";encrypt=false;"; 
    DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
    Connection conn = DriverManager.getConnection(dbURL,dbUser,dbPassword);        
    Statement stmt = conn.createStatement();
    ResultSet rs;
    rs = stmt.executeQuery("SELECT * FROM Customer");
%>
<h1 style="text-align: center; margin-top: 20px">Thông tin khách hàng</h1>
<table style="margin-top: 50px">
    <tr>
        <th>Mã vé</th>
        <th>Họ tên người đặt vé</th>
        <th>SĐT</th>
        <th>Mã xe khách</th>
        <th>Giá vé</th>
    </tr>
    <% while (rs.next()) { %>
    <tr>
        <td><%=rs.getString("Ticket_No")%></td>
        <td><%=rs.getString("Name")%></td>
        <td><%=rs.getString("Phone_number")%></td>
        <td><%=rs.getString("Bus_No")%></td>
        <td><%=rs.getString("Ticket_price")%></td>
    </tr>
    <% } %>
</table>
<%
    conn.close();
%>
</div></div>
