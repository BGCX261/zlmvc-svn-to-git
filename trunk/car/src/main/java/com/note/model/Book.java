package com.note.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

@Entity
@Table(name = "book", catalog = "car", uniqueConstraints = { @UniqueConstraint(columnNames = "id") })
public class Book extends BaseEntity {

	private static final long serialVersionUID = -2477727044728244387L;
	private String summary;
	private String author;
	private String title;
	private String isbn;
	private String publisher;
	private String cover;
	private String smallcover;
	private String subtitle;
	private String createtime;
	private int downloadtimes;
	private int checktimes;
	private String tags;
	private List<String> listTags;
	private Set<Note> noteSet;
	private Set<Ebook> ebookSet;
	
	
	@OneToMany(mappedBy = "book",fetch = FetchType.EAGER)
	@Cascade(value = { CascadeType.DELETE })
	public Set<Ebook> getEbookSet() {
		return ebookSet;
	}

	public void setEbookSet(Set<Ebook> ebookSet) {
		this.ebookSet = ebookSet;
	}

	@Column(nullable = true, updatable = false)
	public String getCreatetime() {
		return createtime;
	}
	
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	
	@Transient
	public List<String> getListTags() {
		if(getTags()!=null&&!getTags().equals("")){
			String t=getTags().replaceAll("£¬",",");
			String [] strs=t.split(",");
			listTags=new ArrayList<String>();
			for (int i = 0; i < strs.length; i++) {
				listTags.add(strs[i]);
			}
		}
		return listTags;
	}


	@Column(nullable = true, updatable = false)
	public int getChecktimes() {
		return checktimes;
	}

	public void setChecktimes(int checktimes) {
		this.checktimes = checktimes;
	}

	@Transient
	public String getSmallcover() {
		return smallcover;
	}

	@Column(nullable = true, updatable = false)
	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	@Column(nullable = true, updatable = false)
	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}


	@Column(name="downloadTimes",nullable = true, updatable = false)
	public int getDownloadtimes() {
		return downloadtimes;
	}

	public void setDownloadtimes(int downloadtimes) {
		this.downloadtimes = downloadtimes;
	}

	
	@Column(nullable = true, updatable = false)
	public String getTags() {
		return tags;
	}

	public void setTags(String tags) {
		this.tags = tags;
	}

	@OneToMany(mappedBy = "book",fetch = FetchType.EAGER)
	@Cascade(value = { CascadeType.DELETE })
	public Set<Note> getNoteSet() {
		return noteSet;
	}

	public void setNoteSet(Set<Note> noteSet) {
		this.noteSet = noteSet;
	}

	@Column(nullable = true, updatable = false)
	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	@Column(nullable = true, updatable = false)
	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	@Column(nullable = true, updatable = false)
	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	@Column(nullable = true, updatable = false)
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(nullable = true, updatable = false)
	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

}
