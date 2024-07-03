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

// Remove the @WebServlet annotation to avoid conflict with web.xml
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        String user_id = request.getParameter("user_id");
        String first_name = request.getParameter("first_name");
        String last_name = request.getParameter("last_name");

        // Hibernate session
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;

        try {
            transaction = session.beginTransaction();

            // Create a new user object
            User user = new User();
            user.setUser_id(user_id);
            user.setFirst_name(first_name);
            user.setLast_name(last_name);

            // Save the user to the database
            session.save(user);

            transaction.commit();

            // Forward to display page
            request.setAttribute("user_id", user_id);
            request.setAttribute("first_name", first_name);
            request.setAttribute("last_name", last_name);
            request.getRequestDispatcher("displayRegistration.jsp").forward(request, response);
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
