package attraction.model;

import java.util.Date;

public class Attraction {
	private int attractionId;
	private String name;
	private String address;
	private String phone;
	private String content;
	private String category;
	private float scope;
	private int scopeCount;
	private Date regDate;
	
	public Attraction(int attractionId, String name, String address, String phone, String content, String category,
			float scope, int scopeCount, Date regDate) {
		super();
		this.attractionId = attractionId;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.content = content;
		this.category = category;
		this.scope = scope;
		this.scopeCount = scopeCount;
		this.regDate = regDate;
	}
	public Attraction() {
	}
	public int getAttractionId() {
		return attractionId;
	}
	public void setAttractionId(int attractionId) {
		this.attractionId = attractionId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public float getScope() {
		return scope;
	}
	public void setScope(float scope) {
		this.scope = scope;
	}
	public int getScopeCount() {
		return scopeCount;
	}
	public void setScopeCount(int scopeCount) {
		this.scopeCount = scopeCount;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "Attraction [attractionId=" + attractionId + ", name=" + name + ", address=" + address + ", phone="
				+ phone + ", content=" + content + ", category=" + category + ", scope=" + scope + ", scopeCount="
				+ scopeCount + ", regDate=" + regDate + "]";
	}
	
	
	
}
