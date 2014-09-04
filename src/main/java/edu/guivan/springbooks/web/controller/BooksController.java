package edu.guivan.springbooks.web.controller;

import edu.guivan.springbooks.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BooksController {

    @Autowired
    private BookService service;

    @RequestMapping (value = {"/*", "/books"},method = RequestMethod.GET)
    public String showMainPage(Model model){
        model.addAttribute("books",service.getLatestBooks());
        return "books";
    }

    @RequestMapping (value = {"/book/{id}"}, method = RequestMethod.GET)
    public String showBook(@PathVariable long id, Model model){
        model.addAttribute("book",service.getBook(id));
        return "book";
    }

}
