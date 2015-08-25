package com.note.service;

import com.note.model.Member;

public interface MemberService extends  BaseService<Member,String>{
	/**
	 * �����û�����������֤��Ա
	 * 
	 * @param username
	 *            �û���
	 *            
	 * @param password
	 *            ����
	 * 
	 * @return ��֤�Ƿ�ͨ��
	 */
	public boolean verifyMember(String username, String password);
	public Member getMemberByUsername(String username);
}
