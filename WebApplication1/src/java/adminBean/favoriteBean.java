/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminBean;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class favoriteBean  implements java.io.Serializable{
       private String created_at;
    private long id , user,addId; 
    private Statement st = null;
    private ResultSet rs = null;

    public String getCreated_at() {
        return created_at;
    }
    
    public ResultSet getAllFavorites(int _id) throws SQLException {
       rs = st.executeQuery("select *  from favorites where user=" + _id);

        return rs;
    }
    
     public int deleteFavorites(int _id) throws SQLException {
       int flag = st.executeUpdate("delete   from favorites where id=" + _id);
       System.out.println("delete   from favorites where user=" + _id);
       if(flag==0)
       {
       return flag;
       }
       
        return 1;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUser() {
        return user;
    }

    public void setUser(long user) {
        this.user = user;
    }
    
   
    
        public favoriteBean() {
        try {
            String user = "root"; // hsqldb default
            String url = "jdbc:mysql://localhost:3306/iut";
            String password = ""; // hsqldb default

            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, user, password);
            st = conn.createStatement();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
    
}
