package com.note.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.note.dao.NoteDao;
import com.note.model.Note;

@Repository
public class NoteDaoImpl extends BaseDaoImpl<Note,String> implements NoteDao{

	@SuppressWarnings("unchecked")
	public List<Note> getNotesByMember(String memberId) {
		String hql = "from Note notes where lower(notes.member.id) = ?";
		return getSession().createQuery(hql).setParameter(0, memberId).list();
	}
	
}
