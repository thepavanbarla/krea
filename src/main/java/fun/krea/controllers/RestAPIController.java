package fun.krea.controllers;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.PostConstruct;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import fun.krea.models.Category;
import fun.krea.models.Story;
import fun.krea.services.StoryService;

@RestController
@RequestMapping("/rest/")
public class RestAPIController {
	
	private static Logger LOGGER = LoggerFactory.getLogger(RestAPIController.class);

	@Autowired
	StoryService storyService;
	
	@PostConstruct
	public void init() {
		LOGGER.info("Rest Controller Initialized! ");
	}
	
	@GetMapping("stories/latest/{heroStoryId}")
	public ResponseEntity<Object> getLatestStories(@PathVariable BigInteger heroStoryId){
		List<Story> latestStories = storyService.getLatestStories(heroStoryId);
		return ResponseEntity.ok(latestStories);
	}
	
	@GetMapping("stories/popular")
	public ResponseEntity<Object> getPopularStories(){
		List<Story> popularStories = storyService.getPopularStories();
		return ResponseEntity.ok(popularStories);
	}
	
	@GetMapping("categories")
	public ResponseEntity<Object> getCategories(){
		List<Category> categories = storyService.getListOfCategories();
		return ResponseEntity.ok(categories);
	}
	
	@GetMapping("category/{categorySlug}/{pageIndex}")
	public ResponseEntity<Object> getStoriesByCategory(@PathVariable String categorySlug, @PathVariable Integer pageIndex){
		List<Story> storiesByCategory = storyService.getStoriesByCategory(categorySlug, pageIndex);
		return ResponseEntity.ok(storiesByCategory);
	}
	
	@GetMapping("stories/related/{storyId}")
	public ResponseEntity<Object> getRelatedStories(@PathVariable BigInteger storyId){
		List<Story> relatedStories = storyService.getRelatedStories(storyId);
		return ResponseEntity.ok(relatedStories);
	}
	
	@PostMapping("subscribe")
	public ResponseEntity<Object> saveSubscription(@RequestParam String email){
		storyService.saveSubscriptionEmail(email);
		return ResponseEntity.ok(null);
	}
	
}
