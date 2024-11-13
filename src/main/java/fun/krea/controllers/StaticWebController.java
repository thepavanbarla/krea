package fun.krea.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/static/")
public class StaticWebController {

	@RequestMapping("/privacy-policy")
	public String privacyPolicyPage() {
		return "privacy-policy";
	}
	
	@RequestMapping("/terms-of-use")
	public String termsOfUsePage() {
		return "terms-of-use";
	}
	
	@RequestMapping("/about-krea")
	public String aboutKreaPage() {
		return "about-krea";
	}
	
	@RequestMapping("/submit-a-story")
	public String submitAStoryPage() {
		return "submit-a-story";
	}
	
	@RequestMapping("/contact")
	public String contactPage() {
		return "contact";
	}
	
	// Below are test static controllers for dynamic pages
	// TODO Remove later
	
	@RequestMapping("/index-static")
	public String indexStaticPage() {
		return "index-static";
	}
	
	@RequestMapping("/popular-static")
	public String popularStaticPage() {
		return "popular-static";
	}
	
	@RequestMapping("/category-stories-static")
	public String categoryStoriesStaticPage() {
		return "category-stories-static";
	}
	
	@RequestMapping("/categories-static")
	public String categoriesStaticPage() {
		return "categories-static";
	}
	
	@RequestMapping("/story-static")
	public String storyStaticPage() {
		return "story-static";
	}
	
	// Above are test static controllers for dynamic pages
	
}
