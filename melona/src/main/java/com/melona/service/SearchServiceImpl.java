package com.melona.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.melona.dao.SearchDao;
import com.melona.model.Album;
import com.melona.model.C_Concert;
import com.melona.model.Music;
import com.melona.model.Singer;

@Service
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDao searchDao;
	
	@Override
	public Singer getSinger(String keyword) {
		Singer searchSinger = searchDao.getSinger(keyword);
		
		if (searchSinger == null) {
			throw new RuntimeException("검색한 가수가 존재하지 않습니다.");
		}
		
		return searchSinger;
	}

	@Override
	public List<Album> getAlbumBySingerNo(int singerNo) {
		List<Album> albumList = searchDao.getAlbumBySingerNo(singerNo);
		
		if (albumList == null) {
			throw new RuntimeException("앨범이 존재하지 않습니다.");
		}
		
		return albumList;
	}

	@Override
	public List<Music> getMusicByAlbumNo(int AlbumNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<C_Concert> getConcerts(int singerNo) {
		// TODO Auto-generated method stub
		return null;
	}
}
