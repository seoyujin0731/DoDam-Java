package com.example.demo.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.demo.dto.test1;

@Mapper
public interface test1Mapper {

		List<test1> select();

}