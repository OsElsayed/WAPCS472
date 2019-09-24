package edu.mum.wap.models;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Entity
@NoArgsConstructor
@Data
public class Post {

    @javax.persistence.Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @Column
    private String description;

    @Column
    private boolean isActive;

    @Temporal(TemporalType.DATE)
    private Date creationDate;

    @Column
    private boolean isVisible;

    private long userId;

}
