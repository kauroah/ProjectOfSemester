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

@WebServlet("/signup")
public class SignUpServlet extends HttpServlet {
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
        request.getRequestDispatcher("/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        int age = Integer.parseInt(request.getParameter("age"));
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = User.builder()
                .firstName(firstName)
                .lastName(lastName)
                .age(age)
                .email(email)
                .password(password)
                .build();


        userRepository.save(user);
        System.out.println(user);
        System.out.println(userRepository.findAll());
        System.out.println(userRepository.findByAge(30));
        System.out.println(userRepository.findUser("abdelgaffar@mail.ru", "helouss"));

    response.sendRedirect("/");

    }
}