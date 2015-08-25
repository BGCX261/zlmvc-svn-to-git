package com.note.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import org.hibernate.annotations.GenericGenerator;

/**
 * 实体类 - 基类
 * ============================================================================
 * 版权所有2011-2012 书趣网，并保留所有权利。
 * ----------------------------------------------------------------------------
 * 官方网站：http://www.shuqoo.com
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