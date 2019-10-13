/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminMangement;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
/**
 *
 * @author IUT
 */
public class products implements java.io.Serializable{
    private String title, description, picture, isBlocked,isValidate,phone,created_at,category;
    private long id , user;
    private int price;
    private Statement st = null;
    private ResultSet rs = null;
    InputStream inputStream = null;

    public InputStream getInputStream() {
        return inputStream;
    }
 public void setCategory(String _cat) {
        this.category = _cat;
    }
    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }
            
            
             public ResultSet getProductsByCat(String catName) throws SQLException {
        
        System.out.println("i am the query master " + catName );
         rs = st.executeQuery("select * from products where category=" + catName+ " and isActive='"+"1'");
        
        return rs;
        
        
        
    }
    
    public ResultSet getSingleProducts(int id) throws SQLException {
        
         System.out.println("select *  from products where id=" + id);
         rs = st.executeQuery("select * from products where id=" + id);
        
        return rs;
        
        
        
    }

      public ResultSet getMyAdds(String _id) throws SQLException {
          System.out.println("nestis " + _id);
          int rid = Integer.parseInt(_id);
        rs = st.executeQuery("select *  from products where user=" + rid);

        return rs;
    }
      
       public ResultSet getMyAddsById(String _id) throws SQLException {
          System.out.println("nestis " + _id);
          int rid = Integer.parseInt(_id);
        rs = st.executeQuery("select *  from products where id=" + rid);

        return rs;
    }
      
       public ResultSet getAllProducts() throws SQLException {

        rs = st.executeQuery("select *  from products where isBlocked='0' and isActive='1'");

        return rs;
    }
       
        public String getPicture()  {
        return picture;
    }
    
          public String getPicture(String product_id) throws SQLException {
        rs = st.executeQuery("select picture   from products where id=" + Integer.parseInt(product_id));
        while(rs.next()){
        picture = rs.getString("picture");
        }
        
        return picture;
    }
          
          
           public String getTitle(String product_id) throws SQLException {
        rs = st.executeQuery("select title   from products where id=" + Integer.parseInt(product_id));
        while(rs.next()){
        title = rs.getString("title");
        }
        
        return title;
    }
     public int getPrice(String product_id) throws SQLException {
        rs = st.executeQuery("select price   from products where id=" + Integer.parseInt(product_id));
        while(rs.next()){
        price = rs.getInt("price");
        }
        
        return price;
    }
           
     
      public int  editAd(products p) throws SQLException {
       String qer ="UPDATE products SET title='"+p.getTitle()+"',"+ " price='"+p.getPrice()+"',"+" description='"+p.getDescription()+"',"+" phone='"+p.getPhone()+"'"+ "where id="+p.getId();
       int flag = st.executeUpdate(qer);
      System.out.println(qer);
        if(flag!=0)
        return flag;
       else
           return 1;
    } 
     
            
         public int  deleteMyAd(int id) throws SQLException {
       
       int flag = st.executeUpdate("delete   from products where id=" + id);
      
        if(flag!=0)
        return flag;
       else
           return 1;
    }    
            
            
            
            
            
     public boolean addProduct(products p) throws SQLException {
       
      int a = st.executeUpdate("INSERT INTO products (title,description,phone,price,picture,category,user) " +   "VALUES ('" + p.getTitle()+"',"+"'"+ p.getDescription()+"' ," +"'"+ p.getPhone()+"' ,"+p.getPrice()+" ,"+"'"+ p.getPicture()+"'," + "'" + p.getCategory()+ "',"+  p.getUser() +")");
      
        if(a!=0)
        return true;
       else
           return false;
    }
     
     public String getCategory() {
        return category;
    }
     
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

 

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getIsBlocked() {
        return isBlocked;
    }

    public void setIsBlocked(String isBlocked) {
        this.isBlocked = isBlocked;
    }

    public String getIsValidate() {
        return isValidate;
    }

    public void setIsValidate(String isValidate) {
        this.isValidate = isValidate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCreated_at() {
        return created_at;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Statement getSt() {
        return st;
    }

    public void setSt(Statement st) {
        this.st = st;
    }

    public ResultSet getRs() {
        return rs;
    }

    public void setRs(ResultSet rs) {
        this.rs = rs;
    }
    
      public products() {
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
