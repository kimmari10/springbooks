package edu.guivan.springbooks.dao;

import edu.guivan.springbooks.model.Author;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class AuthorDao extends GenericDaoImpl<Author,Long>{

    public AuthorDao() {
        super(Author.class);
    }

}
