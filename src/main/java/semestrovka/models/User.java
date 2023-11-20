package semestrovka.models;

import lombok.*;

@Data
@Getter
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

