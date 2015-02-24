package model.domain;

public class HashVideoViewDTO {
	private String email;
	private String path;
	private String year;
	private String month;
	private String day;
	private String comment;
	private String hash;
	
	public HashVideoViewDTO() {}
	public HashVideoViewDTO(String email, String path, String year,
			String month, String day, String comment, String hash) {
		this.email = email;
		this.path = path;
		this.year = year;
		this.month = month;
		this.day = day;
		this.comment = comment;
		this.hash = hash;
	}
	public HashVideoViewDTO(String email, String hash) {
		this.email = email;
		this.hash = hash;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getHash() {
		return hash;
	}
	public void setHash(String hash) {
		this.hash = hash;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("VideoHashViewDTO [email=");
		builder.append(email);
		builder.append(", path=");
		builder.append(path);
		builder.append(", year=");
		builder.append(year);
		builder.append(", month=");
		builder.append(month);
		builder.append(", day=");
		builder.append(day);
		builder.append(", comment=");
		builder.append(comment);
		builder.append(", hash=");
		builder.append(hash);
		builder.append("]");
		return builder.toString();
	}
}
