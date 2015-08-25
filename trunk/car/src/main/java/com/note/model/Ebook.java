package com.note.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "ebook", catalog = "car", uniqueConstraints = { @UniqueConstraint(columnNames = "id") })
public class Ebook extends BaseEntity {

	private static final long serialVersionUID = 555930648021660242L;
	
	private String ebookurl;
	private String title;
	private Book book;
	
	@Column(nullable = false, updatable = false)
	public String getEbookurl() {
		return ebookurl;
	}
	public void setEbookurl(String ebookurl) {
		this.ebookurl = ebookurl;
	}
	@Column(nullable = false, updatable = false)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "bookid", insertable = true, updatable = true, nullable = false)
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	
	
}
