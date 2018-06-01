package comment.model;

public class ResultComment {
	private int commentId;
	private int attractionId;
	private String nickname;
	private String content;
	private String modDate;
	public int getCommentId() {
		return commentId;
	}
	public void setCommentId(int contentId) {
		this.commentId = contentId;
	}
	public int getAttractionId() {
		return attractionId;
	}
	public void setAttractionId(int attractionId) {
		this.attractionId = attractionId;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String userNickname) {
		this.nickname = userNickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	@Override
	public String toString() {
		return "ResultComment [commentId=" + commentId + ", attractionId=" + attractionId + ", nickname="
				+ nickname + ", content=" + content + ", modDate=" + modDate + "]";
	}

}
