package semestrovka.repositories.Impl;

import semestrovka.models.User;
import semestrovka.repositories.UserRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class UserRepositoryJdbcImpl implements UserRepository {
    private final static String SQL_SELECT_ALL = "select * from users";
    private final static String SQL_INSERT = "INSERT INTO users(first_name, last_name, age, email, password) VALUES ";
    private static final String SQL_SELECT_BY_AGE = "SELECT * FROM users WHERE age = ?";
    private static final String SQL_SELECT_BY_EMAIL_PASSWORD = "SELECT * FROM users WHERE email = ? AND password = ?";
    private final static String SQL_INSERT_USERCOOKIE = "INSERT INTO cookie_users (uuid, user_id) VALUES (?, ?)";
    private final static String SQL_UPDATE = "UPDATE users SET first_name = ?, last_name = ?, age = ?, email = ?, password = ? WHERE id = ?";
    private final Connection connection;
    private final Statement statement;

    public UserRepositoryJdbcImpl(Connection connection, Statement statement) {
        this.connection = connection;
        this.statement = statement;
    }

    @Override
    public void save(User model) {
        try (PreparedStatement preparedStatement = connection.prepareStatement(SQL_INSERT+"(?,?,?,?,?)")){
            preparedStatement.setString(1, model.getFirstName());
            preparedStatement.setString(2, model.getLastName());
            preparedStatement.setInt(3, model.getAge());
            preparedStatement.setString(4, model.getEmail());
            preparedStatement.setString(5, model.getPassword());

            int affectedRows = preparedStatement.executeUpdate();

            if (affectedRows != 1) {
                throw new SQLException("Cannot insert user");
            }

        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override
    public List<User> findAll() {
        List<User> users = new ArrayList<>();
        try (ResultSet resultSet = statement.executeQuery(SQL_SELECT_ALL)) {
            while (resultSet.next()) {
                User user = User.builder()
                        .id(resultSet.getInt("id"))
                        .firstName(resultSet.getString("first_name"))
                        .lastName(resultSet.getString("last_name"))
                        .age(resultSet.getInt("age"))
                        .email(resultSet.getString("email"))
                        .password(resultSet.getString("password"))
                        .build();

                users.add(user);
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
        return users;
    }

    public List<User> findByAge(int age) {
        List<User> users = new ArrayList<>();
        try (PreparedStatement preparedStatement = connection.prepareStatement(SQL_SELECT_BY_AGE)) {
            preparedStatement.setInt(1, age);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    User user = User.builder()
                            .id(resultSet.getInt("id"))
                            .firstName(resultSet.getString("first_name"))
                            .lastName(resultSet.getString("last_name"))
                            .age(resultSet.getInt("age"))
                            .email(resultSet.getString("email"))
                            .password(resultSet.getString("password"))
                            .build();

                    users.add(user);
                }
            }
        } catch (SQLException e) {
            throw new IllegalStateException(e);
        }
        return users;
    }

    @Override
    public User findUser(String email, String password) {
        try {PreparedStatement preparedStatement = connection.prepareStatement(SQL_SELECT_BY_EMAIL_PASSWORD);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return showUser(resultSet);
            }
        } catch (SQLException e) {
            System.out.println("ERROR -> "+e);
        }
        return null;
    }

    private User showUser(ResultSet resultSet) throws SQLException {
        return User.builder()
                .id(resultSet.getInt("id"))
                .firstName(resultSet.getString("first_name"))
                .lastName(resultSet.getString("last_name"))
                .age(resultSet.getInt("age"))
                .email(resultSet.getString("email"))
                .password(resultSet.getString("password"))
                .build();
    }

    @Override
    public void userCookie(UUID uuid, int userId) {
        try (PreparedStatement preparedStatement = connection.prepareStatement(SQL_INSERT_USERCOOKIE)) {
            preparedStatement.setObject(1, uuid);
            preparedStatement.setInt(2, userId);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            System.out.println("ERROR -> "+e);
        }
    }
}