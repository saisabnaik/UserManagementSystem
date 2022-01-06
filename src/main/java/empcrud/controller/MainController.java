package empcrud.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import empcrud.admin.Admin;
import empcrud.admindao.AdminDao;
import empcrud.dao.EmpDao;
import empcrud.model.Emp;
import empcrud.model.EmployeeRequest;

@Controller
public class MainController {
	@Autowired
	private EmpDao empDao;
	@Autowired
	private AdminDao adminDao;
	
	@RequestMapping("/")
    public String login( Model m)
	
	{
		List<Emp> emps=empDao.getEmps();
		m.addAttribute("emps", emps);
		return "login";
	}
	@RequestMapping("/signup")
    public String signup( Model m)
	
	{
		
		return "signup";
	}
	@RequestMapping("/login")
    public String logintime( Model m)
	
	{
		
		return "login";
	}
	@RequestMapping("/logout")
    public String logout( Model m)
	
	{
		
		return "login";
	}
	
	@RequestMapping("/index")
	public String index( Model m)
	
	{
		List<Emp> emps=empDao.getEmps();
		m.addAttribute("emps", emps);
		
		return "index";
	}
	@RequestMapping("/add_emp")
	public String addEmp(Model m)
	{
		m.addAttribute("title","Add Emp");
		return "add_emp_form";
	}
	@RequestMapping("/delete_emp")
	public String deleteEmps(Model m)
	{
		List<Emp> emps=empDao.getEmps();
		m.addAttribute("emps", emps);
		m.addAttribute("title","Delete Emp");
		return "delete_emp";
	}
	@RequestMapping("/update_view")
	public String updateView(Model m)
	{
		List<Emp> emps=empDao.getEmps();
		m.addAttribute("emps", emps);
		m.addAttribute("title","Delete Emp");
		return "update_view";
	}
	@RequestMapping("/update")
	public String update(Model m)
	{
		List<Emp> emps=empDao.getEmps();
		m.addAttribute("emps", emps);
		m.addAttribute("title","Delete Emp");
		return "update_emp";
	}
	
    //handle emp form
	@RequestMapping(value = "/handle-emp" , method = RequestMethod.POST)
	public RedirectView handleEmp(@ModelAttribute EmployeeRequest emp ,HttpServletRequest request)
	
	{
		System.out.println(emp.toString()); 
		Date frmDt=null;
		final SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		try {
			 frmDt = !emp.getDob().equals("")?sdf.parse(emp.getDob()):null;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Emp emp1=new Emp();
		emp1.setId(emp.getId());
		emp1.setDob(frmDt);
		emp1.setEmail(emp.getEmail());
		emp1.setGender(emp.getGender());
		emp1.setName(emp.getName());
		emp1.setPhno(emp.getPhno());
		emp1.setSalary(emp.getSalary());
		empDao.createEmp(emp1);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/index");
		return redirectView;
		
	}
	@RequestMapping(value = "/handle_signup" , method = RequestMethod.POST)
	public RedirectView handleSignup(@ModelAttribute Admin admin ,HttpServletRequest request)
	
	{
		System.out.println(admin); 
		adminDao.createAdmin(admin);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	@RequestMapping(value = "/handle_login" , method = RequestMethod.POST)
	public RedirectView handleLogin(@ModelAttribute Admin admin ,HttpServletRequest request)
	
	{
		System.out.println(admin); 
		admin= adminDao.getAdmin(admin.getEmail());
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
		
	}
	//delete handler
	@RequestMapping("/delete/{empId}")
	public RedirectView deleteEmp(@PathVariable("empId") int empId ,HttpServletRequest request)
	{
		this.empDao.deleteEmp(empId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/index");
		return redirectView;
		
	}
	@RequestMapping("/update/{empId}")
	public String updateEmps(@PathVariable("empId") int eid,Model model)
	{
		Emp emps=this.empDao.getEmp(eid);
		model.addAttribute("emps", emps);
		return "update_emp";
		  
	}
}
