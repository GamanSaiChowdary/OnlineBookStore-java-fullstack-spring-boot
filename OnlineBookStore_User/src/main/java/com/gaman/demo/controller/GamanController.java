package com.gaman.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gaman.demo.dao.BookDao;
import com.gaman.demo.dao.CartDao;
import com.gaman.demo.dao.OrderDao;
import com.gaman.demo.dao.UserDao;
import com.gaman.demo.model.Book;
import com.gaman.demo.model.Cart;
import com.gaman.demo.model.Order;
import com.gaman.demo.model.User;
import com.gaman.demo.util.CaptchaUtil;
import com.gaman.demo.util.EmailManager;

import cn.apiclub.captcha.Captcha;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class GamanController {
	
	@Autowired
	UserDao userDao;
	
	@Autowired
	BookDao bookDao;
	
	@Autowired
	EmailManager em;
	
	@Autowired
	OrderDao orderDao; 
	
	@Autowired
	CartDao cartDao;
	
	@RequestMapping("/")
	public String index(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("email"));
		if(session.getAttribute("email") != null)
			return "redirect:/userhome";
		return "index.jsp";
	}
	
	@RequestMapping("/about")
	public String about(HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("email") != null)
			return "redirect:/userhome";
		return "about.jsp";
	}
	
	
	@RequestMapping("/userlogin")
	public String userLogin(Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(session.getAttribute("email") != null)
			return "redirect:/userhome";
		Captcha captcha = CaptchaUtil.createCaptcha(250, 50);
		User u = new User();
		u.setHiddenCaptcha(captcha.getAnswer());
		u.setCaptcha("");
		u.setRealCaptcha(CaptchaUtil.encodeCaptcha(captcha));
		m.addAttribute("command", u);
		return "userlogin.jsp";
	}
	
	
	@RequestMapping("/contact")
	public String contact(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("email"));
		if(session.getAttribute("email") != null)
			return "redirect:/usercontact";
		return "contact.jsp";
	}
	
	@RequestMapping("/signup")
	public String register1(Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("email"));
		if(session.getAttribute("email") != null)
			return "redirect:/userhome";
		Captcha captcha = CaptchaUtil.createCaptcha(250, 50);
		User u = new User();
		u.setHiddenCaptcha(captcha.getAnswer());
		u.setCaptcha("");
		u.setRealCaptcha(CaptchaUtil.encodeCaptcha(captcha));
		m.addAttribute("command", u);
		System.out.println(u.getHiddenCaptcha());
		return "signup.jsp";
	}
	
	@PostMapping("/save")
	public String register2(@ModelAttribute("u") User u1) {
		if(! userDao.checkUserExistingOrNot(u1.getEmail())) {
			if(u1.getPassword().equals(u1.getConfirmPassword())) {
				if(u1.getCaptcha().equals(u1.getHiddenCaptcha())) {
					userDao.registerNewUser(u1);
					String frommail = "gamansaichowdary@gmail.com";
					String toemail = u1.getEmail();
					String subject = "Successfully Registered";
					String text = "Hey, Thankyou for registering on on our application Online Book Store.";
					System.out.println(em.sendEmail(frommail, toemail, subject, text));
					return "redirect:/userlogin";
				}
				else {
					return "redirect:/captchaerror";
				}
			}
			else {
				return "redirect:/passwordmatcherror";
			}
		}
		else {
			return "redirect:/existserror";
		}
	}
	
	@RequestMapping("/passwordmatcherror")
	public String passwordMatchError() {
		return "passwordmatcherror.jsp";
	}
	
	@RequestMapping("/captchaerror")
	public String captchaError() {
		return "captchaerror.jsp";
	}
	
	@RequestMapping("/existserror")
	public String existsError() {
		return "existserror.jsp";
	}
	
	@PostMapping("/userhome")
	public String userHome(@ModelAttribute("u") User u1, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if(userDao.checkUserExistingOrNot(u1.getEmail())) {
			User dbUser = userDao.getUserByEmail(u1.getEmail());
			if(u1.getCaptcha().equals(u1.getHiddenCaptcha())) {
				
				if(userDao.authenticateUser(u1, dbUser)) {
					session.setAttribute("email", dbUser);
					return "redirect:/userhome";
				}
				else {
					return "incorrectpassword.jsp";
				}
			}
			else {
				return "redirect:/captchaerror";
			}
		}
		else {
			return "nousererror.jsp";
		}
	}
	
	@GetMapping("/userhome")
	public String userHome() {
		
		return "userhome.jsp";
	}
	
	@GetMapping("/nav")
	public String nav() {
		return "usernavbar.jsp";
	}
	
	
	@GetMapping("/logout")
	public String logOut(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "redirect:/";
	}
		
	
	
	@GetMapping("/book-crime-and-mystery")
	public String book_CrimeAndMystery(Model m) {
		List<Book> allBooks = bookDao.getBooks();
		List<Book> cmBooks = new ArrayList<>();
		for(Book b : allBooks) {
			if(b.getGenre().equals("Crime & Mystery")) {
				cmBooks.add(b);
			}
		}
		m.addAttribute("books", cmBooks);
		return "book.jsp";
	}
	
	@GetMapping("/book-adventure")
	public String book_Adventure(Model m) {
		List<Book> allBooks = bookDao.getBooks();
		List<Book> aBooks = new ArrayList<>();
		for(Book b : allBooks) {
			if(b.getGenre().equals("Adventure")) {
				aBooks.add(b);
			}
		}
		m.addAttribute("books", aBooks);
		return "book.jsp";
	}
	
	@GetMapping("/book-humour")
	public String book_Humour(Model m) {
		List<Book> allBooks = bookDao.getBooks();
		List<Book> hBooks = new ArrayList<>();
		for(Book b : allBooks) {
			if(b.getGenre().equals("Humour")) {
				hBooks.add(b);
			}
		}
		m.addAttribute("books", hBooks);
		return "book.jsp";
	}
	
	@GetMapping("/book-science-and-history")
	public String book_ScienceAndHistory(Model m) {
		List<Book> allBooks = bookDao.getBooks();
		List<Book> shBooks = new ArrayList<>();
		for(Book b : allBooks) {
			if(b.getGenre().equals("Science & History")) {
				shBooks.add(b);
			}
		}
		m.addAttribute("books", shBooks);
		return "book.jsp";
	}
	
	@GetMapping("/book-biography-and-autobiography")
	public String book_Biography_And_Autobiography(Model m) {
		List<Book> allBooks = bookDao.getBooks();
		List<Book> bnbBooks = new ArrayList<>();
		for(Book b : allBooks) {
			if(b.getGenre().equals("Biography & Non Biography")) {
				bnbBooks.add(b);
			}
		}
		m.addAttribute("books", bnbBooks);
		return "book.jsp";
	}
	
	
	@GetMapping("/book/{bid}")
	public String dislpayBook(HttpServletRequest request, @PathVariable("bid") String bid) {
		List<Book> allBooks = bookDao.getBooks();
		Book b = null;
		for(Book i : allBooks) {
			if(i.getBookid().equals(bid)) {
				b = i;
				break;
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("book", b);

		return "redirect:/book";
	}
	
	@GetMapping("/book")
	public String dislpayBook(Model m, HttpServletRequest request) {
		HttpSession session = request.getSession(); 
		m.addAttribute("book", session.getAttribute("book"));
		return "/bookdetails.jsp";
	}
	
	@GetMapping("/booking")
	public String booking1(Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Book b = (Book)session.getAttribute("book");
//		System.out.println(b);
		session.setAttribute("payment", null);
		session.setAttribute("book-price", b.getPrice() + 40);
		m.addAttribute("book", session.getAttribute("book"));
		
		return "/booking.jsp";
	}
	@GetMapping("/userprofile")
	public String UserDetails() {
		return "/UserDetails.jsp";
	}
	
	@PostMapping("/contact-mail")
	public String contactMail(HttpServletRequest request) {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
	
//		System.out.println(name);
//		System.out.println(email);
//		System.out.println(subject);
//		System.out.println(message);
		
		String frommail1 = "gamansaichowdary@gmail.com";
		String toemail1 = "gamangarapati@gmail.com";
		String subject1 = "Mail Request from " + email;
		String text1 = "Subject: " + subject + "\n" + message;
		System.out.println(em.sendEmail(frommail1, toemail1, subject1, text1));
		
		
		String frommail2 = "gamansaichowdary@gmail.com";
		String toemail2 = email;
		String subject2 = "Thank you for contacting us " + name;
		String text2 = "We recieved your query with subject: " + subject;
		System.out.println(em.sendEmail(frommail2, toemail2, subject2, text2));
		
		return "redirect:/contact";
	}
	
	@GetMapping("/usercontact")
	public String userContact() {
		return "usercontact.jsp";
	}
	
	
	@PostMapping("/search")
	public String searchRedirect(Model m, HttpServletRequest request) {
		String key = request.getParameter("key");
		List<Book> allBooks = bookDao.getBooks();
		List<Book> searchResults = new ArrayList<>();
		key = key.toLowerCase();
		for(Book i : allBooks) {
			String name = i.getName().toLowerCase();
			String author = i.getAuthor().toLowerCase();
			String genre = i.getGenre().toLowerCase();
			String type = i.getType().toLowerCase();
			if(name.contains(key) || author.contains(key) || genre.contains(key) || 
					type.contains(key)) {
				searchResults.add(i);
			}
		}
		int index = 0;
		for(Book i : allBooks) {
			if(!searchResults.contains(i))
				if(index%2 == 0) {
					searchResults.add(i);
				}
			index++;
		}
		m.addAttribute("books", searchResults);
		return "searchbooks.jsp";
	}
	
	@ResponseBody
	@GetMapping("/updatepayment")
	public String updatePayment(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("payment", "done");
		return "Comitted";
	}
	
	
	@GetMapping("/updateorder")
	public String updateOrder(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("payment", null);
		Book b = (Book)session.getAttribute("book");
		System.out.println(b);
		User u = (User)session.getAttribute("email");
		System.out.println(u);
		
		String address = request.getParameter("address");
		System.out.println(address);
		String city = request.getParameter("city");
		System.out.println(city);
		long pincode = Long.parseLong(request.getParameter("pincode"));		
		System.out.println(pincode);
		
		Order o = new Order();
		o.setEmail(u.getEmail());
		o.setAdderss(address);
		o.setCity(city);
		o.setPincode(pincode);
		o.setPhno(u.getPhno());
		o.setBookId(b.getBookid());
		o.setBookName(b.getName());
		o.setBookGenre(b.getGenre());
		o.setBookAuthor(b.getAuthor());
		o.setBookPrice(b.getPrice());
		
		orderDao.newOrder(o);
		
		return "redirect:/userorders";
	}
	
	@GetMapping("/userorders")
	public String userOrders(Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User)session.getAttribute("email");
		List<Order> ol = orderDao.getAllOrders();
		List<Order> userOrders = new ArrayList<>();
		for(Order i : ol) {
			if(i.getEmail().equals(u.getEmail())) {
				userOrders.add(i);
			}
		}
		m.addAttribute("ol", userOrders);
		return "userorders.jsp";
	}

	@GetMapping("/addToCart/{bid}")
	public String addToCart(@PathVariable("bid") String bid, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User)session.getAttribute("email");
		Cart c = new Cart();
		c.setBookId(bid);
		c.setEmail(u.getEmail());
		boolean flag = true;
		List<Cart> cl = cartDao.getAllCartItems();
		for(Cart i : cl) {
			if(i.getBookId().equals(bid) && i.getEmail().equals(u.getEmail())) {
				flag = false;
			}
		}
		if(flag)
			cartDao.addToCart(c);
		return "redirect:/usercart";
	}
	
	@GetMapping("/usercart")
	public String addToCart(Model m, HttpServletRequest request) {
		
		List<Cart> cl = cartDao.getAllCartItems();
		HttpSession session = request.getSession();
		User u = (User)session.getAttribute("email");
		
		List<String> userCartItems = new ArrayList<>();
		
		for(Cart i : cl) {
			if(i.getEmail().equals(u.getEmail())) {
				userCartItems.add(i.getBookId());
			}
		}
		
		List<Book> allBoooks = bookDao.getBooks();
		
		List<Book> uci = new ArrayList<>();
		
		for(Book i : allBoooks) {
			if(userCartItems.contains(i.getBookid())) {
				uci.add(i);
			}
		}
		m.addAttribute("command", uci);
		session.setAttribute("cart-books", uci);
		return "usercart.jsp";
	}
	
	
	@GetMapping("/cartbooking")
	public String cartBooking(Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Book> bl = (List<Book>)session.getAttribute("cart-books");
		m.addAttribute("command", bl);
		return "cartbooking.jsp";
	}
	
	
	@GetMapping("/cartorderupdate")
	public String cartOrderUpdate(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<Book> bl = (List<Book>)session.getAttribute("cart-books");
		
		User u = (User)session.getAttribute("email");
		System.out.println(u);
		
		String address = request.getParameter("address");
		System.out.println(address);
		String city = request.getParameter("city");
		System.out.println(city);
		long pincode = Long.parseLong(request.getParameter("pincode"));		
		System.out.println(pincode);
		
		
		for(Book i : bl) {
			Order o = new Order();
			
			o.setEmail(u.getEmail());
			o.setAdderss(address);
			o.setCity(city);
			o.setPincode(pincode);
			o.setPhno(u.getPhno());
			o.setBookId(i.getBookid());
			o.setBookName(i.getName());
			o.setBookGenre(i.getGenre());
			o.setBookAuthor(i.getAuthor());
			o.setBookPrice(i.getPrice());
			
			orderDao.newOrder(o);
			
			cartDao.removeById(i.getBookid(), u.getEmail());
		}
		
		
		
		
		
		return "redirect:/userorders";
	}
	
	@GetMapping("/removefromcart/{bid}")
	public String removeFromCart(@PathVariable("bid") String bid, HttpServletRequest request) {
		HttpSession session = request.getSession();
		User u = (User)session.getAttribute("email");
		cartDao.removeById(bid, u.getEmail());
		return "redirect:/usercart";
	}
}
