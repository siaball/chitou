package tw.jacky.login.model;

import java.util.Collections;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;



// 接續別人的API，使用人家的制定好的class
@Service
public class AuthUserDetailsService implements UserDetailsService {
	
	@Autowired
	private LoginService lService;

	@Override
	public UserDetails loadUserByUsername(String username)  {
		
		String role= "";
		
		AdminChitou adminchitous = lService.findByAdminUersname(username);
		System.out.println("adminusername:" + adminchitous);
		
		
		try {
			AdminChitou adminchitou = lService.findByAdminUersname(username);
			Integer adminstatus = adminchitou.getLoginStatus().getStatusid();
			if(adminstatus == 1) {
				role = "admin";
				System.out.println("是否進入if:" + role);
				return new User(adminchitou.getUsername(), adminchitou.getPassword(), AuthorityUtils.commaSeparatedStringToAuthorityList(role));
			}else if (adminstatus==2) {
				role="manager";
				System.out.println("是否進入if:" + role);
				return new User(adminchitou.getUsername(), adminchitou.getPassword(), AuthorityUtils.commaSeparatedStringToAuthorityList(role));
				
			}else if(adminstatus==3){
				role= "boss777";
				System.out.println("是否進入if:" + role);
				return new User(adminchitou.getUsername(), adminchitou.getPassword(), AuthorityUtils.commaSeparatedStringToAuthorityList(role));
			}
			
		} catch (Exception e) {
			
			MemberBasicInfo memberbean = lService.findBasicInfobyUsername(username);
			int statusid = memberbean.getLoginStatus().getStatusid();
			
			if(statusid==4) {
				role="unverified_member";
				return new User(memberbean.getUsername(), memberbean.getPassword(), AuthorityUtils.commaSeparatedStringToAuthorityList(role));
			}else if(statusid==5) {
				role="verified_member";
				return new User(memberbean.getUsername(), memberbean.getPassword(), AuthorityUtils.commaSeparatedStringToAuthorityList(role));
			}else {
				System.out.println("權限問題了 AuthUserDetailService沒跑成功");
			}
		}
		
		return null;
		
		}

}
