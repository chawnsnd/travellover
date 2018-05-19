package comment.model;

import java.util.Date;

import user.model.User;

public class Reply {
	private int commmentId;
	private Comment comment;
	private User user;
	private String content;
	private Date modDate;
	private String state;
	
	public Reply(int commmentId, Comment comment, User user, String content, Date modDate, String state) {
		super();
		this.commmentId = commmentId;
		this.comment = comment;
		this.user = user;
		this.content = content;
		this.modDate = modDate;
		this.state = state;
	}
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getCommmentId() {
		return commmentId;
	}
	public void setCommmentId(int commmentId) {
		this.commmentId = commmentId;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getModDate() {
		return modDate;
	}
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}

	@Override
	public String toString() {
		return "Reply [commmentId=" + commmentId + ", comment=" + comment + ", user=" + user + ", content=" + content
				+ ", modDate=" + modDate + ", state=" + state + "]";
	}
	public boolean matchPassword(User user){
		return user.equals(this.user);
	}
	
}
