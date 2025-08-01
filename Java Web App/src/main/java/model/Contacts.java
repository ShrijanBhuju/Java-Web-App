package model;

public class Contacts {
	private String id;
	private String contact;
	private String message;
	private String userId;
	
	public Contacts(String id, String contact, String message) {
		this.id = id;
		this.contact = contact;
		this.message = message;
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
