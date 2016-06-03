package com.vdp.config;


import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;


@Configuration
public class NewConfigure extends WebMvcConfigurerAdapter {
    @Override
    public void addResourceHandlers(final ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/js/**").addResourceLocations("/WEB-INF/js/");
        registry.addResourceHandler("/style/**").addResourceLocations("/WEB-INF/style/");
        registry.addResourceHandler("/img/**").addResourceLocations("/WEB-INF/img/");
          registry.addResourceHandler("/bdimages/**").addResourceLocations("/WEB-INF/dbimages/");
        registry.addResourceHandler("/libs/**").addResourceLocations("/WEB-INF/libs/");

    }
}

