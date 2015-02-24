package model.domain;

public class VideoDTO {
	private int vKey;
	private String vName;
	private int vSize;
	private String vPath;
	private String vYear;
	private String vMonth;
	private String vDay;
	private String vComment;
	private String email;
	
	public VideoDTO() {}
	public VideoDTO(int vKey, String vName, int vSize, String vPath,
			String vYear, String vMonth, String vDay, String vComment,
			String email) {
		this.vKey = vKey;
		this.vName = vName;
		this.vSize = vSize;
		this.vPath = vPath;
		this.vYear = vYear;
		this.vMonth = vMonth;
		this.vDay = vDay;
		this.vComment = vComment;
		this.email = email;
	}
	public VideoDTO(String vName, int vSize, String vPath, String vYear,
			String vMonth, String vDay, String vComment, String email) {
		this.vName = vName;
		this.vSize = vSize;
		this.vPath = vPath;
		this.vYear = vYear;
		this.vMonth = vMonth;
		this.vDay = vDay;
		this.vComment = vComment;
		this.email = email;
	}
	public VideoDTO(String vYear, String vMonth) {
		this.vYear = vYear;
		this.vMonth = vMonth;
	}
	
	public int getvKey() {
		return vKey;
	}
	public void setvKey(int vKey) {
		this.vKey = vKey;
	}
	public String getvName() {
		return vName;
	}
	public void setvName(String vName) {
		this.vName = vName;
	}
	public int getvSize() {
		return vSize;
	}
	public void setvSize(int vSize) {
		this.vSize = vSize;
	}
	public String getvPath() {
		return vPath;
	}
	public void setvPath(String vPath) {
		this.vPath = vPath;
	}
	public String getvYear() {
		return vYear;
	}
	public void setvYear(String vYear) {
		this.vYear = vYear;
	}
	public String getvMonth() {
		return vMonth;
	}
	public void setvMonth(String vMonth) {
		this.vMonth = vMonth;
	}
	public String getvDay() {
		return vDay;
	}
	public void setvDay(String vDay) {
		this.vDay = vDay;
	}
	public String getvComment() {
		return vComment;
	}
	public void setvComment(String vComment) {
		this.vComment = vComment;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("VideoDTO [vKey=");
		builder.append(vKey);
		builder.append(", vName=");
		builder.append(vName);
		builder.append(", vSize=");
		builder.append(vSize);
		builder.append(", vPath=");
		builder.append(vPath);
		builder.append(", vYear=");
		builder.append(vYear);
		builder.append(", vMonth=");
		builder.append(vMonth);
		builder.append(", vDay=");
		builder.append(vDay);
		builder.append(", vComment=");
		builder.append(vComment);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}
}
