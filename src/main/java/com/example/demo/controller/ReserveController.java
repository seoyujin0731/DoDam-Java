package com.example.demo.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.reserve.mapper.ReserveMapper;
import com.example.reserve.model.HospitalVo;
import com.example.reserve.model.Hospital_reserveVo;
import com.example.user.mapper.UserMapper;

@Controller
public class ReserveController {

	@Autowired
	UserMapper userMapper;
	ReserveMapper reserveMapper;
	BCryptPasswordEncoder cipal = new BCryptPasswordEncoder();





	// 20.05.14 유진 //200519 오지원
	@RequestMapping(value = "/reserve", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public HospitalVo reserve(HospitalVo hpVo) {

		int num=userMapper.hospitalCount(hpVo);
		if(num<1)
			userMapper.hospitalInsert(hpVo);


		return hpVo;
	}

	//05.04 유진
	@RequestMapping(value = "/reserveList" , method= { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public List<Hospital_reserveVo> reserveList(Hospital_reserveVo reVo) {

		List<Hospital_reserveVo> Vo = userMapper.reserveList(reVo);

		return Vo;
	}

	//0519 지원
	@RequestMapping(value = "/reserveInsert" , method= { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public Hospital_reserveVo reserveInsert(Hospital_reserveVo reVo, Principal cipal) {

		reVo.setDd_user_id(cipal.getName());
		reVo.toString();
		userMapper.reserveInsert(reVo);

		return reVo;
	}

	@RequestMapping(value = "/reserveDelete", method= { RequestMethod.GET, RequestMethod.POST })
	public String reserveDelete(Hospital_reserveVo reVo, Principal cipal) {
			System.out.println(reVo.toString());
			reVo.setDd_user_id(cipal.getName());
			System.out.println(userMapper.reserveDelete(reVo));
		return "redirect:UserMyPage";

	}







}
