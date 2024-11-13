package fun.krea.models;

import java.io.Serializable;
import java.math.BigInteger;

public class Slide implements Serializable{

	private static final long serialVersionUID = 4475089542656491031L;

	private BigInteger slideId;
	private BigInteger storyId;
	private String slideTitle;
	private String slideDesc;
	private String slideImage;
	private Boolean showSlide;
	private String imageCredits;
	
	public Slide(String slideTitle, String slideDesc, String slideImage, String imageCredits) {
		this.slideTitle = slideTitle;
		this.slideDesc = slideDesc;
		this.slideImage = slideImage;
		this.imageCredits = imageCredits;
	}
	
	public BigInteger getSlideId() {
		return slideId;
	}
	public void setSlideId(BigInteger slideId) {
		this.slideId = slideId;
	}
	public BigInteger getStoryId() {
		return storyId;
	}
	public void setStoryId(BigInteger storyId) {
		this.storyId = storyId;
	}
	public String getSlideTitle() {
		return slideTitle;
	}
	public void setSlideTitle(String slideTitle) {
		this.slideTitle = slideTitle;
	}
	public String getSlideDesc() {
		return slideDesc;
	}
	public void setSlideDesc(String slideDesc) {
		this.slideDesc = slideDesc;
	}
	public String getSlideImage() {
		return slideImage;
	}
	public void setSlideImage(String slideImage) {
		this.slideImage = slideImage;
	}
	public Boolean getShowSlide() {
		return showSlide;
	}
	public void setShowSlide(Boolean showSlide) {
		this.showSlide = showSlide;
	}
	public String getImageCredits() {
		return imageCredits;
	}
	public void setImageCredits(String imageCredits) {
		this.imageCredits = imageCredits;
	}
	
}
