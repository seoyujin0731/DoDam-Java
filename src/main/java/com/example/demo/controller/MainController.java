package com.example.demo.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.board.mapper.BoardMapper;
import com.example.board.model.BoardVo;

@Controller
@EnableAutoConfiguration
public class MainController {

   @RequestMapping(value = "list")
   public String showtest1(Model model) {
      return "/test1/list";
   }

      // 20.05.11 유진
    @RequestMapping(value = "/maps")
    public String maps(Model model) {
          //현재시간
          SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd HH:mm");
          Date time = new Date();
          String time1 = format1.format(time);
          model.addAttribute("time1", time1);
         return "maps";
      }


   // 20.05.11 유진
   @RequestMapping(value = "/maskMaps")
   public String maskMaps() {
         return "maskMaps";
   }

      @Autowired
      BoardMapper boardMapper;

      //200521 지원
      @RequestMapping(value = "/main")
      public String main(Model model,BoardVo vo) {
          List<BoardVo> boardList = boardMapper.boardList(1);
            model.addAttribute("boardList" , boardList);

         return "main";
      }

    //200528 지원
    @RequestMapping(value = "/hospitalMenu")
    public String hospitalMenu() {

          return "hospitalMenu";
    }
    //200529 지원
     @RequestMapping(value = "/search")
     public String search(Model model,@RequestParam("searching") String searching) {

           model.addAttribute("searching",searching);

          return "menuMap";
       }
     //06.11 지원
       @RequestMapping(value = "/header")
       public String header(Principal cipal,Model model) {

          model.addAttribute("principal",cipal);

             return "header";
       }


}