package edu.mum.wap.models;

import lombok.Data;
import lombok.NoArgsConstructor;
import net.bytebuddy.dynamic.loading.InjectionClassLoader;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@NoArgsConstructor
@Data
public class User {

    @javax.persistence.Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;
    @Column
    private String username;
    @Column
    private String password;
    @Column
    private String email;
    @Column
    private boolean isAdmin;
    @Column
    private boolean isActive;
    @Column
    private String geoLocation;
    @Temporal(TemporalType.DATE)
    private Date creationDate;
    @Temporal(TemporalType.DATE)
    private Date modifiedDate;
    @OneToOne
    private Images image;
    @OneToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "followersList")
    private List<User> followersList;
}
