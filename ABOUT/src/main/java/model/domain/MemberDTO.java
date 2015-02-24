package model.domain;

public class MemberDTO {
	private String email;
	private String name;
	private String pw;
	
	public MemberDTO() {}
	public MemberDTO(String email, String pw){		
		this.email = email;
		this.pw = pw;
	}
	public MemberDTO(String email, String name, String pw) {
		super();
		this.email = email;
		this.name = name;
		this.pw = pw;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("MemberDTO [email=");
		builder.append(email);
		builder.append(", name=");
		builder.append(name);
		builder.append(", pw=");
		builder.append(pw);
		builder.append("]");
		return builder.toString();
	}
}
