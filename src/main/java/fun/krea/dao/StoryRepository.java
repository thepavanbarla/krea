package fun.krea.dao;

import java.math.BigInteger;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import fun.krea.models.Category;
import fun.krea.models.Slide;
import fun.krea.models.Story;

@Component
public class StoryRepository {
	
	@Autowired 
	JdbcTemplate jdbcTemplate;
	
	@Value("${latest.story.count}")
	Integer latestStoryCount;
	
	@Value("${popular.story.count}")
	Integer popularStoryCount;
	
	@Value("${category.story.page.size}")
	Integer categoryStoryPageSize;
	
	@Value("${related.story.count}")
	Integer relatedStoryCount;
	
	@Value("${sql.query.getHero}")
	String GET_HERO_SQL_SCRIPT;
	
	@Value("${sql.query.getLatest}")
	String GET_LATEST_SQL_SCRIPT;
	
	@Value("${sql.query.getPopular}")
	String GET_POPULAR_SQL_SCRIPT;
	
	@Value("${sql.query.getCategories}")
	String GET_CATEGORIES_SQL_SCRIPT;
	
	@Value("${sql.query.getByCategory}")
	String GET_BY_CATEGORY_SQL_SCRIPT;
	
	@Value("${sql.query.getStoryBySlug}")
	String GET_STORY_BY_SLUG_SQL_SCRIPT;
	
	@Value("${sql.query.getRelated}")
	String GET_RELATED_SQL_SCRIPT;
	
	@Value("${sql.query.getSlides}")
	String GET_SLIDES_SQL_SCRIPT;
	
	@Value("${sql.query.getStoryOfTheWeekSlug}")
	String GET_SOTW_SLUG;
	
	@Value("${sql.query.getCategoryBySlug}")
	String GET_CATEGORY_BY_SLUG;
	
	@Value("${sql.query.subscribe}")
	String SUBSCRIBE_SCRIPT;
	
	@SuppressWarnings("unused")
	private static Logger LOGGER = LoggerFactory.getLogger(StoryRepository.class);
	
	public Story getHeroStory() {
		return getSingleStoryCommon(GET_HERO_SQL_SCRIPT, new Object[]{});
	}
	
	public List<Story> getLatestStories(BigInteger heroStoryId) {
		return getListOfStoriesCommon(GET_LATEST_SQL_SCRIPT, new Object[]{heroStoryId, latestStoryCount});
	}
	
	public List<Story> getPopularStories() {
		return getListOfStoriesCommon(GET_POPULAR_SQL_SCRIPT, new Object[]{popularStoryCount});
	}
	
	public List<Category> getCategories() {
		return jdbcTemplate.query(
			GET_CATEGORIES_SQL_SCRIPT,
			new Object[]{},
			(rs, rowNum) ->
			new Category(
				rs.getString("category_name"),
				rs.getString("category_desc"),
				rs.getString("category_slug"),
				rs.getString("category_image"),
				rs.getString("category_color_code")
			)
        );
	}
	
	public List<Story> getStoriesByCategory(String categorySlug, Integer pageIndex) {
		return getListOfStoriesCommon(GET_BY_CATEGORY_SQL_SCRIPT, new Object[]{categorySlug, (pageIndex * categoryStoryPageSize), categoryStoryPageSize});
	}
	
	public Story getStoryBySlug(String storySlug) {
		return getSingleStoryCommon(GET_STORY_BY_SLUG_SQL_SCRIPT, new Object[]{storySlug});
	}
	
	public List<Slide> getStorySlides(BigInteger storyId) {
		return jdbcTemplate.query(
			GET_SLIDES_SQL_SCRIPT,
			new Object[]{storyId},
			(rs, rowNum) ->
			new Slide(
				rs.getString("slide_title"),
				rs.getString("slide_desc"),
				rs.getString("slide_image"),
				rs.getString("image_credits")
			)
        );
	}
	
	public List<Story> getRelatedStories(BigInteger storyId){
		return getListOfStoriesCommon(GET_RELATED_SQL_SCRIPT, new Object[]{storyId, storyId, relatedStoryCount});
	}
	
	public String getStoryOfTheWeekSlug() {
		return jdbcTemplate.queryForObject(
			GET_SOTW_SLUG,
			new Object[]{},
			(rs, rowNum) ->
			rs.getString("story_slug")
        );
	}
	
	public Category getCategoryBySlug(String categorySlug) {
		return jdbcTemplate.queryForObject(
			GET_CATEGORY_BY_SLUG,
			new Object[]{categorySlug},
			(rs, rowNum) ->
			new Category(
				rs.getString("category_name"),
				categorySlug
			)
        );
	}
	
	public void saveSubscriptionDetails(String email) {
		jdbcTemplate.update(SUBSCRIBE_SCRIPT, new Object[]{email});
	}
	
	private List<Story> getListOfStoriesCommon(String sqlScript, Object[] queryParameters){
		return jdbcTemplate.query(
			sqlScript,
			queryParameters,
			(rs, rowNum) ->
			new Story(
				rs.getString("cover_photo"),
				rs.getString("story_title"),
				rs.getString("story_slug"),
				rs.getString("category_name"),
				rs.getString("category_color_code")
			)
        );
	}
	
	private Story getSingleStoryCommon(String sqlScript, Object[] queryParameters) {
		return jdbcTemplate.queryForObject(
			sqlScript, 
			queryParameters, 
			(rs, rowNum) -> 
			new Story(
				new BigInteger(rs.getString("story_id")),
				rs.getString("cover_photo"),
				rs.getString("story_title"),
				rs.getString("story_desc"),
				rs.getString("story_slug"),
				rs.getString("category_name"),
				rs.getString("category_slug"),
				rs.getString("category_color_code"),
				rs.getDate("published_date")
			)
		);
	}
	
	
	

}
