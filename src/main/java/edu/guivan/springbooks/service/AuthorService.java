package edu.guivan.springbooks.service;

import edu.guivan.springbooks.dao.AuthorDao;
import edu.guivan.springbooks.dao.GenericDao;
import edu.guivan.springbooks.model.Author;
import org.hibernate.Hibernate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class AuthorService {

    @Autowired
    @Qualifier("authorDao")
    private GenericDao<Author,Long> dao;

    @Transactional
    public Author getAuthorById(Long id){
        Author author = dao.read(id);
        Hibernate.initialize(author.getBooks());
        return author;
    }

}
