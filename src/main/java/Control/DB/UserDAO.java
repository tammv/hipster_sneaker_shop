package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import Model.Account_Google;
import Model.Account_SignUp;

public class UserDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;


    public void insertUserTable(Account_SignUp acc) throws  ClassNotFoundException, SQLException{
        

        String query = "Insert into User_Table (username, password, role , email , created_at, update_at) Values (?, ? ,?, ?, ? ,?)";
        conn = DBconnect.makeConnection();
        Date currentDate = new Date();

        // Chuyển đổi sang kiểu java.sql.Date
        java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
        ps = conn.prepareStatement(query);
        ps.setString(1, acc.getUsername());
        ps.setString(2, acc.getPassword());
        ps.setString(3, "customer");
        ps.setString(4, acc.getEmail());
        ps.setDate(5, sqlDate);
        ps.setDate(6, sqlDate);
        try {
            ps.executeUpdate();
            
        } catch (SQLException e) {
            
        }

    }

    public void insertAccgmail(Account_Google acc) throws ClassNotFoundException, SQLException {
        String query = "Insert into User_Table(username, role, email , fullname , created_at, update_at , password ) Values (?, ? ,? , ? ,? ,? , ?)";
        conn = DBconnect.makeConnection();
        Date currentDate = new Date();

        // Chuyển đổi sang kiểu java.sql.Date
        java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
        ps = conn.prepareStatement(query);
        ps.setString(1, acc.getEmail());
        ps.setString(2, "customer");
        ps.setString(3, acc.getEmail());
        ps.setString(4, acc.getName());
        ps.setDate(5, sqlDate);
        ps.setDate(6, sqlDate);
        ps.setString(7, "88888888888888");
        try {
            ps.executeUpdate();
            
        } catch (SQLException e) {
            
            
        }
        
    }

    public boolean checkEmailAndUsername(Account_SignUp acc) throws SQLException, ClassNotFoundException{
        String query = "Select username , email From User_Table";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        while(rs.next()){
            if(rs.getString(1).equalsIgnoreCase(acc.getUsername()) || rs.getString(2).equalsIgnoreCase(acc.getEmail())){
                return true;
            }
        }
        return false;
    }

    public boolean checkEmail(Account_Google acc) throws SQLException, ClassNotFoundException{
        String query = "Select email From User_Table";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        while(rs.next()){
            if (rs.getString(1).equalsIgnoreCase(acc.getEmail())){
                return true;
            }
        }
        return false;
    }

    public List<Account_SignUp> getListAcc() throws SQLException, ClassNotFoundException{
        String query = "Select username , password , email From User_Table";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        rs= ps.executeQuery();
        List<Account_SignUp> list = new ArrayList<>()  ;
        while(rs.next()){
            list.add(new Account_SignUp(rs.getString(1), rs.getString(2), rs.getString(3)));
        }
        return list;
    }

    public boolean checkEmail(String email) throws SQLException, ClassNotFoundException{
        String query = "Select email From User_Table";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        while(rs.next()){
            if (rs.getString(1).equalsIgnoreCase(email)){
                
                return true;
            }
        }
        return false;
    }

    public void updatePassword(String email, String newpass) throws SQLException, ClassNotFoundException {
        String query = "Update User_Table Set password = ? , update_at = ?  where email = ?";
        conn = DBconnect.makeConnection();
        Date currentDate = new Date();

        // Chuyển đổi sang kiểu java.sql.Date
        java.sql.Date sqlDate = new java.sql.Date(currentDate.getTime());
        ps = conn.prepareStatement(query);
        ps.setString(1, newpass);
        ps.setDate(2, sqlDate);
        ps.setString(3  , email);
        ps.executeUpdate();

    }

    public String getEmailByUsername(String emailnusername) throws SQLException, ClassNotFoundException {
        String query = "Select email From User_Table where username = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, emailnusername);
        rs = ps.executeQuery();
        while(rs.next()){
            return rs.getString(1);
        }
        return null;
    }

}

