package model.domain;

public class DocumentDTO {
	private int dKey;
	private String dName;
	private int dSize;
	private String dPath;
	private String dComment;
	
	public DocumentDTO() {}
	public DocumentDTO(int seqDkey, String dName, int dSize, String dPath) {
		this.dKey = seqDkey;
		this.dName = dName;
		this.dSize = dSize;
		this.dPath = dPath;
	}
	public DocumentDTO(String dName, int dSize, String dPath) {
		this.dName = dName;
		this.dSize = dSize;
		this.dPath = dPath;
	}
	
	public int getSeqDkey() {
		return dKey;
	}
	public void setSeqDkey(int seqDkey) {
		this.dKey = seqDkey;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public int getdSize() {
		return dSize;
	}
	public void setdSize(int dSize) {
		this.dSize = dSize;
	}
	public String getdPath() {
		return dPath;
	}
	public void setdPath(String dPath) {
		this.dPath = dPath;
	}
	
	public String getdComment() {
		return dComment;
	}
	public void setdComment(String dComment) {
		this.dComment = dComment;
	}
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("DocumentDTO [dKey=");
		builder.append(dKey);
		builder.append(", dName=");
		builder.append(dName);
		builder.append(", dSize=");
		builder.append(dSize);
		builder.append(", dPath=");
		builder.append(dPath);
		builder.append(", dComment=");
		builder.append(dComment);
		builder.append("]");
		return builder.toString();
	}
}
