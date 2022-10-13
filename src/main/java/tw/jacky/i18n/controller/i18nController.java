package tw.jacky.i18n.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nimbusds.jose.shaded.json.JSONObject;

@Controller
public class i18nController {
	
	@Autowired
	private MessageSource messageSource;
	
	 /**
	 * 取得當前語系.
	 *
	 * @param rq the rq
	 * @param request the request
	 * @return the string
	 */
	@RequestMapping(value = { "/getCurrentLocale" }, method = { RequestMethod.GET }, consumes = {MediaType.APPLICATION_JSON_VALUE }, produces = { MediaType.APPLICATION_JSON_VALUE })
	@ResponseBody
	public ResponseEntity<JSONObject> changeLocale(HttpServletRequest request, HttpServletResponse response) {
		Locale locale = LocaleContextHolder.getLocale();
		
		JSONObject json = new JSONObject();
		json.put("locale", "當前語系:" + messageSource.getMessage("current.locale", null, locale));

		return new ResponseEntity<JSONObject>(json, HttpStatus.OK);
	}
	
	@GetMapping("/18n")
	public String viewHomepageString(Model m, HttpServletRequest request) {
		m.addAttribute("pageTitle","Chitou");
		
		Locale currentlocale = request.getLocale();
		String countrycode = currentlocale.getCountry();
		String countryname = currentlocale.getDisplayCountry();
		String lang = currentlocale.getLanguage();
		String langname = currentlocale.getDisplayLanguage();
		
		System.out.println(countryname);
		System.out.println(countrycode);
		System.out.println(lang);
		System.out.println(langname);
		
		return "Home";
	}
	
	
	 
	

}
