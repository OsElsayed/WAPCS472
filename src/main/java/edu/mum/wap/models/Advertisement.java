package edu.mum.wap.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@NoArgsConstructor
@Data
public class Advertisement {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long Id;

    @Column
    private String adURL;

    @Temporal(TemporalType.DATE)
    private Date showingStartDate;

    @Temporal(TemporalType.DATE)
    private Date showingEndDate;

    @OneToMany
    @JoinTable(name = "AdvImages")
    private List<Images> imagesList;

}
