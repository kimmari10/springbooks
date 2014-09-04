package edu.guivan.springbooks.model;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name = "author")
public class Author {

    private long id;
    private String name;
    private Set<Book> books;

    @Id
    @Column(name="id_author")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "author")
    public Set<Book> getBooks() {
        return books;
    }

    public void setBooks(Set<Book> books) {
        this.books = books;
    }
}
