/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package users;

import adminMangement.adminManagement;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.ThreadLocalRandom;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import adminMangement.products;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import adminBean.users;
import adminBean.favoriteBean;
import adminBean.ordersBean;

/**
 *
 * @author IUT
 */
@MultipartConfig(maxFileSize = 16177215)
// upload file's size up to 16MB
public class usersManagement extends HttpServlet {

    private static final int BUFFER_SIZE = 4096;
    HttpSession session = null;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = null;
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet usersManagement</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet usersManagement at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession();

        if (request.getParameter("action").equals("queryByCat")){
        
        RequestDispatcher rd = request.getRequestDispatcher("allcategories.jsp");
        rd.forward(request, response);
        
        
        }
        
         if (request.getParameter("action").equals("deleteMyAd")){
        
            products p = new products();
           
            int productId = Integer.parseInt(request.getParameter("id"));
           // System.out.println("checker of fav : "+userFav+" "+ productFav );
              try {
                int flag = p.deleteMyAd(productId);
                if (flag != 0) {

                    session.setAttribute("deleteMyAdFeedback", "ad deleted successfully");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);

                } else {
                    session.setAttribute("deleteMyAdFeedback", "Error occured when deleting  your ad please try again!!!");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);

                }

            } catch (SQLException ex) {
                Logger.getLogger(usersManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        
        }
        
    
        
        
        
        if (request.getParameter("action").equals("saveFavorite")){
        
            favoriteBean fav = new favoriteBean();
            int userFav  = Integer.parseInt((String) session.getAttribute("authid"));
            int productFav = Integer.parseInt(request.getParameter("ad_id"));
           // System.out.println("checker of fav : "+userFav+" "+ productFav );
              try {
                int flag = fav.addFavorite(userFav,productFav);
                if (flag != 0) {

                    session.setAttribute("favoriteFeedback", "Favorite added successfully");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);

                } else {
                    session.setAttribute("favoriteFeedback", "Error occured when adding to your favorite please try again!!!");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);

                }

            } catch (SQLException ex) {
                Logger.getLogger(usersManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        
        }
        
        
        
        
        
        
        if (request.getParameter("action").equals("cancelOrder")) {
            ordersBean ord = new ordersBean();
            try {
                int flag = ord.cancelOrder(Integer.parseInt(request.getParameter("id")));
                if (flag != 0) {

                    session.setAttribute("cancelationFeedback", "order canceled successfully");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);

                } else {
                    session.setAttribute("cancelationFeedback", "Error occured when canceling the order please try again!!!");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);

                }

            } catch (SQLException ex) {
                Logger.getLogger(usersManagement.class.getName()).log(Level.SEVERE, null, ex);
            }

            

        }

        if (request.getParameter("action").equals("deleteFavorite")) {
            int id = Integer.parseInt(request.getParameter("id"));
            favoriteBean fav = new favoriteBean();
            try {
                int flag = fav.deleteFavorites(id);
                if (flag != 0) {

                    session.setAttribute("favoriteDeletion", "favorite deleted successfully");
                    RequestDispatcher rd = request.getRequestDispatcher("myfavorite.jsp");
                    rd.forward(request, response);

                } else {
                    session.setAttribute("favoriteDeletion", "Error occured when deleting the favorite please try again!!!");
                    RequestDispatcher rd = request.getRequestDispatcher("myfavorite.jsp");
                    rd.forward(request, response);

                }
            } catch (SQLException ex) {
                Logger.getLogger(usersManagement.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (request.getParameter("action").equals("productDetails")) {
            RequestDispatcher rd = request.getRequestDispatcher("product.jsp");
            rd.forward(request, response);

        }

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        session = request.getSession();
        products p = new products();
        ordersBean order = new ordersBean();
        if (request.getParameter("action").equals("registration")){
        
        users us = new users();
        us.setName(request.getParameter("name"));
        us.setEmail(request.getParameter("email"));
        us.setPassword(request.getParameter("password"));
            try {
                int flag = us.registerUser(us);
                
                  if (flag != 0) {
                    session.setAttribute("registrationFeedback", "registration completed successfully use your credentials to login");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);
                } else {
                    session.setAttribute("registrationFeedback", "sorry unable to register  now please try again");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);
                }
                
            } catch (SQLException ex) {
                Logger.getLogger(usersManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        
        }
        
        
        if (request.getParameter("action").equals("editad")){
            
            p.setTitle(request.getParameter("title"));
            p.setPhone(request.getParameter("phone"));
            p.setPrice(Integer.parseInt(request.getParameter("price")));
            p.setDescription(request.getParameter("description"));
            p.setId(Integer.parseInt(request.getParameter("adId")));
            
             try {
                int flag = p.editAd(p);
                if (flag != 0) {
                    session.setAttribute("editadFeedback", "your ad has been Modified successfully!!!");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);
                } else {
                    session.setAttribute("editadFeedback", "Sorry we are unable to edit your ad . try again!!!");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);
                }
            } catch (SQLException ex) {
                Logger.getLogger(usersManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
        
        
        
        }
        

        if (request.getParameter("action").equals("placeOrder")) {
            int x = ThreadLocalRandom.current().nextInt(00001, 99999 + 1);
            String ordcod = "ord" + x;
            order.setOrderCode(ordcod);
            order.setAddress(request.getParameter("address"));
            order.setDesignation(request.getParameter("designation"));
            order.setName(request.getParameter("name"));
            order.setPrice(request.getParameter("price"));
            order.setPhone(request.getParameter("phone"));
            order.setUser(Integer.parseInt(request.getParameter("buyer")));

            try {
                int flag = order.placeOrder(order);
                if (flag != 0) {
                    session.setAttribute("placeOrderFeedback", "your order has been placed successfully!!!");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);
                } else {
                    session.setAttribute("placeOrderFeedback", "Sorry we are unable to place this order . try again!!!");
                    String url = request.getHeader("referer");

                    response.sendRedirect(url);
                }
            } catch (SQLException ex) {
                Logger.getLogger(usersManagement.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (request.getParameter("action").equals("postad")) {

            p.setTitle(request.getParameter("title"));
            p.setDescription(request.getParameter("description"));
            p.setPhone(request.getParameter("phone"));
            p.setPrice(Integer.parseInt(request.getParameter("price")));
            p.setUser(Integer.parseInt(request.getParameter("user")));
            p.setCategory(request.getParameter("category"));
            InputStream inputStream = null; // input stream of the upload file
            // obtains the upload file part in this multipart request
            Part filePart = request.getPart("picture");

            if (filePart != null) {

                System.out.println("testeurs testeur testeurs testuers testeurs testuers");
                System.out.println(filePart.getName());
                // prints out some information for debugging
                System.out.println(filePart.getName());
                System.out.println(filePart.getSize());
                System.out.println(filePart.getContentType());

            //obtains input stream of the upload file
                //the InputStream will point to a stream that contains
                //the contents of the file
                inputStream = filePart.getInputStream();
                System.out.println("testeurs testeur testeurs testuers testeurs testuers");
                System.out.println(inputStream);

            }

            if (inputStream != null) {
                //files are treated as BLOB objects in database
                //here we're letting the JDBC driver
                //create a blob object based on the
                //input stream that contains the data of the file
                //p.setInputStream(inputStream);
                //("D:\\IUT\\Documents\\NetBeansProjects\\iut\\WebApplication1\\web\\productPicture")
                // File uploads = new File("C:\\Users\\Youssouf\\Documents\\upload");

                // File uploads = new File("D:\\IUT\\Documents\\NetBeansProjects\\iut\\WebApplication1\\web\\productPicture");
                File uploads = new File("D:\\IUT\\Documents\\NetBeansProjects\\iut-shopping\\WebApplication1\\build\\web\\productPicture");

                int x = ThreadLocalRandom.current().nextInt(00001, 99999 + 1);
                String pictName = "prod" + x + ".png";

                File file = new File(uploads, pictName);
                // Files.deleteIfExists(file.toPath());
                Files.copy(inputStream, file.toPath());
                p.setPicture(pictName);

            }

            products pro = new products();

            try {
                boolean t = pro.addProduct(p);
                if (t) {
                    session.setAttribute("adsaving", "ok");
                    response.sendRedirect("myadd.jsp");

                } else {
                    session.setAttribute("errorLogin", "sorry we are unabe to post youur ad now pleas try later");
                    response.sendRedirect("postad.jsp");

                }
            } catch (SQLException ex) {
                Logger.getLogger(adminManagement.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
