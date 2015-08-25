package com.note.action;

import java.net.URLEncoder;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;

import org.apache.commons.codec.digest.DigestUtils;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.note.model.Member;
import com.note.service.MemberService;


@Namespace("/")
@ResultPath(value = "/")


@Action(value="member", results={  
        @Result(name="save",location="pages/books/read_index.jsp"),
        @Result(name="login",location="pages/books/read_index.jsp"),
        @Result(name="toLogin",location="pages/member/login.jsp"),
        @Result(name="toRegister",location="pages/member/register.jsp")
        
    }) 
    
 @ParentPackage("default")   
public class MemberAction extends BaseAction {
	private static final long serialVersionUID = 4447131127337456515L;
	
	@Resource
	MemberService memberService;
	
	//���Ų����ã�������ʹ�ò�����
	/*public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}*/
	
	private Member member;
	
	public String toLogin(){
		return "toLogin";
	}
	
	public String toRegister(){
		return "toRegister";
	}
	

	public String login() throws Exception{
		if(!memberService.verifyMember(member.getUserName(), member.getPassword())){
			addActionError("�û������������");
			return "toLogin";
		}else{
			member=memberService.getMemberByUsername(member.getUserName());
			setSession(Member.LOGIN_MEMBER_ID_SESSION_NAME, member.getId());
			setSession(Member.LOGIN_MEMBER_USERNAME_COOKIE_NAME,member.getUserName());
			// д���Ա��¼Cookie
			Cookie loginMemberUsernameCookie = new Cookie(Member.LOGIN_MEMBER_USERNAME_COOKIE_NAME, URLEncoder.encode(member.getUserName().toLowerCase(), "UTF-8"));
			loginMemberUsernameCookie.setPath(getRequest().getContextPath() + "/");
			getResponse().addCookie(loginMemberUsernameCookie);
			addActionError("��¼�ɹ���");
			return "login";
		}
		
	}
	
	public String save(){
		try{
			member.setPassword(DigestUtils.md5Hex(member.getPassword()));
			memberService.save(member);
			addActionError("ע��ɹ���");
			return "save";
		}catch(Exception ex){
			ex.printStackTrace();
			addActionError("ע��ʧ�ܣ�");
			return "toRegister";
		}
		
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
	

}
