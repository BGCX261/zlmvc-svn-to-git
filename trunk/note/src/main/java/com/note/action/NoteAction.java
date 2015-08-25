package com.note.action;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.struts2.components.Date;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.note.model.Book;
import com.note.model.Member;
import com.note.model.Note;
import com.note.service.BookService;
import com.note.service.MemberService;
import com.note.service.NoteService;


@Namespace("/")
@ResultPath("/")
@SuppressWarnings("restriction")

public class NoteAction extends BaseAction {
	private static final long serialVersionUID = 4447131127337456515L;
	@Resource
	private BookService bookService;
	private Book book;
	private Member member;
	@Resource
	private MemberService memberService;
	@Resource
	NoteService noteService;
	private Note note;
	private List noteList;
	
	@Action(value = "addNote", results = { @Result(name = "success", 
			location = "showNotes.htm",params={"bookid","${note.book.id}"},type="redirect")})
	public String save(){
		try{
			book=bookService.get(note.getBook().getId());
			note.setBook(book);
			setNoteCreateDate();
			setNoteMember();
			noteService.save(note);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		
		return SUCCESS;
	}
	private void setNoteMember() {
		String memberid=getRequest().getSession().getAttribute
		(Member.LOGIN_MEMBER_ID_SESSION_NAME).toString();
		member=memberService.get(memberid);
		note.setMember(member);
	}
	private void setNoteCreateDate() {
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, 0);
		String today = new SimpleDateFormat("yyyy-MM-dd").format(cal.getTime());
		note.setCreateDate(today);
	}
	@Action(value = "showNotes", results = { 
			@Result(name="success",location = "pages/books/note_list.jsp"),
			@Result(name="mynote",location = "pages/books/my_note.jsp")
	})
	public String noteList(){
		if (getRequest().getParameter("bookid") != null) {
			book = bookService.get(getRequest().getParameter("bookid"));
			return SUCCESS;
		}else{
			noteList=noteService.getNotesByMember(getRequest().getSession().
					getAttribute(Member.LOGIN_MEMBER_ID_SESSION_NAME).toString());
			return "mynote";

		}
		
	}
	
	public Note getNote() {
		return note;
	}
	
	public void setNote(Note note) {
		this.note = note;
	}
	
	public Book getBook() {
		return book;
	}
	
	public void setBook(Book book) {
		this.book = book;
	}
	public List getNoteList() {
		return noteList;
	}
	public void setNoteList(List noteList) {
		this.noteList = noteList;
	}
	


}
