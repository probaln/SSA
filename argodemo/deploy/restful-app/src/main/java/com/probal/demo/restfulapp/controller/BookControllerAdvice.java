package com.probal.demo.restfulapp.controller;

import com.probal.demo.restfulapp.exception.BookIsbnAlreadyExistsException;
import com.probal.demo.restfulapp.exception.BookNotFoundException;
//import org.springframework.hateoas.VndErrors;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@ControllerAdvice
//@RequestMapping(produces = "application/vnd.error")
@RequestMapping()
public class BookControllerAdvice {

//    @ResponseBody
//    @ExceptionHandler(BookNotFoundException.class)
//    @ResponseStatus(HttpStatus.NOT_FOUND)
//    VndErrors bookNotFoundExceptionHandler(BookNotFoundException ex) {
//        return new VndErrors("error", ex.getMessage());
//    }

//    @ResponseBody
//    @ExceptionHandler(BookIsbnAlreadyExistsException.class)
//    @ResponseStatus(HttpStatus.CONFLICT)
//    VndErrors bookIsbnAlreadyExistsExceptionHandler(BookIsbnAlreadyExistsException ex) {
//        return new VndErrors("error", ex.getMessage());
//    }
}
