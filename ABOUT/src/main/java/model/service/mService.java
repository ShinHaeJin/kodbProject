package model.service;

import model.domain.MemberDTO;

public interface mService {
	MemberDTO checkId(String email, String pw);
	int insertMember(String email, String name, String pw);
	MemberDTO checkMember(String email);
}
