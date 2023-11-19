package semestrovka.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

    private Integer id;
    private String firstName;
    private String lastName;
    private Integer age;
    private String email;
    private String password;
    private boolean isAdmin;
}

