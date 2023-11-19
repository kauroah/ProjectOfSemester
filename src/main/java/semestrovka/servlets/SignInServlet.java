package semestrovka.servlets;

import semestrovka.models.User;
import semestrovka.repositories.Impl.UserRepositoryJdbcImpl;
import semestrovka.repositories.UserRepository;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.UUID;

@WebServlet("/signin")
public class SignInServlet extends HttpServlet {
    private static final String DB_USER = "postgres";
    private static final String DB_PASSWORD = "asuspro15";
    private static final String DB_URL = "jdbc:postgresql://localhost:5432/postgres";
    private UserRepository userRepository;

    @Override
    public void init() throws ServletException {
        try {
            Class.forName("org.postgresql.Driver");
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        try {
            Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            Statement statement = connection.createStatement();
            userRepository = new UserRepositoryJdbcImpl(connection, statement);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/signin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");


        User user = userRepository.findUser(email, password);
        if (user != null) {
            String uuid = UUID.randomUUID().toString();
            Cookie userCookie = new Cookie("userCookie", uuid);
            response.addCookie(userCookie);

            userRepository.userCookie(UUID.fromString(uuid), user.getId());

            System.out.println("EMAIL & PASS -> " + email + " " + password);
            System.out.println("UUID & ID -> " + uuid + " " + user.getId());
            response.sendRedirect("/");
        } else {
            request.setAttribute("error","Incorrect Email or Password");
            request.getRequestDispatcher("/signin.jsp").forward(request, response);

        }
    }
}

