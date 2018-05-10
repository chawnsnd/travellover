package comment.model;

import java.util.Date;

import attraction.model.Attraction;
import user.model.User;

public class Comment {
	private int commentId;
	private Attraction attraction;
	private User user;
	private String content;
	private Date modDate;
	private String state;
	
	public Comment(int commentId, Attraction attraction, User user, String content, Date modDate, String state) {
		super();
		this.commentId = commentId;
		this.attraction = attraction;
		this.user = user;
		this.content = content;
		this.modDate = modDate;
		this.state = state;
	}
	
	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commmentId) {
		this.commentId = commmentId;
	}

	public Attraction getAttraction() {
		return attraction;
	}

	public void setAttraction(Attraction attraction) {
		this.attraction = attraction;
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

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", attraction=" + attraction + ", user=" + user + ", content="
				+ content + ", modDate=" + modDate + ", state=" + state + "]";
	}
	public boolean matchPassword(User user){
		return user.equals(this.user);
	}
}
