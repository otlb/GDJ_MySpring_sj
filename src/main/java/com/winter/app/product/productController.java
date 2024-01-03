package com.winter.app.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/product/*")
public class productController {
	private ProductDAO productDAO ;
	
	public productController() {
		this.productDAO = new ProductDAO();
	}
	
	@RequestMapping(value="list", method = RequestMethod.GET)
	public String list(HttpServletRequest request)	throws Exception {
		List<ProductDTO> ar = productDAO.list();
		request.setAttribute("list", ar);
		
		return "product/list";
		

		
		
	}
	
	
	@RequestMapping(value="detail", method = RequestMethod.GET)
	public String detail(ProductDTO productDTO, Model model) throws Exception{
		productDTO = productDAO.detail(productDTO);
	
		model.addAttribute("dto", productDTO);
		
		return "product/detail";
	}
	
}
