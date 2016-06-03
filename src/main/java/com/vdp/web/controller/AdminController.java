package com.vdp.web.controller;


import com.vdp.users.model.Category;
import com.vdp.users.model.Products;
import com.vdp.users.service.MyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class AdminController {

    @Autowired
    MyService myService;





    // -------------------ADMIN PART  ---------------------------------------
    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView model = new ModelAndView();
        model.addObject("categories", myService.listGroups());
        model.addObject("products", myService.displayProducts());
        int a = myService.displayProducts().size()-1;
        model.addObject("a",a);
        int iter ;

        if ((a+1)%3==0){
            iter = a%3;
        }else iter = ((a+1)%3)+1;
         model.addObject("iter",iter);
        model.setViewName("admin1");
        return model;
    }

    @RequestMapping(value = "/pruductpp")
    public ModelAndView productPP(){
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("categories", myService.listGroups());
        modelAndView.setViewName("addproduct");
        return modelAndView;
    }

    @RequestMapping(value = "/showall")
    public ModelAndView showAll(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("users", myService.allUsers());
        modelAndView.addObject("categories", myService.listGroups());
        modelAndView.setViewName("admin2");
        return modelAndView;
    }

    @RequestMapping(value = "/showorders")
    public ModelAndView showOrders(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("orderlist", myService.viewAllOrders());
        modelAndView.addObject("categories", myService.listGroups());
        modelAndView.setViewName("admin2");
        return modelAndView;
    }

    @RequestMapping(value = "/grouppp")
    public ModelAndView groupPp(){
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("categories", myService.listGroups());
        modelAndView.setViewName("addgroup");
        return modelAndView;
    }


    @RequestMapping(value = "/delproduct")
    public ModelAndView delproduct(@RequestParam(value = "Delete[]") long [] Delete)
    {
        ModelAndView modelAndView = new ModelAndView();
        int i = Delete.length;
        Delete = Arrays.copyOf(Delete, i-2);
        if (Delete != null) {


            myService.deleteManyProducts(Delete);
            modelAndView.addObject("products", myService.displayProducts());
            modelAndView.setViewName("logout");
        }else modelAndView.setViewName("index");
        return modelAndView;
    }


    @RequestMapping(value = "/addproduct", method = RequestMethod.POST)
    public String addproduct(@RequestParam (value = "category") long categoryID,
                             @RequestParam String description,
                             @RequestParam String price,
                             @RequestParam(value="photo") MultipartFile photo,
                             Model model
    ) throws IOException {


        Category category = myService.find(categoryID);
        List<Category> categoryList = new ArrayList<Category>();
        categoryList.add(category);

        Products product = new Products(description, price, photo.getBytes(), categoryList);
        myService.addProduct(product);
        return "redirect:/admin";
    }

    @RequestMapping(value = "/addgroup" , method = RequestMethod.POST)
    public ModelAndView addgroup (@RequestParam (value = "category_name" ) String category_name
    ){
        ModelAndView model = new ModelAndView();
        Category category = new Category(category_name);
        myService.addCategory(category);
        model.addObject("products", myService.displayProducts());
        model.setViewName("adminmy");
        return model;
    }
}
