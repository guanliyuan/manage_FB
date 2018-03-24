package com.FBmanage.ibs.model.base;

/**
*@Author jinjin
*@Date 2017/01/16
*@Description 分页参数
*/
public class Pager {
	private Integer page;   
	private Integer rows;	
	private Integer pageIndex;
	private String sort;
	private String order;
	
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	 
	
}
