package com.note.action;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.note.model.Book;
import com.note.service.BookService;

@Namespace("/")
@ResultPath("/")
@Action(value="index", results={  
        @Result(name="success",location="index.jsp"),
        @Result(name="input",location="index.jsp"),
        @Result(name="toAddBook",location="pages/books/add_book.jsp")
    })  
 @SuppressWarnings("restriction")
public class ReadAction extends BaseAction {
	private static final long serialVersionUID = -317000674270075329L;
	private List<Book> booklist = new ArrayList<Book>();
	private String keyWord;
	@Resource
	private BookService bookService;
	public String execute() throws Exception {
		booklist=bookService.getAll();
		return SUCCESS;
	}
	
	public String find() {
		try {

			if(booklist.size()==0){
				addActionError("没有查询到你要找的图书！");
			}

		} catch (Exception ex) {
			addActionError("查询出错!");
			ex.printStackTrace();
		}
		return INPUT;
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
	public String getKeyWord() {
		return keyWord;
	}

	public void setKeyWord(String keyWord) {
		this.keyWord = keyWord;
	}
}
