package edu.guivan.springbooks.service;

import edu.guivan.springbooks.dao.BookDao;
import edu.guivan.springbooks.dao.GenericDao;
import edu.guivan.springbooks.model.Book;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BookService {

    @Autowired @Qualifier("bookDao")
    private GenericDao<Book, Long> dao;


    public List<Book> getLatestBooks(){
        //TODO: возвращать какие-то модные книги для главной
        return dao.get();
    }

    @Transactional
    public Book getBook(Long id){
        Book book = dao.read(id);
        Hibernate.initialize(book.getAuthor());
        return book;
    }

}
