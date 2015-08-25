package com.note.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.note.dao.NoteDao;
import com.note.model.Note;
import com.note.service.NoteService;

@SuppressWarnings("restriction")
@Service
public class NoteServiceImpl  extends BaseServiceImpl<Note,String> implements NoteService {
	
	@Resource
	private NoteDao noteDao;
	@Resource
	public void setNoteDao(NoteDao noteDao) {
		super.setBaseDao(noteDao);
	}
	public List<Note> getNotesByMember(String memberId) {
		// TODO Auto-generated method stub
		return noteDao.getNotesByMember(memberId);
	}
	

}
