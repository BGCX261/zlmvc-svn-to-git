package com.note.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.InterceptorRefs;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.note.model.Book;


@ParentPackage("default")
@InterceptorRefs({
	@InterceptorRef(value = "memberStack")
})
public class IndexAction extends BaseAction {

	private static final long serialVersionUID = 509165955793077939L;

	private List<Book> booklist = new ArrayList<Book>();

	public String execute() throws Exception {
	
		return "index";
	}
	
	public String toAddBook(){
		return "toAddBook";
	}
	
	public List<Book> getBooklist() {
		return booklist;
	}

	public void setBooklist(List<Book> booklist) {
		this.booklist = booklist;
	}
}
