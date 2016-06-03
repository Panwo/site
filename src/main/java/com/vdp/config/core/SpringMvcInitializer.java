package com.vdp.config.core;

import com.vdp.config.AppConfig;
import com.vdp.config.NewConfigure;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class SpringMvcInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
	@Override
	protected Class<?>[] getRootConfigClasses() {
		return new Class[] { AppConfig.class };
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		return new Class[]{NewConfigure.class};
	}


	@Override
	protected String[] getServletMappings() {
		return new String[] { "/" };
	}
	
}