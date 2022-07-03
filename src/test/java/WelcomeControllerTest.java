
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.support.AnnotationConfigContextLoader;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.junit.Assert.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import javax.validation.constraints.AssertTrue;

import org.springframework.boot.test.SpringApplicationConfiguration; 
import com.crawler.SpringBootWebApplication;
import com.crawler.WelcomeController;



@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = SpringBootWebApplication.class)
@WebAppConfiguration
public class WelcomeControllerTest {
	
	@Autowired
    private WebApplicationContext wac;
	
	private MockMvc mockMvc;
	
	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}
	
	@Test
	public void testEmptyParams(){		
		try {
			MvcResult result = this.mockMvc.perform(post("/generateCrawler").param("crawlurl", "https://www.ebuilder.com/").param("maxPages", "2"))
			.andExpect(status().isFound()).andReturn();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void testInValidDownload(){		
		try {
			MvcResult result = this.mockMvc.perform(post("/generateCrawler").param("crawlurl", "https://www.ebuilder.com/").param("maxPages", "2"))
			.andExpect(status().isFound()).andReturn();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void testValidDownload(){		
		try {
			MvcResult result = this.mockMvc.perform(post("/generateCrawler").param("crawlurl", "https://www.ebuilder.com/").param("maxPages", "2"))
			.andExpect(status().isFound()).andReturn();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}