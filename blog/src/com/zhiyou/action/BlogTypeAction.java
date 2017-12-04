package com.zhiyou.action;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.type.TimestampType;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.util.ValueStack;
import com.sun.jmx.snmp.Timestamp;
import com.zhiyou.model.Blogtype;
import com.zhiyou.model.User;
import com.zhiyou.service.BlogService;
import com.zhiyou.service.BlogTypeService;
import com.zhiyou.service.UserService;

@Namespace("/blogType")
@Controller("blogTypeAction")
@ParentPackage(value = "blogtype")

public class BlogTypeAction extends ActionSupport implements ModelDriven<Blogtype> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Blogtype blogType = new Blogtype();
	private Integer id;
	private Integer idt;
	private Map<String, Object> data;
	@Resource
	private BlogService blogService;
	@Resource
	private BlogTypeService blogTypeService;
	@Resource
	private UserService userService;

	@Action(value = "queryList", results = { @Result(name = "success", location = "types.jsp") })
	public String queryList() {
		User user = userService.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));

		Set set = user.getBlogtypes();

		List<Blogtype> blogtype = blogTypeService.findall();
		ValueStack vs = ActionContext.getContext().getValueStack();
		vs.set("pageInfo", set);
		vs.set("types", blogtype);

		vs.set("_USER_MODEL", user);
		return SUCCESS;
	}

	@Action(value = "Mhcx", results = { @Result(name = "success", location = "types.jsp") })
	public String Mhcx() {

		User user = userService.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");

		String a = df.format(blogType.getInsertTime());
		String b = df.format(blogType.getUpdateTime());

		List<Blogtype> blogtype = blogTypeService.selectMhcx(a, b, blogType.getTitle());
		ValueStack vs = ActionContext.getContext().getValueStack();
		vs.set("pageInfo", blogtype);

		vs.set("_USER_MODEL", user);
		return SUCCESS;
	}

	@Action(value = "dk", results = { @Result(name = "input", type = "json", params = { "root", "data" }) })
	public String dk() {
		
		User user = userService.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));
		data = new HashMap<String, Object>();
		Blogtype blogtype2 = blogTypeService.selectbyId(idt);
		System.out.println(blogtype2);
		data.put("data", blogtype2);
	

		data.put("success", true);
		data.put("message", "更新分类信息成功");
		return "input";

	}

	public void setData(Map<String, Object> data) {
		this.data = data;
	}

	@Action(value = "create", results = { @Result(name = "inout", type = "json", params = { "root", "data" }) })
	public String create() {
		User user = userService.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));

		Blogtype blogtype1 = new Blogtype();
		blogtype1.setDescr(blogType.getDescr());
		blogtype1.setTitle(blogType.getTitle());
		blogtype1.setUser(user);
		blogTypeService.add(blogtype1);

		data = new HashMap<String, Object>();

		data.put("success", "添加新分类成功");

		return "inout";

	}
	@Action(value = "update", results = { @Result(name = "input", type = "json", params = { "root", "data" }) })
	public String update() {
		User user = userService.selectbyId((Integer) ServletActionContext.getRequest().getSession().getAttribute("id"));
	
		  Blogtype blogtype=blogTypeService.selectbyId(idt);
		  blogtype.setDescr(blogType.getDescr());
		  blogtype.setTitle(blogType.getTitle());
		  blogtype.setUser(user);
		System.out.println(blogtype);
		blogTypeService.update(blogtype);

		data = new HashMap<String, Object>();

		data.put("success", "添加新分类成功");
		
		
		return "input";
		
	}
	@Action(value = "delete", results = { @Result(name = "input", type = "chain", location = "queryList") })
	public String delete() {

		System.out.println("xecee测试");
		blogTypeService.delete(blogType.getId());

		return INPUT;

	}

	public BlogService getBlogService() {
		return blogService;
	}

	public void setBlogService(BlogService blogService) {
		this.blogService = blogService;
	}

	public BlogTypeService getBlogTypeService() {
		return blogTypeService;
	}

	public void setBlogTypeService(BlogTypeService blogTypeService) {
		this.blogTypeService = blogTypeService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Map<String, Object> getData() {
		return data;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	

	public Integer getIdt() {
		return idt;
	}

	public void setIdt(Integer idt) {
		this.idt = idt;
	}

	@Override
	public Blogtype getModel() {
		// TODO Auto-generated method stub
		return blogType;
	}

}
