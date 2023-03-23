package Controller;

import Model.Driver;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

class ConnectDB {

    public ConnectDB() {}
    
    public static Connection getConnectionWithSqlJdbc() throws Exception {
        Connection con = null;
        String dbUser = "sa"; 
        String dbPassword = "123";
        String ServerName ="K-LAPV2";
        String DBName ="BusManagement";
        String dbURL = "jdbc:sqlserver://"+ServerName+";databaseName="+DBName+";encrypt=false;"; 
        try{
            DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
            con = DriverManager.getConnection(dbURL,dbUser,dbPassword);        
        } catch( SQLException e) {
            System.out.println("Error: " + e);
        }
        return con;
    }
    
    public static void insertCustomer(int Ticket_No, String Name, String Phone_number, 
                                      int Bus_No, int Ticket_price) 
                                      throws Exception{
        Statement stmt = null;
        Connection con = getConnectionWithSqlJdbc();
        try{
            stmt = con.createStatement();
            stmt.executeUpdate("insert into Customer values("+Ticket_No+", N'"+Name+"', '"+Phone_number+"', "+Bus_No+", "+Ticket_price+")");
        } catch(Exception e){
            //do nothing
        }
        finally{
            stmt.close();
            con.close();
        }    
    }
    
    public static ArrayList<Driver> getAllDriver(){
        ArrayList<Driver> list = new ArrayList<>();
        try(Connection con = getConnectionWithSqlJdbc()) {
            PreparedStatement stmt = con.prepareStatement("Select * from DE170682");
            ResultSet  rs = stmt.executeQuery();
            while(rs.next()){
                list.add(new Driver(rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4)));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            Logger.getLogger(Driver.class.getName()).log(Level.SEVERE, null, ex);
        }   
        return null;
    }
}
