package model.domain;

public class PhotoDTO {
	private int pKey;
	private String pName;
	private int pSize;
	private String pPath;
	private String pYear;
	private String pMonth;
	private String pDay;
	private String pComment;
	private String email;
	
	public PhotoDTO() {}
	public PhotoDTO(int pKey, String pName, int pSize, String pPath,
			String pYear, String pMonth, String pDay, String pComment,
			String email) {
		this.pKey = pKey;
		this.pName = pName;
		this.pSize = pSize;
		this.pPath = pPath;
		this.pYear = pYear;
		this.pMonth = pMonth;
		this.pDay = pDay;
		this.pComment = pComment;
		this.email = email;
	}
	public PhotoDTO(String pName, int pSize, String pPath, String pYear,	String pMonth, String pDay, String pComment, String email) {
		this.pName = pName;
		this.pSize = pSize;
		this.pPath = pPath;
		this.pYear = pYear;
		this.pMonth = pMonth;
		this.pDay = pDay;
		this.pComment = pComment;
		this.email = email;
	}

	public PhotoDTO(String year, String month) {
		this.pYear = year;
		this.pMonth = month;
	}
	public int getpKey() {
		return pKey;
	}
	public void setpKey(int pKey) {
		this.pKey = pKey;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpSize() {
		return pSize;
	}
	public void setpSize(int pSize) {
		this.pSize = pSize;
	}
	public String getpPath() {
		return pPath;
	}
	public void setpPath(String pPath) {
		this.pPath = pPath;
	}
	public String getpYear() {
		return pYear;
	}
	public void setpYear(String pYear) {
		this.pYear = pYear;
	}
	public String getpMonth() {
		return pMonth;
	}
	public void setpMonth(String pMonth) {
		this.pMonth = pMonth;
	}
	public String getpDay() {
		return pDay;
	}
	public void setpDay(String pDay) {
		this.pDay = pDay;
	}
	public String getpComment() {
		return pComment;
	}
	public void setpComment(String pComment) {
		this.pComment = pComment;
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
		builder.append("PhotoDTO [pKey=");
		builder.append(pKey);
		builder.append(", pName=");
		builder.append(pName);
		builder.append(", pSize=");
		builder.append(pSize);
		builder.append(", pPath=");
		builder.append(pPath);
		builder.append(", pYear=");
		builder.append(pYear);
		builder.append(", pMonth=");
		builder.append(pMonth);
		builder.append(", pDay=");
		builder.append(pDay);
		builder.append(", pComment=");
		builder.append(pComment);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}
	
}
