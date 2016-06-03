package com.vdp.users.service;

import com.vdp.users.model.Products;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.List;

public class UserHelp {

    public static String getUserr(){

        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        UserDetails userDetail = (UserDetails) auth.getPrincipal();
        return  userDetail.getUsername();

    }


    public  static List<Products> separateproducts(int i, List<Products> list){
        List<Products> toRetern = new ArrayList<Products>();
        if (list.size()>17){

            for (int j = i*17; j <++i  *17 ; j++) {
                if (list.get(j)!= null)
                 toRetern.add(list.get(j));
            }
            return toRetern;


        }else return list;



    }


}
