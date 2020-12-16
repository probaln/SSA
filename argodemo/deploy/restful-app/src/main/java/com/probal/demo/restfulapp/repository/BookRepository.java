package com.probal.demo.restfulapp.repository;

import com.probal.demo.restfulapp.domain.Book;
import org.springframework.data.repository.PagingAndSortingRepository;

import java.util.Optional;

/**
 *
 * @author Probal Nandy
 *
 */
public interface BookRepository extends PagingAndSortingRepository<Book, Long> {
    Optional<Book> findByIsbn(String isbn);
}
