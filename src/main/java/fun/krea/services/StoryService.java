package fun.krea.services;

import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import fun.krea.AppUtils;
import fun.krea.dao.StoryRepository;
import fun.krea.models.Category;
import fun.krea.models.Story;

@Service
public class StoryService {
	
	@Autowired
	StoryRepository storyRepository;
	
	@Autowired
	AppUtils appUtils;
	
	public Story getHeroStory() {
		return storyRepository.getHeroStory();
	}
	
	public List<Story> getLatestStories(BigInteger heroStoryId) {
		return storyRepository.getLatestStories(heroStoryId);
	}
	
	public List<Story> getPopularStories() {
		return storyRepository.getPopularStories();
	}
	
	public List<Category> getListOfCategories() {
		return storyRepository.getCategories();
	}
	
	public List<Story> getStoriesByCategory(String categorySlug, Integer pageIndex) {
		return storyRepository.getStoriesByCategory(categorySlug, pageIndex);
	}
	
	public Story getFullStoryDetails(String storySlug) {
		Story story = storyRepository.getStoryBySlug(storySlug);
		story.setPublishedDateStr(appUtils.getDisplayDateFormatter().format(story.getPublishedDate()));
		story.setSlides(storyRepository.getStorySlides(story.getStoryId()));
		return story;
	}
	
	public List<Story> getRelatedStories(BigInteger storyId) {
		return storyRepository.getRelatedStories(storyId);
	}
	
	public void saveSubscriptionEmail(String email) {
		storyRepository.saveSubscriptionDetails(email);
	}
	
	public String getStoryOfTheWeekSlug() {
		return storyRepository.getStoryOfTheWeekSlug();
	}
	
	public Category getCategoryBySlug(String categorySlug) {
		return storyRepository.getCategoryBySlug(categorySlug);
	}
	
}
