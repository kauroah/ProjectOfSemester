package semestrovka.servlets;

import semestrovka.models.User;
import semestrovka.repositories.Impl.UserRepositoryJdbcImpl;
import semestrovka.repositories.UserRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
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

protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    List<User> users = userRepository.findAll();

    request.setAttribute("users", users);
    System.out.println(users);
    request.getRequestDispatcher("/userDisplay.jsp").forward(request, response);
    }
}