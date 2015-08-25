package com.note.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "note", catalog = "car", uniqueConstraints = { @UniqueConstraint(columnNames = "id") })
public class Note extends BaseEntity {

	private static final long serialVersionUID = -6172877068718317005L;
	
	private String title;
	private String content;
	private String createDate;
	private String isVisible;
	private int page;
	private String chapter;
	private Book book;
    private Member member;

    
    @ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "memberid", insertable = true, updatable = false, nullable = false)
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "bookid", insertable = true, updatable = false, nullable = false)
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	@Column(nullable = true, updatable = false)
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	@Column(nullable = true, updatable = false)
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	@Column(name="createDate",nullable = true, updatable = false)
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	@Column(nullable = true, updatable = false)
	public String getIsVisible() {
		return isVisible;
	}
	public void setIsVisible(String isVisible) {
		this.isVisible = isVisible;
	}
	@Column(nullable = true, updatable = false)
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	@Column(nullable = true, updatable = false)
	public String getChapter() {
		return chapter;
	}
	public void setChapter(String chapter) {
		this.chapter = chapter;
	}
	
}
