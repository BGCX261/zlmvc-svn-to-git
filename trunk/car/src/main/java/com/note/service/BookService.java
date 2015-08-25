package com.note.service;

import com.note.model.Book;

public interface BookService  extends  BaseService<Book,String>{
	Book getBookByISBN(String ISBN);
}
