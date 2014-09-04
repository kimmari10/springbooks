package edu.guivan.springbooks.model;

import javax.persistence.*;

@Entity
@Table(name="book")
public class Book {

    private long id;
    private String origTitle;
    private Author author;
    private Short releaseYear;
    private Byte userRate;
    private String description;

    @Id
    @Column(name="id_book")
    @GeneratedValue(strategy= GenerationType.AUTO)
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getOrigTitle() {
        return origTitle;
    }

    public void setOrigTitle(String origTitle) {
        this.origTitle = origTitle;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "author_id", nullable = false)
    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public Short getReleaseYear() {
        return releaseYear;
    }

    public void setReleaseYear(Short releaseYear) {
        this.releaseYear = releaseYear;
    }

    public Byte getUserRate() {
        return userRate;
    }

    public void setUserRate(Byte userRate) {
        this.userRate = userRate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
