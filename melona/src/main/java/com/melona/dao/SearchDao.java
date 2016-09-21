package com.melona.dao;

import java.util.List;

import com.melona.model.Album;
import com.melona.model.C_Concert;
import com.melona.model.Music;
import com.melona.model.Search;
import com.melona.model.Singer;

public interface SearchDao {
	
	void addSearchKeyword(String keyword);

	Singer getSinger(String keyword);
	
	List<Album> getAlbumBySingerNo(int singerNo);
	
	List<Music> getMusicByAlbumNo(int AlbumNo);
	
	List<C_Concert> getConcerts(int singerNo);

}
