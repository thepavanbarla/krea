package fun.krea.models;

import java.io.Serializable;
import java.math.BigInteger;

public class Category implements Serializable{

	private static final long serialVersionUID = 3350694934655998613L;

	private BigInteger categoryId;
	private String categoryName;
	private String categoryDesc;
	private String categorySlug;
	private String categoryImage;
	private String categoryColor;
	private Boolean isActive;
	private Integer orderId;
	
	public Category(String categoryName, String categorySlug) {
		this.categoryName = categoryName;
		this.categorySlug = categorySlug;
	}
	
	public Category(String categoryName, String categoryDesc, String categorySlug, String categoryImage, String categoryColor) {
		this.categoryName = categoryName;
		this.categoryDesc = categoryDesc;
		this.categorySlug = categorySlug;
		this.categoryImage = categoryImage;
		this.categoryColor = categoryColor;
	}
	
	public BigInteger getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(BigInteger categoryId) {
		this.categoryId = categoryId;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategoryDesc() {
		return categoryDesc;
	}
	public void setCategoryDesc(String categoryDesc) {
		this.categoryDesc = categoryDesc;
	}
	public String getCategorySlug() {
		return categorySlug;
	}
	public void setCategorySlug(String categorySlug) {
		this.categorySlug = categorySlug;
	}
	public String getCategoryImage() {
		return categoryImage;
	}
	public void setCategoryImage(String categoryImage) {
		this.categoryImage = categoryImage;
	}
	public String getCategoryColor() {
		return categoryColor;
	}
	public void setCategoryColor(String categoryColor) {
		this.categoryColor = categoryColor;
	}
	public Boolean getIsActive() {
		return isActive;
	}
	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}
	public Integer getOrderId() {
		return orderId;
	}
	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}
	
}
