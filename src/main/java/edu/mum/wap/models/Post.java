package edu.mum.wap.models;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

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

    @Transient
    private User user;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "imageId")
    private Images images;


}
