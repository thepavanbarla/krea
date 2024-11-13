
package fun.krea.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import fun.krea.models.Category;
import fun.krea.models.Story;
import fun.krea.services.StoryService;

@Controller
@RequestMapping("/")
public class DynamicWebController {
	
	@SuppressWarnings("unused")
	private static Logger LOGGER = LoggerFactory.getLogger(DynamicWebController.class);

	@Autowired
	StoryService storyService;
	
	@RequestMapping(value = {"", "home"})
	public String homePage(ModelMap model) {
		Story heroStory = storyService.getHeroStory();
		model.put("hero", heroStory);
		return "index";
	}
	
	@RequestMapping("categories")
	public String categoriesPage(ModelMap model) {
		List<Category> categories = storyService.getListOfCategories();
		model.put("categories", categories);
		return "categories";
	}
	
	@RequestMapping("category/{categorySlug}")
	public String categoryStoriesPage(ModelMap model, @PathVariable String categorySlug) {
		model.put("category", storyService.getCategoryBySlug(categorySlug));
		return "category-stories";
	}
	
	@RequestMapping("popular")
	public String popularStoriesPage() {
		return "popular";
	}
	
	@RequestMapping("story/{storySlug}")
	public String fullStoryPage(ModelMap model, @PathVariable String storySlug) {
		Story story = storyService.getFullStoryDetails(storySlug);
		model.put("story", story);
		return "story";
	}
	
	@RequestMapping("sotw")
	public String storyOfTheWeek(ModelMap model) {
		String sotwSlug = storyService.getStoryOfTheWeekSlug();
		return "redirect:/story/" + sotwSlug;
	}
	
}
