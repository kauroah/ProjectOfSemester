package semestrovka.models;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@EqualsAndHashCode
public class FileInfo {
    private Long id;
    private String originalFilename;
    private String storageFilename;
 //   private Double size;
    private Long size;
    private String type;
}
