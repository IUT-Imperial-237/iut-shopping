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
public class users implements java.io.Serializable {

    private String email, name, password, created_at, isBlocked;
    private long id;
    private Statement st = null;
    private ResultSet rs = null;

    public users() {
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

    public String getEmail() {
        return email;
    }

    public String getName() {
        return name;
    }
    
      public int userLogin(String email, String password) throws SQLException {

        rs = st.executeQuery("select *  from users where email='"+email+ "' and "+ "password ='"+ password+"'");
              if( rs.next()){
//           while(rs.next()){
//               System.out.println("je suis amoureux"); 
//                 System.out.println(rs.getInt("id"));            
//               // return   rs.getInt("id");
//                 return 1;
//           }
                  return 1;
     }
              
              return 0;
              
        
    }
    
     public boolean login(String email, String password) throws SQLException {

        rs = st.executeQuery("select *  from users where email='"+email+ "' and "+ "password ='"+ password+"'"+ " and "+ "isAdmin ='"+ "1"+"'");
              if( rs.next()){
          return true;
     }
              else 
        return false;
    }

    public ResultSet getAllUsers() throws SQLException {

        rs = st.executeQuery("select *  from users");

        return rs;
    }

    public int deleteUser(int id) throws SQLException {

        int a = 0;

            a = st.executeUpdate("delete from users  WHERE users.id =" + id);

        if (a == 0) {
            return 0;
        } else {
            return 1;
        }
    }

    public int blockUser(int id) throws SQLException {

        int a = 0;

        String flag = this.getIsBlocked(id);
        //System.out.println("zambian = " + flag);
        if (flag.equals("1")) {
            a = st.executeUpdate("UPDATE users SET isBlocked ='0' WHERE users.id =" + id);

        }
        if (flag.equals("0")) {
            a = st.executeUpdate("UPDATE users SET isBlocked ='1' WHERE users.id =" + id);

        }
        if (a == 0) {
            return 0;
        } else {
            return 1;
        }
    }

    public String getPassword() {
        return password;
    }

    public String getCreated_at() {
        return created_at;
    }

    public String getIsBlocked(int id) throws SQLException {
        rs = st.executeQuery("select isBlocked  from users where id=" + id);
        rs.next();
        this.isBlocked = rs.getString("isBlocked");

        return isBlocked;
    }

    public long getId() {
        return id;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public void setIsBlocked(String isBlocked) {
        this.isBlocked = isBlocked;
    }

    public void setId(long id) {
        this.id = id;
    }

}
