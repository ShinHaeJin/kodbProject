package model.domain;

public class HashVideoDTO {
	private int hvKey;
	private String hvName;
	private int vKey;
	private String email;
	
	public HashVideoDTO() {}

	public HashVideoDTO(int hvKey, String hvName, int vKey, String email) {
		this.hvKey = hvKey;
		this.hvName = hvName;
		this.vKey = vKey;
		this.email = email;
	}
	public HashVideoDTO(String hvName, int vKey, String email) {
		this.hvName = hvName;
		this.vKey = vKey;
		this.email = email;
	}
	
	public HashVideoDTO(String hvName, String email) {
		this.hvName = hvName;
		this.email = email;
	}

	public int getHvKey() {
		return hvKey;
	}

	public void setHvKey(int hvKey) {
		this.hvKey = hvKey;
	}

	public String getHvName() {
		return hvName;
	}

	public void setHvName(String hvName) {
		this.hvName = hvName;
	}

	public int getvKey() {
		return vKey;
	}

	public void setvKey(int vKey) {
		this.vKey = vKey;
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
		builder.append("HashVideoDTO [hvKey=");
		builder.append(hvKey);
		builder.append(", hvName=");
		builder.append(hvName);
		builder.append(", vKey=");
		builder.append(vKey);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}

	
}
