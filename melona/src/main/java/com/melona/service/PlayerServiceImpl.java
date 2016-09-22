package com.melona.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.melona.dao.PlayerDao;
import com.melona.model.MyAlbum;

@Service
public class PlayerServiceImpl implements PlayerService {

	@Autowired
	PlayerDao palyerdao;

	@Override
	public List<MyAlbum> getPlayList(int userNo) {
		List<MyAlbum> albums = palyerdao.getPlayList(userNo);
		return albums;
	}


	@Override
	public void deleteMyAlbumByNo(int listNo) {
		palyerdao.deleteMyAlbumByNo1(listNo);
		palyerdao.deleteMyAlbumByNo2(listNo);
	}

	@Override
	public void addPlayList(MyAlbum listname) {
		palyerdao.addPlayList(listname);
	}


	@Override
	public void adjustPlayList(MyAlbum myalbum) {
		palyerdao.adjustPlayList(myalbum);
		
	}
}
