package Control.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Fee;

public class FeeDao {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Fee> getListFee() throws SQLException, ClassNotFoundException{
        List<Fee> list_fee = new ArrayList<>();
        String query = "Select * From FeeShip_Table";
        conn = DBconnect.makeConnection();
        ps= conn.prepareStatement(query);
        rs = ps.executeQuery();
        while(rs.next()){
            Fee fee = new Fee(rs.getInt(1), rs.getString(2), rs.getFloat(3));
            list_fee.add(fee);
        }
        return list_fee;
    }
}
