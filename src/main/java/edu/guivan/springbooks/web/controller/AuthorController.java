package edu.guivan.springbooks.web.controller;

import edu.guivan.springbooks.service.AuthorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AuthorController {

    @Autowired
    private AuthorService service;

    @RequestMapping(value = {"/author/{id}"}, method = RequestMethod.GET)
    public String showBook(@PathVariable long id, Model model){
        model.addAttribute("author",service.getAuthorById(id));
        return "author";
    }


}
