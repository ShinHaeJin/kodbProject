package model.domain;

public class HashPhotoDTO {
	private int hpKey;
	private String hpName;
	private int pKey;
	private String email;
	
	public HashPhotoDTO() {}

	public HashPhotoDTO(int hpKey, String hpName, int pKey, String email) {
		this.hpKey = hpKey;
		this.hpName = hpName;
		this.pKey = pKey;
		this.email = email;
	}
	
	public HashPhotoDTO(String hpName, int pKey, String email) {
		super();
		this.hpName = hpName;
		this.pKey = pKey;
		this.email = email;
	}

	public HashPhotoDTO(String hpName, String email) {
		super();
		this.hpName = hpName;
		this.email = email;
	}

	public int getHpKey() {
		return hpKey;
	}

	public void setHpKey(int hpKey) {
		this.hpKey = hpKey;
	}

	public String getHpName() {
		return hpName;
	}

	public void setHpName(String hpName) {
		this.hpName = hpName;
	}

	public int getpKey() {
		return pKey;
	}

	public void setpKey(int pKey) {
		this.pKey = pKey;
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
		builder.append("HashPhotoDTO [hpKey=");
		builder.append(hpKey);
		builder.append(", hpName=");
		builder.append(hpName);
		builder.append(", pKey=");
		builder.append(pKey);
		builder.append(", email=");
		builder.append(email);
		builder.append("]");
		return builder.toString();
	}
	
}
