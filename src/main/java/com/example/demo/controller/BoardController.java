package com.example.demo.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.board.mapper.BoardMapper;
import com.example.board.model.BoardReplyVo;
import com.example.board.model.BoardVo;

@Controller
@EnableAutoConfiguration
public class BoardController {

   @Autowired
   BoardMapper boardMapper;


   @RequestMapping(value = "boardList")
   public String boardList(Model model, BoardVo vo,@RequestParam("dd_board_category") int dd_board_category){
      List<BoardVo> boardList = boardMapper.boardList(vo.getDd_board_category());
      model.addAttribute("boardList" , boardList);
      model.addAttribute("dd_board_category",dd_board_category);

      return "board.List";
   }

   @RequestMapping(value = "boardDetail", method=RequestMethod.GET)
   public String boardDetail(Model model ,BoardVo vo, BoardReplyVo replyVo, Principal cipal) {
      //vo.setDd_board_contents(vo.getDd_board_contents().replaceAll("\r\n","<br>"));

      BoardVo boardDetail = boardMapper.boardDetail(vo.getDd_board_no());
      boardDetail.setDd_board_contents(boardDetail.getDd_board_contents().replaceAll("\r\n","<br>"));
      model.addAttribute("boardDetail" , boardDetail);

      List<BoardReplyVo> boardReplyList = boardMapper.boardReplyList(replyVo.getDd_board_no());
      model.addAttribute("boardReplyList" , boardReplyList);

      int reply_count=boardMapper.boardReplyCount(replyVo.getDd_board_no());
      model.addAttribute("reply_count",reply_count);

      model.addAttribute("cipalName",cipal.getName());


      return "board.Detail";
   }


   @RequestMapping(value = "boardDelete")
   public String boardDelete(BoardVo vo, @RequestParam("dd_board_category") int dd_board_category) {
      boardMapper.boardDelete(vo.getDd_board_no());
      return "redirect:boardList?dd_board_category="+dd_board_category;//
   }

   @RequestMapping(value = "boardInsertView")
   public String boardInsertView(Model model, BoardVo vo,Principal cipal) {

      model.addAttribute("dd_board_category",vo.getDd_board_category());
      model.addAttribute("dd_board_writer",cipal.getName());

      return "board.InsertView";
   }

   @RequestMapping(value = "boardInsert")
   public String boardInsert(BoardVo vo,Principal cipal) {
      vo.setDd_user_id(cipal.getName());
      boardMapper.boardInsert(vo);

      return "redirect:boardList?dd_board_category="+vo.getDd_board_category();//
   }

   @RequestMapping(value = "boardUpdateView")
   public String boardUpdateView(Model model,BoardVo vo, Principal cipal) {
      BoardVo test = boardMapper.boardDetail(vo.getDd_board_no());
      model.addAttribute("boardDetail" , test);
      model.addAttribute("dd_board_writer",cipal.getName());
      return "board.UpdateView";
   }

   @RequestMapping(value = "boardUpdate" , method ={RequestMethod.POST,RequestMethod.GET})
   public String boardUpdate(BoardVo vo) {
      boardMapper.boardUpdate(vo);
      return "redirect:boardDetail?dd_board_no="+vo.getDd_board_no();

   }

   @RequestMapping(value="boardReplyInsert")
   public String boardReplyInsert(BoardReplyVo replyVo,Principal cipal) {

      replyVo.setDd_user_id(cipal.getName());
      boardMapper.boardReplyInsert(replyVo);


      return "redirect:boardDetail?dd_board_no="+replyVo.getDd_board_no();

   }

   @RequestMapping(value = "boardReplyDelete")
   public String boardReplyDelete(BoardReplyVo replyVo) {
      boardMapper.boardReplyDelete(replyVo.getDd_reply_no());

      return "redirect:boardDetail?dd_board_no="+replyVo.getDd_board_no();
   }




}