package com.note.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "role", catalog = "car", uniqueConstraints = { @UniqueConstraint(columnNames = "id") })
public class Role extends BaseEntity {
	private static final long serialVersionUID = 838996643058679110L;
	
	private String description;
	private String name;
	private String value;
	
	@Column(nullable = true, updatable = false)
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Column(nullable = false, updatable = false)
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(nullable = false, updatable = false)
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
}
