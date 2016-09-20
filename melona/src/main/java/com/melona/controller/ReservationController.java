package com.melona.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.melona.model.C_Seat;
import com.melona.service.C_SeatService;

@Controller
public class ReservationController {

	@Autowired
	C_SeatService seatService;
	
	@RequestMapping("/seat.do")
	public String seat(Model model) {
		List<C_Seat> seats = seatService.getSeat();
		model.addAttribute("seats", seats);
		
		return "reservation/seat";
	}
}