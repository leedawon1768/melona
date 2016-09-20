package com.melona.model;

public class Members {

	private int member_no;
	private String id;
	private String password;
	private String name;
	private String email;
	private String contact;
	private String images;
	private String gender;
	private String birth;
	
	public Members() {}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	@Override
	public String toString() {
		return "Members [member_no=" + member_no + ", id=" + id + ", password=" + password + ", name=" + name
				+ ", email=" + email + ", contact=" + contact + ", images=" + images + ", gender=" + gender + ", birth="
				+ birth + "]";
	}
	
	
}
