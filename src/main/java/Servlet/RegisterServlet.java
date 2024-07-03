package Servlet;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import dao.HibernateUtil;
import domain.User;

public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userId = request.getParameter("user_id");
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();
            
            // Create a new User object
            User user = new User();
            user.setUser_id(userId);
            user.setFirst_name(firstName);
            user.setLast_name(lastName);
            
            // Save the user in the database
            session.save(user);
            transaction.commit();
            
            // Set success message as request attribute
            request.setAttribute("message", "User registered successfully!");
            request.setAttribute("totalUsers", getTotalRegisteredUsers());
            
            // Forward to success page
            request.getRequestDispatcher("success.jsp").forward(request, response);
            
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }
    
    // Java code to retrieve total registered users count
    private int getTotalRegisteredUsers() {
        int count = 0;
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            count = ((Number) session.createQuery("select count(*) from User").uniqueResult()).intValue();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
    }
}
