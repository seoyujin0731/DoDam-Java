package com.example.board.model;

public class BoardReplyVo {

   private int no;
   private int dd_reply_no;
   private int dd_board_no;
   private String dd_user_id;
   private String dd_reply_content;
   private String dd_reply_date;

   public int getDd_reply_no() {
      return dd_reply_no;
   }

   public void setDd_reply_no(int dd_reply_no) {
      this.dd_reply_no = dd_reply_no;
   }

   public int getDd_board_no() {
      return dd_board_no;
   }

   public void setDd_board_no(int dd_board_no) {
      this.dd_board_no = dd_board_no;
   }

   public String getDd_user_id() {
      return dd_user_id;
   }

   public void setDd_user_id(String dd_user_id) {
      this.dd_user_id = dd_user_id;
   }

   public String getDd_reply_content() {
      return dd_reply_content;
   }

   public void setDd_reply_content(String dd_reply_content) {
      this.dd_reply_content = dd_reply_content;
   }

   public String getDd_reply_date() {
      return dd_reply_date;
   }

   public void setDd_reply_date(String dd_reply_date) {
      this.dd_reply_date = dd_reply_date;
   }

   @Override
   public String toString() {
      return "BoardReplyVo [dd_reply_no=" + dd_reply_no + ", dd_board_no=" + dd_board_no + ", dd_user_id="
            + dd_user_id + ", dd_reply_content=" + dd_reply_content + ", dd_reply_date=" + dd_reply_date + "]";
   }





}