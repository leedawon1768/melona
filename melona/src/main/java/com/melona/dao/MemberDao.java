package com.melona.dao;

import com.melona.model.Members;

public interface MemberDao {

	void insertMember(Members member);
	Members getMemberById(String id);
}
