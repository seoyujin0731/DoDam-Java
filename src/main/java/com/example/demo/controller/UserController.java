package com.example.demo.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.reserve.model.Hospital_reserveVo;
import com.example.user.mapper.UserMapper;
import com.example.user.model.UserVo;

@Controller
@EnableAutoConfiguration
public class UserController {

	@Autowired
	UserMapper userMapper;
	BCryptPasswordEncoder cipal = new BCryptPasswordEncoder();
	
	@RequestMapping(value = "/UserList")
	public String UserList(Model model,Principal cipal) {

		//System.out.println(cipal.getName());
		List<UserVo> user = userMapper.UserList();
//		System.out.println(user.toString());
		model.addAttribute("UserList", user);
		return "User.List";
	}

	@RequestMapping(value = "/signUp")
	public String signUp() {
		return "User.SignUp";
	}

	@RequestMapping(value = "/UserSignUp", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public String UserSignUp(UserVo vo) {
		vo.setDd_user_pw(cipal.encode(vo.getDd_user_pw()));
//		System.out.println("값좀 확인해라 인간아 : "+vo.getDd_user_pw());
		userMapper.UserSignUp(vo);
		userMapper.insertUserAuthority(vo.getDd_user_id());
		return "/login";
	}

	@RequestMapping(value = "/login")
	public String login(UserVo vo) {
		return "login";
	}


	//05.04 유진
	@RequestMapping(value = "/overlapName" , method= { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int overlapName(UserVo vo) {
		return userMapper.overlapName(vo);
	}


    //200518 지원 200526 지원
  @RequestMapping(value = "/UserMyPage")
  public String myPage(Model model, Principal cipal) {
     UserVo user = userMapper.readUser(cipal.getName());
     model.addAttribute("user", user);
     List<Hospital_reserveVo> reVo = userMapper.readReserve(cipal.getName());
     model.addAttribute("reVo", reVo);

     List<Hospital_reserveVo> nowReVo = userMapper.nowReserveList(cipal.getName());
     model.addAttribute("nowReVo", nowReVo);
     return "User.myPage";
  }

  //200518 지원
  @RequestMapping(value = "/UserMyPage2")
  @ResponseBody
  public List<Hospital_reserveVo> myPage2(Principal cipal) {

	List<Hospital_reserveVo> reVo = userMapper.CalReserveList(cipal.getName());

   return reVo;
  }

  //200526 지원
  @RequestMapping(value = "/UserUpdate" , method= { RequestMethod.GET, RequestMethod.POST })
  @ResponseBody
 public UserVo UserUpdate(Principal cipal,UserVo vo) {
	  vo.setDd_user_id(cipal.getName());
	  userMapper.userUpdate(vo);

	  return vo;

 }

  
//  20.06.01 유진
	@RequestMapping(value = "/admin")
	public String admin(Model model, Principal cipal) {
	     List<Hospital_reserveVo> reservetable = userMapper.adminReservetable();
	     model.addAttribute("reservetable", reservetable);
		return "admin";
	}

	
	  //20.06.10 유진 예약 승인
	  @RequestMapping(value = "/reserveOk" , method= { RequestMethod.GET, RequestMethod.POST })
	  @ResponseBody
	 public String reserveOk(int dd_reserve_no) {
		  userMapper.reserveOk(dd_reserve_no);
		  return "예약됨";
	 }
	  
	  //20.06.10 유진 예약 거절
	  @RequestMapping(value = "/reserveNo" , method= { RequestMethod.GET, RequestMethod.POST })
	  @ResponseBody
	 public String reserveNo(int dd_reserve_no) {
		  userMapper.reserveNo(dd_reserve_no);
		  return "예약거절";
	  }
}
