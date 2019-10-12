/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminMangement;

import adminBean.users;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author IUT
 */
public class adminManagement extends HttpServlet {

    private Statement st = null;
    private ResultSet rs = null;
    private users user = new users();
    private categories cat = new categories();
    HttpSession session =  null;

        private subcategories subcat = new subcategories();


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        try (PrintWriter out = response.getWriter()) {
//            
//            
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet adminManagement</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet adminManagement at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
//    }

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
        // processRequest(request, response);
        if (request.getParameter("action").equals("dashboard")) {
            response.sendRedirect("admin-pan.jsp");
        }
        if (request.getParameter("action").equals("categories")) {
            System.out.println("un vrai sorcier");
            response.sendRedirect("admin-manage-categories.jsp");
        }
        if (request.getParameter("action").equals("sub-categories")) {
            response.sendRedirect("admin-manage-subcategories.jsp");
        }

        if (request.getParameter("action").equals("manage-products")) {
            response.sendRedirect("admin-manage-products.jsp");
        }

        if (request.getParameter("action").equals("manage-users")) {
            response.sendRedirect("admin-manage-users.jsp");
        }
        if (request.getParameter("action").equals("manage-orders")) {
            response.sendRedirect("admin-orders.jsp");
        }
        if (request.getParameter("action").equals("blockUser")) {

            try {
                //response.sendRedirect("admin-manage-products.jsp");
                int i = user.blockUser(Integer.parseInt(request.getParameter("id")));

                if (i == 1) {
                    response.sendRedirect("admin-manage-users.jsp");
                } else {
                    response.sendRedirect("error.jsp");
                }
            } catch (SQLException ex) {
                // System.out.println(ex);
                Logger.getLogger(adminManagement.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
                
                
                  if (request.getParameter("action").equals("deleteSubcat")) {

            try {
                //response.sendRedirect("admin-manage-products.jsp");
                int i = subcat.deleteSubCat(Integer.parseInt(request.getParameter("id")));

                if (i == 1) {
                    response.sendRedirect("admin-manage-subcategories.jsp");
                } else {
                    response.sendRedirect("error.jsp");
                }
            } catch (SQLException ex) {
                // System.out.println(ex);
                Logger.getLogger(adminManagement.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        
                

        if (request.getParameter("action").equals("deleteUser")) {

            try {
                //response.sendRedirect("admin-manage-products.jsp");
                int i = user.deleteUser(Integer.parseInt(request.getParameter("id")));

                if (i == 1) {
                    response.sendRedirect("admin-manage-users.jsp");
                } else {
                    response.sendRedirect("error.jsp");
                }
            } catch (SQLException ex) {
                // System.out.println(ex);
                Logger.getLogger(adminManagement.class.getName()).log(Level.SEVERE, null, ex);
            }

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
             session =  request.getSession();
    
        if (request.getParameter("action").equals("addCat")) {
           String name = request.getParameter("name");
            try {
                int i = cat.addCat(name);
                if(i==1){
           response.sendRedirect("admin-manage-categories.jsp");

                }
                else{
         response.sendRedirect("error.jsp");

                }
                
            } catch (SQLException ex) {
                Logger.getLogger(adminManagement.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        
        
        
                if (request.getParameter("action").equals("addSubCat")) {
           String name = request.getParameter("name");
           String category = request.getParameter("category");

            try {
                int i = subcat.addSubCat(name,category);
                if(i==1){
           response.sendRedirect("admin-manage-subcategories.jsp");

                }
                else{
         response.sendRedirect("error.jsp");

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
