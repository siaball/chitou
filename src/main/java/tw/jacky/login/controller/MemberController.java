package tw.jacky.login.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonAnyGetter;

import net.bytebuddy.utility.RandomString;
import tw.chitou.gmail.controller.GmailController;
import tw.chitou.gmail.model.GmailService;
import tw.jacky.login.model.AdminChitou;
import tw.jacky.login.model.LoginService;
import tw.jacky.login.model.MemberBasicInfo;
import tw.jacky.login.model.MemberDetailInfo;

@Controller
@SessionAttributes({ "memberbean", "adminlist", "memberbasicinfo" ,"memberdetailinfo" })
@RequestMapping("/uvmember")
public class MemberController {

	@Autowired
	private LoginService lservice;

	@Autowired
	private ManagementSystemController managementSystemController;

	@Autowired
	private GmailController gmailController;

	@Autowired
	private GmailService gService;

//	------------------------------------------------------------------------------------------------------------------------------------------------------------
//	路徑

	String path_main_login = "jacky/login/";
	String path_admin_login = path_main_login + "adminlogin/";
	String path_member_login = path_main_login + "memberlogin/";
	String image_admin_page = "images/jacky/";
	String piclocation = image_admin_page + "login/";

//	------------------------------------------------------------------------------------------------------------------------------------------------------------
// Mapping方法

//	------------------------------------------------------------------------------------------------------------------------------------------------------------
// 頁面

	String page_memberhomepage = path_member_login + "MemberHomePage";
	String page_memberlogin = path_member_login + "MemberLogin";

//	------------------------------------------------------------------------------------------------------------------------------------------------------------
//	會員登入界面

//	------------------------------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping(path = "toMemberHomePage")
	public String MemberHomePage() {
		return path_member_login + "MemberHomePage";
	}






// 會員更改密碼
	@GetMapping("/MemberModifyPassword")
	public String processMemberModifyPassword() {
		return path_member_login + "MemberChangePassword";
	}
	
	
// 會員在homepage送信
	@GetMapping("/MemberVerifyEmail")
	public String processMemberVerifyEmail(Model m) {
		
		
		
	MemberBasicInfo memberbasicinfo = (MemberBasicInfo)m.getAttribute("memberbasicinfo");
	MemberDetailInfo memberdetailinfo = (MemberDetailInfo)m.getAttribute("memberdetailinfo");
	String randomCode = RandomString.make(15);
	
	System.out.println("有無取得基本資料:" + memberbasicinfo.getStatusid());
	
	if(memberbasicinfo.getStatusid()== 4) {
//		System.out.println("有無進到方法内");
		MemberBasicInfo memberbean = lservice.findByMemberid(memberbasicinfo.getMemberid());
		MemberDetailInfo memberdetailbean = lservice.findDetailByMemberid(memberbean.getMemberid());
		memberbean.setVerificationcode(randomCode);		
		gmailController.sendVerificationEmail(memberbasicinfo, memberdetailinfo);
	}else {
		m.addAttribute("operation_Status", 1);
		return path_member_login + "MemberHomePage";
	}
	
	
	return path_member_login + "MemberRegisterVerificationPage";
	
	}
	
	
	@PostMapping(path="/MemberModifyPasswordToDB")
	public String processMemberModifyPasswordToDB(@RequestParam("password") String password, HttpServletRequest  request) {
		MemberBasicInfo memberbean =(MemberBasicInfo) request.getSession().getAttribute("memberbasicinfo");
		System.out.println("我的memberbasicinfo bean是否取到值:" + memberbean.getEmail());
		memberbean.setPassword(password);
		String newpassword = managementSystemController.encrpytMemberPassword(memberbean);
		memberbean.setPassword(newpassword);
		lservice.adminUpdateMember(memberbean);
		
		return path_member_login + "MemberHomePage";
	}
	



}
