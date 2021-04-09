/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DB;

/**
 *
 * @author Snippy066
 */
import java.sql.*;
public class DBConnection {
    
    public Connection con;
    public PreparedStatement pstmt;
    public ResultSet rst;
    public DBConnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagement","root","root");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
