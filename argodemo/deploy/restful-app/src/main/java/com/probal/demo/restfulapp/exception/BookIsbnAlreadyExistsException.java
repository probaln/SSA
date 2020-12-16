package com.probal.demo.restfulapp.exception;

/**
 *
 * @author Probal Nandy
 *
 */
public class BookIsbnAlreadyExistsException extends RuntimeException {

    public BookIsbnAlreadyExistsException(String isbn) {
        super("book already exists for ISBN: '" + isbn + "'");
    }
}
