package com.note.service;

import com.note.model.Member;

public interface MemberService extends  BaseService<Member,String>{
	/**
	 * 根据用户名、密码验证会员
	 * 
	 * @param username
	 *            用户名
	 *            
	 * @param password
	 *            密码
	 * 
	 * @return 验证是否通过
	 */
	public boolean verifyMember(String username, String password);
	public Member getMemberByUsername(String username);
}
