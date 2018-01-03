package com.model;

/**
 * TCeping entity. @author MyEclipse Persistence Tools
 */

public class TCeping implements java.io.Serializable {

	// Fields

	private Integer id;
	private Integer xiangmuId;
	private Integer fenzhi;
	private String beizhu;
	
	private String shijian;
	private Integer userId;
	
	private TXiangmu xiangmu;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getXiangmuId() {
		return xiangmuId;
	}
	public void setXiangmuId(Integer xiangmuId) {
		this.xiangmuId = xiangmuId;
	}
	public Integer getFenzhi() {
		return fenzhi;
	}
	
	public TXiangmu getXiangmu() {
		return xiangmu;
	}
	public void setXiangmu(TXiangmu xiangmu) {
		this.xiangmu = xiangmu;
	}
	public void setFenzhi(Integer fenzhi) {
		this.fenzhi = fenzhi;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getShijian() {
		return shijian;
	}
	public void setShijian(String shijian) {
		this.shijian = shijian;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

}