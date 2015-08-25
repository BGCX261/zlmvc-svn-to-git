package com.note.service.impl;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.dao.DataAccessException;
import org.springframework.security.userdetails.UserDetails;
import org.springframework.security.userdetails.UserDetailsService;
import org.springframework.security.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.note.dao.MemberDao;
import com.note.model.Member;
import com.note.service.MemberService;

@SuppressWarnings("restriction")
@Service
public class MemberServiceImpl  extends BaseServiceImpl<Member,String> implements MemberService,UserDetailsService {
	

	@Resource
	private MemberDao memberDao;
	@Resource
	public void setMemberDao(MemberDao memberDao) {
		super.setBaseDao(memberDao);
	}
	
	public boolean verifyMember(String username, String password) {
		Member member = getMemberByUsername(username);
		if (member != null && member.getPassword().equals(DigestUtils.md5Hex(password))) {
			return true;
		} else {
			return false;
		}
	}
	public Member getMemberByUsername(String username) {
		return memberDao.getMemberByUsername(username);
	}

	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException, DataAccessException {
		Member member = getMemberByUsername(username);
		if(member==null){
			throw new UsernameNotFoundException("用户[" + username + "]不存在!");
		}
		
		return null;
	}
	
	// 获得用户角色数组
/*	public GrantedAuthority[] getGrantedAuthorities(Member member) {
		Set<GrantedAuthority> grantedAuthorities = new HashSet<GrantedAuthority>();
		for (Role role : member.getRoleSet()) {
			grantedAuthorities.add(new GrantedAuthorityImpl(role.getValue()));
		}
		return grantedAuthorities.toArray(new GrantedAuthority[grantedAuthorities.size()]);
	}*/
	

}
