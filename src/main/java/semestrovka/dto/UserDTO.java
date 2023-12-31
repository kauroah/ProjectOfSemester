package semestrovka.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserDTO {
    private String firstName;
    private String lastName;
    private Integer age;
    private String email;
    private boolean isAdmin;
}
