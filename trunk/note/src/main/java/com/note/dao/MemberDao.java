package com.note.dao;

import com.note.model.Member;

public interface MemberDao  extends BaseDao<Member,String>{
	public Member getMemberByUsername(String username);
}
