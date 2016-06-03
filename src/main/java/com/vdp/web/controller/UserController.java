package com.vdp.web.controller;


import com.vdp.users.model.Orders;
import com.vdp.users.model.Products;
import com.vdp.users.model.User;
import com.vdp.users.service.MyService;
import com.vdp.users.service.UserHelp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

@Controller
public class UserController {


    @Autowired
    MyService myService;


    // ---------------USER PART-------------------------------------------


    @RequestMapping(value = "/buy")
    public ModelAndView buyProducts(){
        ModelAndView modelAndView = new ModelAndView();
        User user = myService.findUserByUsername(UserHelp.getUserr());
        Orders order = new Orders(user.getAmount(user.getProductsSet()), user.getName(), user.getProductsDescription(), user.getPhone());
        order.SetcreationTime();
        user.clearSet();
        myService.addOrder(order);
        myService.updateUser(user);

        modelAndView.setViewName("/indexforuser");
        return modelAndView;
    }




    // TODO: 18.04.2016 поменять под новый вид
    @RequestMapping(value = "/addtobasket")
    public ModelAndView addToBacket(
            @RequestParam(value = "toAdd[]", required = false)  long[] toAdd)
    {
        ModelAndView modelAndView = new ModelAndView();
        if (toAdd!=null) {
            User user = myService.findUserByUsername(UserHelp.getUserr());
            List<Products> productsList;
            productsList = myService.findManyProducts(toAdd);
            user.setProductsSetAddall(productsList);
            myService.updateUser(user);
            modelAndView.setViewName("basket");

        } else modelAndView.setViewName("index");

        return modelAndView;
    }


    // TODO: 18.04.2016 удаление из корзины
    @RequestMapping(value = "/remove")
    public String deleteFromBasket(@RequestParam(value = "Delete[]", required = false)

                                   long [] Delete, Model model)
    {

        List<Products> toDelete = myService.findManyProducts(Delete);

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetail = (UserDetails) auth.getPrincipal();

        User user = myService.findUserByUsername(userDetail.getUsername());
        Set<Products> test = new TreeSet<Products>( user.getProductsSet());
        for (Products products : toDelete) {
            test.remove(products);
        }
        user.setProductsSet(test);
        myService.updateUser(user);
        return "index";
    }




    // переброс на корзину
    @RequestMapping(value = "/basket")
    public  ModelAndView basket(){
        ModelAndView modelAndView = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetail = (UserDetails) auth.getPrincipal();
        User user = myService.findUserByUsername(userDetail.getUsername());
        modelAndView.setViewName("basket");
        modelAndView.addObject("products", user.getProductsSet());
        modelAndView.addObject("priceAll", user.getAmount(user.getProductsSet()));
        return modelAndView;
    }

    //photo mapping
    @RequestMapping("/try/imgage/{id}")
    public void getFile(HttpServletRequest request, HttpServletResponse response, @PathVariable("id") long Id) {
        try {
            byte[] img = myService.getImg(Id);
            response.setContentType("image/png");
            response.getOutputStream().write(img);
        } catch (IOException ex) {
            ex.printStackTrace();
        }
    }


    // ------------------- END OF USER PART--------------------------------------

}
