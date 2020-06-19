package com.example.board.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.board.model.BoardReplyVo;
import com.example.board.model.BoardVo;

@Mapper
public interface BoardMapper {

   public List<BoardVo> boardList(int dd_board_category);
   public BoardVo boardDetail(int dd_board_no);
   public void boardDelete(int dd_board_no);
   public void boardInsert(BoardVo boardVo);
   public void boardUpdate(BoardVo boardVo);

   public List<BoardReplyVo> boardReplyList(int dd_reply_no);
   public void boardReplyInsert(BoardReplyVo boardReplyVo);
   public void boardReplyDelete(int dd_reply_no);
   public int boardReplyCount(int dd_board_no);
}