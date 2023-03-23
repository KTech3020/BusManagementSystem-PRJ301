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
    rs = stmt.executeQuery("SELECT * FROM Driver");
%>
<h1 style="text-align: center; margin-top: 20px">Danh sách tài xế</h1>
<table style="margin-top: 50px">
    <tr>
        <th>ID</th>
        <th>Họ và tên</th>
        <th>Số điện thoại</th>
        <th>Ảnh chân dung</th>
    </tr>
    <% while (rs.next()) { %>
    <tr>
        <td><%=rs.getString("ID")%></td>
        <td><%=rs.getString("Name")%></td>
        <td><%=rs.getString("Phone")%></td>
        <td><img src="driver/<%=rs.getString("Img")%>" alt="Driver Image"></td>
    </tr>
    <% } %>
</table>
<%
    conn.close();
%>
</div></div>
