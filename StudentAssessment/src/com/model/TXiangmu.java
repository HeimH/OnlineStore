package com.model;

/**
 * TXiangmu entity. @author MyEclipse Persistence Tools
 */

public class TXiangmu implements java.io.Serializable
{

	// Fields

	private Integer id;
	private String mingcheng;
	private int fenzhi;
	private String del;
	
	public Integer getId()
	{
		return id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	public String getMingcheng()
	{
		return mingcheng;
	}
	public void setMingcheng(String mingcheng)
	{
		this.mingcheng = mingcheng;
	}
	public String getDel() {
		return del;
	}
	
	public int getFenzhi() {
		return fenzhi;
	}
	public void setFenzhi(int fenzhi) {
		this.fenzhi = fenzhi;
	}
	public void setDel(String del) {
		this.del = del;
	}

}