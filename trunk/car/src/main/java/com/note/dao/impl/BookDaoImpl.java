package com.note.dao.impl;

import org.springframework.stereotype.Repository;

import com.note.dao.BookDao;
import com.note.model.Book;

@Repository
public class BookDaoImpl extends BaseDaoImpl<Book,String> implements BookDao{

	public Book getBookByISBN(String isbn) {
		String hql="from Book as b where b.isbn=?";
		Book book=(Book)getSession().createQuery(hql).setParameter(0, isbn).uniqueResult();
		return book;
	}


}
