package edu.guivan.springbooks.dao;

import edu.guivan.springbooks.model.Book;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class BookDao extends GenericDaoImpl<Book, Long> {

    public BookDao() {
        super(Book.class);
    }
}
