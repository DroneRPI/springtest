package com.spring.test;
 
import java.security.Principal;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.test.service.LoginService;
 
@Controller
public class HomeController {
     
    @Autowired
    LoginService LoginService;
     
    @RequestMapping("/memberlist.do")
    public String home(@RequestParam Map<String, Object> paramMap, ModelMap model) {
         
        model.addAttribute("logins", LoginService.getLoginList());       
         
        return "memberlist";
    }

    
    
	@RequestMapping("/database.do")
	public void list(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
		model.put("datas", LoginService.getList(paramMap));
	}
	

    @RequestMapping("/GeneralMenu.do")
	public void general(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}

	
    
    @RequestMapping("/map.do")
	public void map(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}
    
    
    
    @RequestMapping("/login1.do")
	public void login1(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}
    @RequestMapping("/menu.do")
	public void menu(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
	}
    
    
    
	@RequestMapping("/writeForm.do")
	public void writeForm(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{

	}
	@RequestMapping("/writeProc.do")
	public ModelAndView writeProc(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{

		//Form 에서 넘어 오는 값  찍기  	paramMap 안에 Form 에서 넘어 오는 값이 있음	
		System.out.println("id = " + paramMap.get("id"));
		System.out.println("pwd = " + paramMap.get("pwd"));
		System.out.println("names = " + paramMap.get("names"));
		System.out.println("email = " + paramMap.get("email"));
		System.out.println("phone = " + paramMap.get("phone"));
		//저장하기 위하여 paramMap 을 넘긴다.
		int writeCnt = LoginService.writeProc(paramMap);
		
		System.out.println(writeCnt + "건 입력되었습니다/");
		
		//처리 후 redirect
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/writeForm.do");
		return mav;

	}
	
	
	
	
	
	
	
	@RequestMapping("/login.do")
	public void login(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
		
	}
	
	@RequestMapping("/loginFail.do")
	public void loginFail(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
		
	}
	
	@RequestMapping("/main.do")
	public void main(@RequestParam Map<String, Object> paramMap, ModelMap model ,Principal principal) 
			throws Throwable{
		
		//로그인 후 로그인 한 아이디를  가지고 온다.
		String name = principal.getName();
		
		model.addAttribute("username", name);
		
	}
	
	@RequestMapping("/logout.do")
	public void logout(@RequestParam Map<String, Object> paramMap, ModelMap model) throws Throwable{
		
	}

	
	
	
	
	
     
}