package com.note.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

/**
 * Scence
 * @author zhulin
 *
 */
@Entity
@Table(name = "scene",uniqueConstraints = { @UniqueConstraint(columnNames = "id") })

public class Scene extends BaseEntity{
	private String name;
	private String instruction;
	private Set<SceneTag> sceneTagSet;
	private String imagePath;
	private Member createMember;
	private String createDate;
	private String province;
	private String city;
	private String district;
	
	@Column(nullable = false, updatable = false)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column(nullable = false, updatable = false)
	public String getInstruction() {
		return instruction;
	}
	public void setInstruction(String instruction) {
		this.instruction = instruction;
	}
	
	@Transient
	public Set<SceneTag> getScenceTagSet() {
		return sceneTagSet;
	}
	public void setScenceTagSet(Set<SceneTag> scenceTagSet) {
		this.sceneTagSet = scenceTagSet;
	}
	
	@Column(nullable = false, updatable = false)
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "createMember", insertable = true, updatable = false, nullable = true)
	public Member getCreateMember() {
		return createMember;
	}
	public void setCreateMember(Member createMember) {
		this.createMember = createMember;
	}
	
	@Column(nullable = false, updatable = false)
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	@Column(nullable = true, updatable = false)
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	
	@Column(nullable = true, updatable = false)
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	@Column(nullable = true, updatable = false)
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	
	
	
}
