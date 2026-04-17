package com.library.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.library.entity.Books;
import com.library.repository.BookRepository;


@Transactional
@Service
public class BookService {
	
	    @Autowired
	    private BookRepository repo;

	    public Boolean addbook(Books book) {

	        
	        if (repo.existsByBknameAndBkauthor(book.getBkname(), book.getBkauthor())) {
	            return false;
	        }

	        repo.save(book);
	        return true;


}

		public List<Books> allbooks() {
			return repo.findAll();
		}
		
		public void savebook(Books book) {
			repo.save(book);
		}
}
