package tw.jacky.login.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.jasper.tagplugins.jstl.core.If;
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
@SessionAttributes({ "memberbean", "adminlist", "memberbasicinfo", "memberdetailinfo" })
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
//	??????

	String path_main_login = "jacky/login/";
	String path_admin_login = path_main_login + "adminlogin/";
	String path_member_login = path_main_login + "memberlogin/";
	String image_admin_page = "images/jacky/";
	String piclocation = image_admin_page + "login/";

//	------------------------------------------------------------------------------------------------------------------------------------------------------------
// Mapping??????

//	------------------------------------------------------------------------------------------------------------------------------------------------------------
// ??????

	String page_memberhomepage = path_member_login + "MemberHomePage";
	String page_memberlogin = path_member_login + "MemberLogin";

//	------------------------------------------------------------------------------------------------------------------------------------------------------------
//	??????????????????

//	------------------------------------------------------------------------------------------------------------------------------------------------------------

	@RequestMapping(path = "toMemberHomePage")
	public String MemberHomePage(Model m) {
		
		try {
			MemberBasicInfo memberbasicinfo =(MemberBasicInfo) m.getAttribute("memberbasicinfo");
			
			int memberid = memberbasicinfo.getMemberid();

			System.out.println("????????????id:"+memberid);
			

				
				return path_member_login + "MemberHomePage";
			
			
		} catch (Exception e) {
			return path_admin_login + "AdminLogin";
		
		}
		
	}

// ??????????????????
	@GetMapping("/MemberModifyPassword")
	public String processMemberModifyPassword() {
		return path_member_login + "MemberChangePassword";
	}

// ?????????homepage??????
	@GetMapping("/MemberVerifyEmail")
	public String processMemberVerifyEmail(Model m) {

		MemberBasicInfo memberbasicinfo = (MemberBasicInfo) m.getAttribute("memberbasicinfo");
		MemberDetailInfo memberdetailinfo = (MemberDetailInfo) m.getAttribute("memberdetailinfo");

//		System.out.println("????????????????????????:" + memberbasicinfo.getLoginStatus().getStatusid());

		if (memberbasicinfo.getLoginStatus().getStatusid() == 4) {
//		System.out.println("?????????????????????");
			String randomCode = RandomString.make(3);
//		MemberBasicInfo memberbean = lservice.findByMemberid(memberbasicinfo.getMemberid());
//		MemberDetailInfo memberdetailbean = lservice.findDetailByMemberid(memberbean.getMemberid());
			memberbasicinfo.setVerificationcode(randomCode);
//		System.out.println("member???????????????:" + memberbean.getStatusid());
			lservice.adminModifyMember(memberbasicinfo);
			gmailController.sendVerificationEmailStatusId(memberbasicinfo, memberdetailinfo);
		} else {
			m.addAttribute("operation_Status", 1);
			return path_member_login + "MemberHomePage";
		}

		return path_member_login + "MemberRegisterVerificationPage";

	}

	
//	??????????????????
	@PostMapping(path = "/MemberModifyPasswordToDB")
	public String processMemberModifyPasswordToDB(@RequestParam("password") String password, HttpServletRequest request,Model m) {
		MemberBasicInfo memberbean = (MemberBasicInfo) request.getSession().getAttribute("memberbasicinfo");
//		System.out.println("??????memberbasicinfo bean???????????????:" + memberbean.getEmail());
		memberbean.setPassword(password);
		String newpassword = managementSystemController.encrpytMemberPassword(memberbean);
		memberbean.setPassword(newpassword);
		lservice.adminUpdateMember(memberbean);
		m.addAttribute("operation", 2);
		return "NewHome";
	}

//	????????????????????????
	@PostMapping(path = "/MemberModifyMemberDetail")
	public String processMemberModifyMemberDetail(@RequestParam("memberid") String memberid_String,
			@RequestParam("name") String name, @RequestParam("email") String email, @RequestParam("phone") String phone,
			@RequestParam("nickname") String nickname, @RequestParam("nationality") String nationality,
			@RequestParam("birth") String birth, @RequestParam("gender") String gender,
			@RequestParam("address") String address, @RequestParam("myFile") MultipartFile mf, Model m) {

		String filename = mf.getOriginalFilename();
		String photo_path = lservice.savePicToLocal(mf);
		String pic_locaiton = piclocation + photo_path;

		Integer memberid = Integer.parseInt(memberid_String);
		MemberBasicInfo memberbasicinfo = lservice.findByMemberid(memberid);
		MemberDetailInfo memberdetailinfo = lservice.findDetailByMemberid(memberid);
		Date date = new Date();
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String modifytime = simpleDateFormat.format(date);
		
//		System.out.println("??????:" + gender);

		memberbasicinfo.setEmail(email);

		memberdetailinfo.setName(name);
		memberdetailinfo.setAddress(address);
		memberdetailinfo.setNickname(nickname);
		memberdetailinfo.setPhone(phone);
		memberdetailinfo.setBirth(birth);
		memberdetailinfo.setNationality(nationality);
		memberdetailinfo.setGender(gender);
		memberdetailinfo.setModifytime(modifytime);
		
		System.out.println("????????????:" +filename);

		if (filename != "") {
			System.out.println("???????????????");
			memberbasicinfo.setPhoto(pic_locaiton);
		}

		lservice.adminModifyMember(memberbasicinfo);
		lservice.adminInsertMemberDetailInfo(memberdetailinfo);

		m.addAttribute("memberdetailinfo", memberdetailinfo);
		m.addAttribute("memberbasicinfo", memberbasicinfo);

		return "redirect:toMemberHomePage";

	}

}
