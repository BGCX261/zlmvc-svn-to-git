package com.note.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import org.hibernate.annotations.GenericGenerator;

/**
 * ʵ���� - ����
 * ============================================================================
 * ��Ȩ����2011-2012 ��Ȥ��������������Ȩ����
 * ----------------------------------------------------------------------------
 * �ٷ���վ��http://www.shuqoo.com
 * ============================================================================
 */
@MappedSuperclass
public class BaseEntity implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="Id",nullable = false, updatable = false)
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	private static final long serialVersionUID = -6196679688525232584L;
	private String id;
	
	
	

	
	
}