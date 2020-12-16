package com.probal.demo.restfulapp.exception;

/**
 *
 * @author Probal Nandy
 *
 */
public class BookNotFoundException extends RuntimeException {

    public BookNotFoundException(String isbn) {
        super("could not find book with ISBN: '" + isbn + "'");
    }
}
