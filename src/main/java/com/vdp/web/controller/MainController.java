package com.vdp.web.controller;

import com.vdp.users.model.Category;
import com.vdp.users.model.User;
import com.vdp.users.model.UserRole;
import com.vdp.users.service.MyService;
import com.vdp.users.service.UserHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Controller
public class MainController   {

	@Autowired
	MyService myService;

	@Autowired
	private PasswordEncoder passwordEncoder;

	//--Links ------------------------------------------------------------
	@RequestMapping(value = { "/", "/index" }, method = RequestMethod.GET)
	public ModelAndView defaultPage() {
		ModelAndView model = new ModelAndView();

		model.addObject("products", myService.displayProducts());
		int a = myService.displayProducts().size()-1;
		model.addObject("a",a);
		int iter ;

		if ((a+1)%3==0){
			iter = a%3;
		}else iter = ((a+1)%3)+1;

		Category category = myService.find(7);
		model.addObject("top", myService.listProducts(category));

		model.addObject("iter",iter);
		model.setViewName("anonviewNew");
		return model;
	}

	@RequestMapping(value =  "/indexforuser")
	public ModelAndView defaultforUser() {
		ModelAndView model = new ModelAndView();
		model.setViewName("indexforuser");
		return model;
	}


	@RequestMapping(value = "/spread")
	public String makeSpread(){
		User user = myService.findUserByUsername(UserHelp.getUserr());
		List <UserRole> roles = new ArrayList<UserRole>();
		for (Iterator<UserRole> iterator = user.getUserRole().iterator(); iterator.hasNext();){
			roles.add(iterator.next());
		}

		if (roles.get(0).getRole().equals("ROLE_USER")) {
			return "indexforuser";
		}
		else return "redirect:/admin";


	}

	@RequestMapping("/user")
	public String user ( Model model) {
		return "userview";
	}


	@RequestMapping("/contacts")
	public String contacts ( Model model) {
		return "contacts";
	}

	//---------------------------------------------------------------------

	//----REGISTRATION--------------------------------------------------------
	@RequestMapping(value = "/formreg")
	public String reg(Model model)
	{
		return "form";
	}


	@RequestMapping(value = "/adduser")
	public ModelAndView registration(
			@RequestParam(value = "login") String login,
			@RequestParam(value = "mail") String email,
			@RequestParam(value = "password") String password,
			@RequestParam (value = "phone") String phone,
			@RequestParam (value = "name") String name
	){

		password = passwordEncoder.encode(password);
		ModelAndView modelAndView = new ModelAndView();
		User user = new User(login, password, true, email, phone, name );
		UserRole role = new UserRole(user, "ROLE_USER");
		myService.RegisterUser(user, role);
		modelAndView.setViewName("login");
		return  modelAndView;
	}
//-------------------------------------------------------------------------------

//заглушки -----------------------------------------------------


	@RequestMapping(value = "/addorder")
	public ModelAndView addOrder(){
		ModelAndView modelAndView = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth instanceof AnonymousAuthenticationToken){
			// Orders orders = new Orders("555", 5, "ano");
			//	myService.addOrder(orders);
		}else{
			User user = myService.findUserByUsername(UserHelp.getUserr());
			//  Orders order = new Orders(produc.amount, product.description, user);
		}


		modelAndView.setViewName("index");
		return modelAndView;
	}
//-----------------------------------------------------------------------

	//конец заглушек-------------------------------------------------

	//viewForDifferentUsers------------------------------------------------------------
	@RequestMapping("/top/{id}")
	public ModelAndView listCategory (@PathVariable(value = "id") long categoryId) {
		ModelAndView model = new ModelAndView();
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();

		if (!(auth instanceof AnonymousAuthenticationToken)) {

			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			ArrayList<UserRole> roles = new ArrayList<UserRole>();
			User user = myService.findUserByUsername(userDetail.getUsername());

			for (Iterator<UserRole> iterator = user.getUserRole().iterator(); iterator.hasNext();){
				roles.add(iterator.next());
			}

			if (roles.get(0).getRole().equals("ROLE_USER")) {
				Category category = myService.find(categoryId);
				model.addObject("cat",category);


				model.addObject("products", myService.listProducts(category));
				model.addObject("categories", myService.listGroups());
				model.setViewName("userview");



			}
		} else

		{
			model.setViewName("anonviewNew");
			Category category = myService.find(categoryId);
			model.addObject("cat",category);
			model.addObject("products", myService.listProducts(category));
			model.addObject("categories", myService.listGroups());

		}
		return model;
	}
	//----------------------------------------------------------------------------------



	//-login and errors--------------------------------------------------------
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	@ResponseStatus(value= HttpStatus.OK)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
							  @RequestParam(value = "logout", required = false) String logout, HttpServletRequest request) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
		}
		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");
		return model;
	}


	// customize the error message  ------------------------------------------------------
	private String getErrorMessage(HttpServletRequest request, String key) {
		Exception exception = (Exception) request.getSession().getAttribute(key);

		String error = "";
		if (exception instanceof BadCredentialsException) {
			error = "Неверный логин или пароль";
		} else if (exception instanceof LockedException) {
			error = exception.getMessage();
		} else {
			error = "Неверный логин или пароль";
		}
		return error;
	}
	//----------------------------------------------------------------------------------------

	// for 403 access denied page ---------------------------------------------------------
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied() {
		ModelAndView model = new ModelAndView();
		// check if user is login
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			System.out.println(userDetail);
			model.addObject("username", userDetail.getUsername());

		}
		model.setViewName("403");
		return model;
	}

	// ----------------------------------------------------------------------------------------
}