package com.example.board.model;

public class BoardVo {

	private int no;
	private int dd_board_no;
	private int dd_board_category;
	private String dd_board_title;
	private String dd_board_contents;
	private String dd_board_delflag;
	private String dd_user_id;
	private String dd_insert_date;
	private String dd_modify_date;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getDd_board_no() {
		return dd_board_no;
	}

	public void setDd_board_no(int dd_board_no) {
		this.dd_board_no = dd_board_no;
	}

	public int getDd_board_category() {
		return dd_board_category;
	}

	public void setDd_board_category(int dd_board_category) {
		this.dd_board_category = dd_board_category;
	}

	public String getDd_board_title() {
		return dd_board_title;
	}

	public void setDd_board_title(String dd_board_title) {
		this.dd_board_title = dd_board_title;
	}

	public String getDd_board_contents() {
		return dd_board_contents;
	}

	public void setDd_board_contents(String dd_board_contents) {
		this.dd_board_contents = dd_board_contents;
	}

	public String getDd_board_delflag() {
		return dd_board_delflag;
	}

	public void setDd_board_delflag(String dd_board_delflag) {
		this.dd_board_delflag = dd_board_delflag;
	}

	public String getDd_user_id() {
		return dd_user_id;
	}

	public void setDd_user_id(String dd_user_id) {
		this.dd_user_id = dd_user_id;
	}

	public String getDd_insert_date() {
		return dd_insert_date;
	}

	public void setDd_insert_date(String dd_insert_date) {
		this.dd_insert_date = dd_insert_date;
	}

	public String getDd_modify_date() {
		return dd_modify_date;
	}

	public void setDd_modify_date(String dd_modify_date) {
		this.dd_modify_date = dd_modify_date;
	}

	@Override
	public String toString() {
		return "BoardVo [dd_board_no=" + dd_board_no + ", dd_board_category=" + dd_board_category + ", dd_board_title="
				+ dd_board_title + ", dd_board_contents=" + dd_board_contents + ", dd_board_delflag=" + dd_board_delflag
				+ ", dd_user_id=" + dd_user_id + ", dd_insert_date=" + dd_insert_date + ", dd_modify_date="
				+ dd_modify_date + "]";
	}

}
