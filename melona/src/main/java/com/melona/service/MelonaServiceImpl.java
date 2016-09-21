package com.melona.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;


import com.melona.dao.MemberDao;
import com.melona.model.Members;

@Service
public class MelonaServiceImpl implements MelonaService {

	@Autowired
	private MemberDao memberDao;
	
	@Override
	public void register(Members member) {
		Members savedMember = memberDao.getMemberById(member.getId());
		
		if (savedMember != null) {
			throw new RuntimeException("이미 사용중인 아이디입니다.");
		}
		
		memberDao.insertMember(member);
	}

	@Override
	public Members login(String id, String password) {

		Members savedMember = memberDao.getMemberById(id);
		if (savedMember == null) {
			throw new RuntimeException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		
		String secretPassword = DigestUtils.md5DigestAsHex(password.getBytes());
		if (!savedMember.getPassword().equals(secretPassword)) {
			throw new RuntimeException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		
		return savedMember;
	}

	
	
}
