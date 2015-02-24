package model.dao;

import model.domain.MemberDTO;

public interface MemberDAO {
	MemberDTO checkId(String email, String pw);	
	int insertMember(MemberDTO member);
	MemberDTO checkMember(String eamil);
}
