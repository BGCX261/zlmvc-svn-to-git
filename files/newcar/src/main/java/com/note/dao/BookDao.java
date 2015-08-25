package com.note.dao;

import com.note.model.Book;

public interface BookDao extends BaseDao<Book,String> {
	Book getBookByISBN(String isbn);

}
