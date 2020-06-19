package com.example.user.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.reserve.model.HospitalVo;
import com.example.reserve.model.Hospital_reserveVo;
import com.example.user.model.UserVo;

@Mapper
public interface UserMapper {

	public List<UserVo> UserList();

	// 2020.04.19 유진 수정
	public void UserSignUp(UserVo vo);


	//20.04.25 유진
	public UserVo readUser(String dd_user_id);

	public List<String> readAuthority(String dd_user_id);

	//20.05.04 유진
	public int overlapName(UserVo vo);

	//20.05.05 유진
	public void insertUserAuthority(String dd_user_id);

	public List<Hospital_reserveVo> reserveList(Hospital_reserveVo reVo);


	//200519 지원
	public int hospitalCount(HospitalVo vo);

	public void hospitalInsert(HospitalVo vo);

	public void reserveInsert(Hospital_reserveVo reVo);

	//  20.05.21유진
	public List<Hospital_reserveVo> readReserve(String dd_user_id);

	//200526  지원
	public List<Hospital_reserveVo> nowReserveList(String dd_user_id);

	public int reserveDelete(Hospital_reserveVo reVo);

	//200527 지원
	public void userUpdate(UserVo reVo);
	
//20.06.01 유진
	public List<Hospital_reserveVo> reservetable();
	
//	20.06.10 유진
	public void reserveOk(int dd_reserve_no);
	
//	20.06.10 유진
	public void reserveNo(int dd_reserve_no);
	
	//20.06.16 유진
	public List<Hospital_reserveVo> CalReserveList(String dd_user_id);
	
	public List<Hospital_reserveVo> adminReservetable();
}
