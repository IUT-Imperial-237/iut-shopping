/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminBean;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author IUT
 */
public class ordersBean implements java.io.Serializable{
       private String orderCode, name, address, created_at, phone,state,price,designation,isState;

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public long getUser() {
        return user;
    }

    public void setUser(long user) {
        this.user = user;
    }
    private long id,user;
    private Statement st = null;
    private ResultSet rs = null;
   public int cancelOrder(int _id) throws SQLException {
    int a = st.executeUpdate("UPDATE orders SET state='2' where id="+ _id);
  
        if(a!=0)
        return 1;
       else
           return 0;
    }
    
     public int placeOrder(ordersBean ord) throws SQLException {
    int a = st.executeUpdate("INSERT INTO orders (orderCode,Name,address,phone,price,user,designation) " +   "VALUES ('" + ord.getOrderCode()+"',"+"'"+ ord.getName()+"' ," +"'"+ ord.getAddress()+"' ,"+ord.getPhone()+" ,"+"'"+ ord.getPrice()+"'," + "'" + ord.getUser()+ "',"+"'" + ord.getDesignation() +"')");
  
        if(a!=0)
        return 1;
       else
           return 0;
    }
     
       public ResultSet getAllOrders() throws SQLException {
       rs = st.executeQuery("select *  from orders ");

        return rs;
    }
       
       // karim debut method pour le state dans le javabean et isState est declarer haut
    
    public int EditeState(int id) throws SQLException {

        int a = 0;

        String flag = this.getIsState(id);
          if (flag.equals("0")) {
            a = st.executeUpdate("UPDATE orders SET state ='1' WHERE orders.id =" + id);

        }
        if (flag.equals("1")) {
            System.out.println("i am testing the value of state "+ flag);
            a = st.executeUpdate("UPDATE orders SET state='2' WHERE orders.id =" + id);

        }
        if (flag.equals("2")) {
            a = st.executeUpdate("UPDATE orders SET state ='0' WHERE orders.id =" + id);

        }
      
        if (a == 0) {
            return 0;
        }else{
            return 1;
        }
    }
      public String getIsState(int id) throws SQLException {
        rs = st.executeQuery("select state  from orders where id=" + id);
        rs.next();
        this.isState = rs.getString("state");
           System.out.println("testing isstate last "+ isState);
        return isState;
    }
    public void setIsState(String isState) {
        this.isState = isState;
    }
    // karim fin method pour le state dans le javabean
     
      public ResultSet getOrders(int _id) throws SQLException {
       rs = st.executeQuery("select *  from orders where user=" + _id);

        return rs;
    }
    
    public String getOrderCode() {
        return orderCode;
    }

    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
        public ordersBean() {
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
