package fun.krea.models;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Date;
import java.util.List;

public class Story implements Serializable{

	private static final long serialVersionUID = -1941671630377652086L;

	private BigInteger storyId;
	private String coverPhoto;
	private String storyTitle;
	private String storyDesc;
	private String storySlug;
	private BigInteger categoryId;
	private String categoryName;
	private String categorySlug;
	private String categoryColor;
	private Boolean isPublished;
	private Boolean isStoryOfTheWeek;
	private Boolean isHero;
	private BigInteger storyViews;
	private Date publishedDate;
	private String publishedDateStr;
	
	private List<Slide> slides;
	
	public Story() {
		
	}
	
	/*
	 * For Hero Story
	 */
	public Story(BigInteger storyId, String coverPhoto, String storyTitle, String storyDesc, String storySlug, String categoryName, String categorySlug, String categoryColor, Date publishedDate) {
		this.storyId = storyId;
		this.coverPhoto = coverPhoto;
		this.storyTitle = storyTitle;
		this.storyDesc = storyDesc;
		this.storySlug = storySlug;
		this.categoryName = categoryName;
		this.categorySlug = categorySlug;
		this.categoryColor = categoryColor;
		this.publishedDate = publishedDate;
	}
	
	/*
	 * For Story List
	 */
	public Story(String coverPhoto, String storyTitle, String storySlug, String categoryName, String categoryColor) {
		this.coverPhoto = coverPhoto;
		this.storyTitle = storyTitle;
		this.storySlug = storySlug;
		this.categoryName = categoryName;
		this.categoryColor = categoryColor;
	}
	
	public BigInteger getStoryId() {
		return storyId;
	}
	public void setStoryId(BigInteger storyId) {
		this.storyId = storyId;
	}
	public String getCoverPhoto() {
		return coverPhoto;
	}
	public void setCoverPhoto(String coverPhoto) {
		this.coverPhoto = coverPhoto;
	}
	public String getStoryTitle() {
		return storyTitle;
	}
	public void setStoryTitle(String storyTitle) {
		this.storyTitle = storyTitle;
	}
	public String getStoryDesc() {
		return storyDesc;
	}
	public void setStoryDesc(String storyDesc) {
		this.storyDesc = storyDesc;
	}
	public String getStorySlug() {
		return storySlug;
	}
	public void setStorySlug(String storySlug) {
		this.storySlug = storySlug;
	}
	public BigInteger getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(BigInteger categoryId) {
		this.categoryId = categoryId;
	}
	public Boolean getIsPublished() {
		return isPublished;
	}
	public void setIsPublished(Boolean isPublished) {
		this.isPublished = isPublished;
	}
	public Boolean getIsStoryOfTheWeek() {
		return isStoryOfTheWeek;
	}
	public void setIsStoryOfTheWeek(Boolean isStoryOfTheWeek) {
		this.isStoryOfTheWeek = isStoryOfTheWeek;
	}
	public Boolean getIsHero() {
		return isHero;
	}
	public void setIsHero(Boolean isHero) {
		this.isHero = isHero;
	}
	public BigInteger getStoryViews() {
		return storyViews;
	}
	public void setStoryViews(BigInteger storyViews) {
		this.storyViews = storyViews;
	}
	public Date getPublishedDate() {
		return publishedDate;
	}
	public void setPublishedDate(Date publishedDate) {
		this.publishedDate = publishedDate;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCategorySlug() {
		return categorySlug;
	}
	public void setCategorySlug(String categorySlug) {
		this.categorySlug = categorySlug;
	}
	public String getCategoryColor() {
		return categoryColor;
	}
	public void setCategoryColor(String categoryColor) {
		this.categoryColor = categoryColor;
	}
	public List<Slide> getSlides() {
		return slides;
	}
	public void setSlides(List<Slide> slides) {
		this.slides = slides;
	}
	public String getPublishedDateStr() {
		return publishedDateStr;
	}
	public void setPublishedDateStr(String publishedDateStr) {
		this.publishedDateStr = publishedDateStr;
	}
	
}
