package com.zhiyou.action;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Session;
import org.hibernate.sql.Delete;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;
import com.sun.xml.internal.ws.message.StringHeader;
import com.zhiyou.model.User;
import com.zhiyou.service.UserService;

import net.sf.ehcache.util.FindBugsSuppressWarnings;

@Controller("userAction")
@ParentPackage(value = "user")
@Namespace("")
public class UserAction extends ActionSupport implements ModelDriven<User> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private User user = new User();

	
	@Resource
	private UserService userService;

	private String newPwd;
	private String oldPwd;
	private String conpwd;
	private String regPwd;
	
	@Action(value = "add", results = { @Result(name = "input", location = "success.jsp") })
	public String add() {
		System.out.println("测试2");
		userService.add(new User("xx", 22));

		return INPUT;

	}

	@Action(value = "infoUpdate", results = { @Result(name = "success", type="chain", location = "findById") })
	public String infoUpdate() {
		
		User users = userService
				.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));
		users.setAvatar(user.getAvatar());
		users.setUserName(user.getUserName());
		users.setNickName(user.getNickName());
		users.setAge(user.getAge());
		users.setIntroduction(user.getIntroduction());
		
		userService.update(users);
		
		
		
		
		return SUCCESS;
	}
	
	@Action(value = "TZ", results = { @Result(name = "success", location = "login.jsp") })
	public String TZ() {
		return SUCCESS;
	}
	@Action(value = "regist", results = { @Result(name = "success", location = "regist.jsp") })
	public String regist() {
		return SUCCESS;
	}
	@Action(value = "registZC", results = { @Result(name = "success", location = "login.jsp") })
	public String registZC() {
		User use1r=new User();
		use1r.setEmail(user.getEmail());
		use1r.setPwd(user.getRegPwd());
		userService.add(use1r);
		return SUCCESS;
	}
	
	
	@Action(value = "updatePwd", results = { @Result(name = "success", location = "pwd.jsp") })
	public String updatePwd() {
		User user = userService
				.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));
		ValueStack vs=ActionContext.getContext().getValueStack();
		vs.set("user", user);
		return SUCCESS;
	}
	@Action(value = "updatePwd1", 
			
			results = { @Result(name="input",location="pwd.jsp"),
					@Result(name = "success", type = "chain", location = "findById" ) })
	public String updatePwd1() {
		User users = userService
				.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));

		if (users.getPwd().equals(user.getOldPwd())) {
			users.setPwd(user.getNewPwd());
			userService.update(users);
			return SUCCESS;
		}
		else {
			System.out.println("原始密码错误，请仔细确认");
			return INPUT;
		}
		
		
	}
	@Action(value = "updateInfo", results = { @Result(name = "success", location = "info.jsp") })
	public String updateInfo() {
		User user = userService
				.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));
		ValueStack vs=ActionContext.getContext().getValueStack();
		vs.set("user", user);
		
		return SUCCESS;
	}

	@Action(value = "findById2", results = { @Result(name = "input", location = "blog/index.jsp") })
	public String findById2() {

		User user = userService.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));

		Set list = user.getBlogs();

		Set set = user.getBlogtypes();

		ValueStack vs = ActionContext.getContext().getValueStack();
		vs.set("_USER_MODEL", user);
		vs.set("types", set);
		vs.set("pageInfo", list);
		return INPUT;

	}

	@Action(value = "findById", results = { @Result(name = "input", location = "admin.jsp") })
	public String findById() {

		User user = userService.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));
		ValueStack vs = ActionContext.getContext().getValueStack();

		vs.set("_USER_MODEL", user);
		return INPUT;

	}

	@Action(value = "logins", results = { @Result(name = "success", type = "chain", location = "findById") })
	public String logins() {
		List<User> users = userService.selectbyemail(user.getEmail());
		for (User user : users) {
			String as = user.getPwd();
			String em = user.getEmail();
			Integer id = user.getId();
			if (users == null) {
				System.out.println("没有该用户，请注册用户");

			} else {
				if (as.equals(user.getPwd())) {
					ServletActionContext.getRequest().getSession().setAttribute("em", em);
					ServletActionContext.getRequest().getSession().setAttribute("id", id);
					ServletActionContext.getRequest().getSession().setAttribute("user", user);
					System.out.println("登录成功");
					return "success";
				} else {
					System.out.println("密码错误");
				}

			}

		}
		return null;

	}

	@Action(value = "findall", results = { @Result(name = "SUCCESS", location = "success.jsp") })
	public String findall() {
		System.out.println("测试3");
		List<User> list = userService.findall();
		System.out.println(list);
		ValueStack vs = ActionContext.getContext().getValueStack();

		vs.set("list", list);

		return SUCCESS;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getOldPwd() {
		return oldPwd;
	}

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	public String getConpwd() {
		return conpwd;
	}

	public void setConpwd(String conpwd) {
		this.conpwd = conpwd;
	}

	public String getRegPwd() {
		return regPwd;
	}

	public void setRegPwd(String regPwd) {
		this.regPwd = regPwd;
	}

	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

}
