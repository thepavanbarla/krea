package fun.krea;

import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class AppUtils {

	@Value("${display.date.format}")
	String displayDateFormat;
	
	private static SimpleDateFormat displayDateFormatter;
	
	public SimpleDateFormat getDisplayDateFormatter() {
		if(displayDateFormatter == null)
			displayDateFormatter = new SimpleDateFormat(displayDateFormat);
		return displayDateFormatter;
	}
	
}
