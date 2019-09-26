package edu.mum.wap.models;

import lombok.Data;
import lombok.NoArgsConstructor;

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
    @Transient
    private boolean isFollowing;
    @OneToOne
    private Images image;
    @ManyToMany(fetch = FetchType.EAGER,cascade = CascadeType.ALL)
    @JoinTable(name = "followersList")
//    @JoinTable(name = "followersList",
//            joinColumns = {@JoinColumn(name = "userId")},
//            uniqueConstraints = {@UniqueConstraint(columnNames = "userId"),@UniqueConstraint(columnNames = "followersId")},
//            inverseJoinColumns = {@JoinColumn(name = "followersId")})
    private List<User> followersList;
    @Override
    public boolean equals(Object ob){
        User u = (User)ob;
        if(u == null)return false;
        return u.getId() == this.getId();
    }
}
