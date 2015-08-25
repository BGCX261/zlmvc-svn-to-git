package com.note.dao;

import java.util.List;

import com.note.model.Note;

public interface NoteDao  extends BaseDao<Note,String>{
	List<Note> getNotesByMember(String memberId);
}
