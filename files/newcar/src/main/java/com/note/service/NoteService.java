package com.note.service;

import java.util.List;

import com.note.model.Note;

public interface NoteService extends  BaseService<Note,String>{
	List<Note> getNotesByMember(String memberId);
}
