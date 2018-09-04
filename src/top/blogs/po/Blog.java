package top.blogs.po;

import java.util.List;

public class Blog {
	private int id;
	private String title;
	private String secondTitle;
	private String text;
	private String type;
	private String date;
	private String showPhoto;
	private List<Comment> comment;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSecondTitle() {
		return secondTitle;
	}

	public void setSecondTitle(String secondTitle) {
		this.secondTitle = secondTitle;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getShowPhoto() {
		return showPhoto;
	}

	public void setShowPhoto(String showPhoto) {
		this.showPhoto = showPhoto;
	}

	public List<Comment> getComment() {
		return comment;
	}

	public void setComment(List<Comment> comment) {
		this.comment = comment;
	}

	public Blog() {
	}

	public Blog(int id, String title, String secondTitle, String text, String type, String date, String showPhoto,
			List<Comment> comment) {
		this.id = id;
		this.title = title;
		this.secondTitle = secondTitle;
		this.text = text;
		this.type = type;
		this.date = date;
		this.showPhoto = showPhoto;
		this.comment = comment;
	}

	public String toString() {
		return "Blog [id=" + id + ", title=" + title + ", secondTitle=" + secondTitle + ", text=" + text + ", type="
				+ type + ", date=" + date + ", showPhoto=" + showPhoto + ", comment=" + comment + "]";
	}

}
