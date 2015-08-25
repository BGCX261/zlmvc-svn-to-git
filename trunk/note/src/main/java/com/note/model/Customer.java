package com.note.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name = "customer", catalog = "demo", uniqueConstraints = {
		@UniqueConstraint(columnNames = "CUSTOMER_ID")
		 })
public class Customer implements java.io.Serializable {
	private static final long serialVersionUID = -7346819802478051841L;
	private Long customerId;
	private String name;
	private String address;
	private Date createdDate;

	public Customer() {
	}

	public Customer(String name, String address, Date createdDate) {
		this.name = name;
		this.address = address;
		this.createdDate = createdDate;
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "CUSTOMER_ID", unique = true, nullable = false)
	public Long getCustomerId() {
		return this.customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}
	@Column(nullable = false, updatable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	@Column(nullable = false, updatable = false)
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	@Column(name="CREATED_DATE",nullable = false, updatable = false)
	public Date getCreatedDate() {
		return this.createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

}
