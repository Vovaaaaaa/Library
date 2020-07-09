package com.spring.shop.model;

import com.spring.shop.model.enums.Theme;
import lombok.Data;

import javax.persistence.*;

@Entity
@Table
@Data
public class Citation {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "book_name")
    private String bookName;

    @Column
    @Enumerated(EnumType.STRING)
    private Theme theme;

    @Column
    private String text;

    public Citation(){
    }

}
