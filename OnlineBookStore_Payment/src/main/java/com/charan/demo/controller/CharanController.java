package com.charan.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
@Controller
public class CharanController {
	
	@ResponseBody
	@RequestMapping("/work")
	public String working() {
		return "pani chesthundhi lera";
	}
	
	@GetMapping("/payment/{price}")
	public String payment(HttpServletRequest request, Model m, @PathVariable("price") double price) {
		HttpSession session = request.getSession();
		session.setAttribute("price", price);
		m.addAttribute("price", price);
		return "/payment.jsp";
	}
	
	@GetMapping("/reciept")
	public String reciept(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Double price = (Double)session.getAttribute("price");
		
		String result = null;
		try {
			
			URL url = new URL("http://localhost:8080/updatepayment"); //set the URL of another app
			HttpURLConnection con = (HttpURLConnection) url.openConnection(); //opening connection
			con.setRequestMethod("GET"); //set the http method
//			con.setRequestProperty("Accept", "application/json"); // Reciever
			//Below line is not required for GET method (Required for POST methods)
			//con.setRequestProperty("Content-Type", "application/json"); //Sender
			con.setUseCaches(false); //Disabling Cache.
			//Below line is not required for GET method (Required for POST methods)
			//con.setDoOutput(true);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			result = br.readLine();
			System.out.println(result);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return "reciept.jsp";
	}
}
