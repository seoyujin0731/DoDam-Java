package com.example.reserve.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.reserve.model.Hospital_reserveVo;

@Mapper
public interface ReserveMapper {
//	public List<Hospital_reserveVo> reserveList(Hospital_reserveVo reVo);

	public List<Hospital_reserveVo> listTest();



}
