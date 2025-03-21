package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 摄影评价
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-12 20:31:07
 */
@TableName("sheyingpingjia")
public class SheyingpingjiaEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public SheyingpingjiaEntity() {
		
	}
	
	public SheyingpingjiaEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 订单编号
	 */
					
	private String dingdanbianhao;
	
	/**
	 * 套餐编号
	 */
					
	private String taocanbianhao;
	
	/**
	 * 套餐名称
	 */
					
	private String taocanmingcheng;
	
	/**
	 * 服务评分
	 */
					
	private String fuwupingfen;
	
	/**
	 * 技术评分
	 */
					
	private String jishupingfen;
	
	/**
	 * 晒图
	 */
					
	private String shaitu;
	
	/**
	 * 整体评价
	 */
					
	private String zhengtipingjia;
	
	/**
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：订单编号
	 */
	public void setDingdanbianhao(String dingdanbianhao) {
		this.dingdanbianhao = dingdanbianhao;
	}
	/**
	 * 获取：订单编号
	 */
	public String getDingdanbianhao() {
		return dingdanbianhao;
	}
	/**
	 * 设置：套餐编号
	 */
	public void setTaocanbianhao(String taocanbianhao) {
		this.taocanbianhao = taocanbianhao;
	}
	/**
	 * 获取：套餐编号
	 */
	public String getTaocanbianhao() {
		return taocanbianhao;
	}
	/**
	 * 设置：套餐名称
	 */
	public void setTaocanmingcheng(String taocanmingcheng) {
		this.taocanmingcheng = taocanmingcheng;
	}
	/**
	 * 获取：套餐名称
	 */
	public String getTaocanmingcheng() {
		return taocanmingcheng;
	}
	/**
	 * 设置：服务评分
	 */
	public void setFuwupingfen(String fuwupingfen) {
		this.fuwupingfen = fuwupingfen;
	}
	/**
	 * 获取：服务评分
	 */
	public String getFuwupingfen() {
		return fuwupingfen;
	}
	/**
	 * 设置：技术评分
	 */
	public void setJishupingfen(String jishupingfen) {
		this.jishupingfen = jishupingfen;
	}
	/**
	 * 获取：技术评分
	 */
	public String getJishupingfen() {
		return jishupingfen;
	}
	/**
	 * 设置：晒图
	 */
	public void setShaitu(String shaitu) {
		this.shaitu = shaitu;
	}
	/**
	 * 获取：晒图
	 */
	public String getShaitu() {
		return shaitu;
	}
	/**
	 * 设置：整体评价
	 */
	public void setZhengtipingjia(String zhengtipingjia) {
		this.zhengtipingjia = zhengtipingjia;
	}
	/**
	 * 获取：整体评价
	 */
	public String getZhengtipingjia() {
		return zhengtipingjia;
	}
	/**
	 * 设置：用户名
	 */
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
	/**
	 * 设置：联系电话
	 */
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
	/**
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}

}
