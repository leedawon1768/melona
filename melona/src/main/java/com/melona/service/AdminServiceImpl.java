package com.melona.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.melona.dao.AlbumDao;
import com.melona.dao.MusicDao;
import com.melona.dao.SingerDao;
import com.melona.model.Singer;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private SingerDao singerDao;
	@Autowired
	private AlbumDao albumDao;
	@Autowired
	private MusicDao musicDao;

	@Override
	public List<Singer> getAllSingers() {
		return singerDao.getAllSingers();
	}
	
	@Override
	public List<Singer> getAllSingers2() {
		return singerDao.getAllSingers2();
	}

	@Override
	public void addSinger(Singer singer) {
		singerDao.addSinger(singer);
	}
	
}
