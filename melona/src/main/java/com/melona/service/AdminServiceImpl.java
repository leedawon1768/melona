package com.melona.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.melona.dao.AlbumDao;
import com.melona.dao.GenreDao;
import com.melona.dao.MusicDao;
import com.melona.dao.SingerDao;
import com.melona.model.Album;
import com.melona.model.Genre;
import com.melona.model.Singer;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private SingerDao singerDao;
	@Autowired
	private AlbumDao albumDao;
	@Autowired
	private MusicDao musicDao;
	@Autowired
	private GenreDao genreDao;

	/*
	 * 	가수
	 */
	
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

	@Override
	public Singer getSingerDetail(int no) {
		return singerDao.getSingerByNo(no);
	}

	@Override
	public List<Singer> searchSinger(String keyword) {
		return singerDao.getSingersByName(keyword);
	}

	@Override
	public void updateSinger(Singer singer) {
		singerDao.updateSinger(singer);
	}

	/*
	 * 	앨범
	 */
	
	@Override
	public List<Album> getAllAlbums() {
		return albumDao.getAllAlbums();
	}

	/*
	 * 	장르
	 */
	@Override
	public List<Genre> getAllGenres() {
		return genreDao.getAllGenres();
	}
	
}
