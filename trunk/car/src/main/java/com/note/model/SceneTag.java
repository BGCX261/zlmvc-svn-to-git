package com.note.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "scene_tags",uniqueConstraints = { @UniqueConstraint(columnNames = "id") })
public class SceneTag extends BaseEntity {

	private String name;
	
	@Column(nullable = false, updatable = false)
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
}
