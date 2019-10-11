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
public class subcategories implements java.io.Serializable {
    
        private long id;
     private String name;
     private String description;
     private String created_at;
    private Statement st = null;
    private ResultSet rs = null;
    
    public subcategories(){
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
public ResultSet getAllSubcat() throws SQLException {
        rs = st.executeQuery("select *  from subcategories");

        return rs;
    }
    public long getId() {
        return id;
    }
    
    
    
       public int deleteSubCat(int id) throws SQLException {

        int a = 0;

            a = st.executeUpdate("delete from subcategories  WHERE subcategories.id =" + id);

        if (a == 0) {
            return 0;
        } else {
            return 1;
        }
    }
    
    
 public int addSubCat(String name,String category) throws SQLException {
         int a =0;
         long x = Integer.parseInt(category);
    String ss = "insert into  subcategories (category,name) VALUES (" +x+ ",'"+name +"')";
   
     a = st.executeUpdate(ss);
        
        if(a==0)
        {
        return 0;
        }
        else return 1;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    
}
