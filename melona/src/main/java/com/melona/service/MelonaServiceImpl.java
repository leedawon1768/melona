package com.melona.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.melona.model.Album;
import com.melona.model.Music;
import com.melona.model.Singer;

@Service
public class MelonaServiceImpl implements MelonaService {

	@Override
	public Singer getSinger(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Album> getAlbumBySingerNo(int singerNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Music> getMusicByAlbumNo(int AlbumNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
