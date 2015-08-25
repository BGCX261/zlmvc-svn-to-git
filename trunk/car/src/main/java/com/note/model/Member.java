package com.note.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.springframework.security.GrantedAuthority;

@Entity
@Table(name = "member", catalog = "car", uniqueConstraints = { @UniqueConstraint(columnNames = "id") })
public class Member extends BaseEntity {
	private static final long serialVersionUID = 3305082181298459817L;
	
	public static final String LOGIN_MEMBER_ID_SESSION_NAME = "loginMemberId";// 保存登录会员ID的Session名称
	public static final String LOGIN_MEMBER_USERNAME_COOKIE_NAME = "loginMemberUsername";// 保存登录会员用户名的Cookie名称
	public static final String LOGIN_REDIRECTION_URL_SESSION_NAME = "redirectionUrl";// 保存登录来源URL的Session名称
	public static final String PASSWORD_RECOVER_KEY_SEPARATOR = "_";// 密码找回Key分隔符
	public static final int PASSWORD_RECOVER_KEY_PERIOD = 10080;// 密码找回Key有效时间（单位：分钟）
	private Date createDate;
	private Date modifyDate;
	private String email;
	private int isAccountEnabled;
	private int isAccountLocked;
	private Date lockedDate;
	private Date loginDate;
	private int loginFailureCount;
	private String loginIp="";
	private String password;
	private int point;
	private String registerIp="";
	private double deposit;
	private String userName;
	private String passwordConfirmation;
	private int rememberMe;
	//private Set<Role> roleSet;// 管理角色
	private GrantedAuthority[] authorities;// 角色信息
	
	
	
	@Transient
	public GrantedAuthority[] getAuthorities() {
		return authorities;
	}
	public void setAuthorities(GrantedAuthority[] authorities) {
		this.authorities = authorities;
	}
	@Transient
	public String getPasswordConfirmation() {
		return passwordConfirmation;
	}
	public void setPasswordConfirmation(String passwordConfirmation) {
		this.passwordConfirmation = passwordConfirmation;
	}
	@Column(nullable = true, updatable = false)
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Transient
	public int getRememberMe() {
		return rememberMe;
	}
	public void setRememberMe(int rememberMe) {
		this.rememberMe = rememberMe;
	}
	@Column(nullable = true, updatable = false)
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	@Column(nullable = true, updatable = false)
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	@Column(nullable = true, updatable = false)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Column(nullable = true, updatable = false)
	public int getIsAccountEnabled() {
		return isAccountEnabled;
	}
	public void setIsAccountEnabled(int isAccountEnabled) {
		this.isAccountEnabled = isAccountEnabled;
	}
	@Column(nullable = true, updatable = false)
	public int getIsAccountLocked() {
		return isAccountLocked;
	}
	public void setIsAccountLocked(int isAccountLocked) {
		this.isAccountLocked = isAccountLocked;
	}
	@Column(nullable = true, updatable = false)
	public Date getLockedDate() {
		return lockedDate;
	}
	public void setLockedDate(Date lockedDate) {
		this.lockedDate = lockedDate;
	}
	@Column(nullable = true, updatable = false)
	public Date getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(Date loginDate) {
		this.loginDate = loginDate;
	}
	@Column(nullable = true, updatable = false)
	public int getLoginFailureCount() {
		return loginFailureCount;
	}
	public void setLoginFailureCount(int loginFailureCount) {
		this.loginFailureCount = loginFailureCount;
	}
	@Column(nullable = true, updatable = false)
	public String getLoginIp() {
		return loginIp;
	}
	public void setLoginIp(String loginIp) {
		this.loginIp = loginIp;
	}
	@Column(nullable = true, updatable = false)
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Column(nullable = true, updatable = false)
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	@Column(nullable = true, updatable = false)
	public String getRegisterIp() {
		return registerIp;
	}
	public void setRegisterIp(String registerIp) {
		this.registerIp = registerIp;
	}
	@Column(nullable = true, updatable = false)
	public double getDeposit() {
		return deposit;
	}
	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}
}
