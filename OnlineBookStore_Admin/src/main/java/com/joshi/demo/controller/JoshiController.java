package com.joshi.demo.controller;

import java.sql.Blob;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.joshi.demo.dao.AdminDao;
import com.joshi.demo.dao.BookDao;
import com.joshi.demo.dao.OrderDao;
import com.joshi.demo.dao.UserDao;
import com.joshi.demo.model.Admin;
import com.joshi.demo.model.Book;
import com.joshi.demo.model.Order;
import com.joshi.demo.model.User;
import com.joshi.demo.repository.AdminRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class JoshiController {
	
	@Autowired
	BookDao bookDao;
	
	@Autowired
	AdminDao adminDao;
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	OrderDao orderDao;
	
	@RequestMapping("/work")
	@ResponseBody
	public String check() {
		return "Working";
	}
	
	@GetMapping("/")
	public String index() {
		return "redirect:/adminlogin";
	}
	
	
	@GetMapping("/adminlogin")
	public String adminLogin(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		if(session.getAttribute("id") != null) {
			return "redirect:/adminhome";
		}
		return "adminlogin.jsp";
	}
	
	@PostMapping("checkadminlogin")
	  public String checkAdminLogin(HttpServletRequest request, Model m) {

	    String user = request.getParameter("username");
	    String password = request.getParameter("password");
	    
	    Admin a = adminDao.validateAdmin(user);
	    HttpSession session = request.getSession();
	    if(a!=null) {
	    	if(a.getPassword().equals(password)) {
	    		int bookCount = bookDao.count();
	    		int userCount = userDao.count();
	    		session.setAttribute("bookcount", bookCount);
	    		session.setAttribute("usercount", userCount);
	    		session.setAttribute("id", user);
	    		return "redirect:/adminhome";
	    	}
	    	return "displayerror.jsp";
	    }
	    else {
	    	return "displayerror.jsp";
	    }
	  }
	
	@GetMapping("/adminhome")
	public String adminHome() {
		return "Adminhome.jsp";
	}
	
	@GetMapping("/addbook")
	public String addNewBook1(Model m) {
		Book b1 = new Book();
		m.addAttribute("command", b1);
		return "insertbook.jsp";
	}
	
	@PostMapping("/savebook")
	public String addNewBook2(@ModelAttribute("b1") Book b1,  @RequestParam("_image") MultipartFile image, HttpServletRequest request) throws Exception {
		byte[] bytes = image.getBytes();
		Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
		
		b1.setImage(blob);
		
		bookDao.addBook(b1);
		int bookCount = bookDao.count();
		int userCount = userDao.count();
		HttpSession session = request.getSession();
		session.setAttribute("bookcount", bookCount);
		session.setAttribute("usercount", userCount);
		return "redirect:showallbooks";
	}
	
	
	@GetMapping("/showallbooks")
	public String displayAllBooks(Model m) {
		List<Book> bl=bookDao.retrieveAll();
		m.addAttribute("bl", bl);
		return "showbooks.jsp";
	}
	
	
	@GetMapping("/delete/{bid}")
	public String deleteBookByUrl(@PathVariable("bid") String bid, HttpServletRequest request) {
		bookDao.delete(bid);
		HttpSession session = request.getSession();
		int bookCount = bookDao.count();
		int userCount = userDao.count();
		session.setAttribute("bookcount", bookCount);
		session.setAttribute("usercount", userCount);
		return "redirect:/showallbooks";
		
	}
	
	@GetMapping("/remove")
	public String deleteBookByJsp(Model m) {
		List<Book> ul=bookDao.retrieveAll();
		m.addAttribute("ul",ul);
		return "removebook.jsp";
	}
	
	@GetMapping("/edit")
	public String editBookByJsp(Model m) {
		List<Book> ul=bookDao.retrieveAll();
		m.addAttribute("ul",ul);
		return "/editbooks.jsp";
	}
	
	@GetMapping("/edit/{bid}")
	public String editBookById(Model m, @PathVariable("bid") String bid) {
		Optional<Book> b = bookDao.retriveByid(bid);
		m.addAttribute("command", b);
		return "/editbook.jsp";
	}
	
	
	@GetMapping("showallusers")
	public String displayAllUser(Model m) {
		List<User> ul = userDao.getAllUser();
		m.addAttribute("ul", ul);
		return "showusers.jsp";
	}
	
	@GetMapping("adminlogout")
	public String adminLogout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/adminlogin";
	}
	
	@GetMapping("/adminnavbartest")
	public String navbarTest() {
		return "adminnavbar.jsp";
	}
	
	@GetMapping("/showallorders")
	public String displayAllOrders(Model m) {
		List<Order> ol = orderDao.getAllOrders();
		m.addAttribute("command", ol);
		return "showorders.jsp";
	}
	
}
