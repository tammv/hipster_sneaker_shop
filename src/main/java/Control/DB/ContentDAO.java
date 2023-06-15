package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Content;

public class ContentDAO {

   
    public Connection conn;
    PreparedStatement ps;
    ResultSet rs;


    public List<Content> getListContent() throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Select * from ContentCreator_Table";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        List<Content> list_Content = new ArrayList<>();
        while(rs.next()){
            Content p = new Content(rs.getString(1), rs.getString(2),rs.getString(3),rs.getString(4),rs.getDate(5),rs.getDate(6),rs.getString(7));
            list_Content.add(p);
        }
        return list_Content;
        
    }

}
   

