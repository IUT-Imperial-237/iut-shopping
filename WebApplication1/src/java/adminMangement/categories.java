/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminMangement;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author IUT
 */
public class categories implements java.io.Serializable{
     private long id;
     private String catName;
     private String created_at;
    private Statement st = null;
    private ResultSet rs = null;
    
    public categories(){
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

    public void setCatName(String catName) {
        this.catName = catName;
    }
    
    public int addCat(String _name) throws SQLException {
    int a =0;
    String ss = "insert into  categories (name) VALUES ('"+_name+"')";
   
     a = st.executeUpdate(ss);
        
        if(a==0)
        {
        return 0;
        }
        else return 1;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    
     public ResultSet getAllCat() throws SQLException {
       rs = st.executeQuery("select *  from categories");

        return rs;
    }

    public long getId() {
        return id;
    }

    public String getCatName() {
        return catName;
    }

    public String getCreated_at() {
        return created_at;
    }
    
}
