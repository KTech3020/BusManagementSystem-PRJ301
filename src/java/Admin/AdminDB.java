package Admin;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AdminDB implements DatabaseInfo {
    public static Connection getConnect() {
        try {
            java.lang.Class.forName(DRIVERNAME);
        } catch (ClassNotFoundException e) {
            System.out.println("Error loading driver" + e);
        }
        try {
            Connection con = DriverManager.getConnection(DBURL, USERDB, PASSDB);
            return con;
        } catch (SQLException e) {
            System.out.println("Error: " + e);
        }
        return null;
    }
    
        public static ArrayList<Admin> listAll() {
        ArrayList<Admin> list = new ArrayList<Admin>();
        try (Connection con = getConnect()) {
            PreparedStatement stmt = con.prepareStatement("Select ID, DisplayName, Username, Password from Admin");
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                list.add(new Admin(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
            con.close();
            return list;
        } catch (Exception ex) {
            Logger.getLogger(AdminDB.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
