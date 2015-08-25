package com.note.service.impl;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.note.dao.BookDao;
import com.note.model.Book;
import com.note.service.BookService;

@SuppressWarnings("restriction")
@Service
public class BookServiceImpl extends BaseServiceImpl<Book,String> implements BookService {
	@Resource
	private BookDao bookDao;
	
	@Resource
	public void setBaseDao(BookDao bookDao) {
		super.setBaseDao(bookDao);
	}
	
	public Book getBookByISBN(String isbn) {
		return bookDao.getBookByISBN(isbn);
	}
}
