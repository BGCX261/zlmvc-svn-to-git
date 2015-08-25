package com.note.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.note.model.Book;
import com.note.service.BookService;

@SuppressWarnings("restriction")
@Namespace("/")
@ResultPath("/")

public class BookInforAction extends FileUploadAction{

	@Resource
	private BookService bookService;
	/*@Resource
	private NoteService noteService;
	@Resource
	private EbookService ebookService;*/
	
	private Book book;
	private static final long serialVersionUID = 5703364792032496640L;

	@Override
	public String execute() throws Exception {
		
		return SUCCESS;
	}
	
	@Action(value = "bookInfor", results = { @Result(name = "bookinfor", location = "pages/books/book_infor.jsp") })
	public String bookInfor() {
		if (getRequest().getParameter("bookid") != null) {
			book = bookService.get(getRequest().getParameter("bookid"));
		}
		return "bookinfor";
	}
	
	@Action(value = "toAddNote", results = { @Result(location = "pages/books/add_note.jsp") })
	public String toAddNote(){
		if (getRequest().getParameter("bookid") != null) {
			book = bookService.get(getRequest().getParameter("bookid"));
		}
		return SUCCESS;
	}
	
	@Action(value = "toAddEbook", results = { @Result(location = "pages/books/add_ebook.jsp") })
	public String toAddEbook(){
		if (getRequest().getParameter("bookid") != null) {
			book = bookService.get(getRequest().getParameter("bookid"));
		}
		return SUCCESS;
	}
	
	@Action(value = "saveBook", results = { @Result(name = "success", location = "pages/books/book_infor.jsp"),
			@Result(name = "input", location = "pages/books/add_book.jsp") })
	public String save(){
		try {
			book.setCover(uploadFiles());
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("请上传图片？图片是否过大？");
			return INPUT;
		}
		bookService.save(book);
		addActionError("添加成功！");
		return SUCCESS;
	}
	
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

}
