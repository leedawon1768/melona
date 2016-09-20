package com.melona.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.melona.dao.C_SeatDao;
import com.melona.model.C_Seat;

@Service
public class C_SeatServiceImpl implements C_SeatService {

	@Autowired
	private C_SeatDao cseatDao;
	
	@Override
	public List<C_Seat> getSeat() {
		List<C_Seat> seatList = cseatDao.getSeat();
		return seatList;
	}

}
