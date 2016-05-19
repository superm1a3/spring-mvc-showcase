package demo.security;

import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/xss")
public class XssController {

	@RequestMapping(method=RequestMethod.GET)
	public void xss(Model model) {
		model.addAttribute("bar", "BAR");
	}
	
	@RequestMapping(value="history", method=RequestMethod.GET)
	public @ResponseBody String history() {
		Random r = new Random();
		int i = r.nextInt(100);
		return String.valueOf(i);
	}
}
