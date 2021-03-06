package com.teamsankya.shoppingcart.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.teamsankya.shoppingcart.dao.ProductDAO;
import com.teamsankya.shoppingcart.model.ProductDTO;

@Controller
public class HomeController {
	@Autowired
	private ProductDAO dao;
	
	@RequestMapping("/")
	public String home(Model model) {
		List<ProductDTO> productList=dao.getAllProducts();
		model.addAttribute("products", productList);
		return "home";
	}
	
	@RequestMapping("/viewProduct/{productId}")
	public String viewProduct(@PathVariable String productId,Model model) throws IOException {
		ProductDTO product=dao.getProductById(productId);
		model.addAttribute(product);
		return "viewProduct";
	}
	
	
	@RequestMapping(value="/searchProduct")
	public ModelAndView searchProduct(@RequestParam("productCategory") String productCategory,ModelAndView model) throws IOException {
		List<ProductDTO> dto=dao.searchProduct(productCategory);
		String category = null;
		for(ProductDTO product:dto) {
			category=product.getProductCategory();
		}
		if(category!=null && category.equals(productCategory)) {
			
			return new ModelAndView("searchProduct","msg",dto);
		}
		else
		return new ModelAndView("error mesg","msg","no result found");
	}
	
	@RequestMapping("/admin")
	public String adminPage() {
		return "admin";
	}
	
	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model) {
		List<ProductDTO> products=dao.getAllProducts();
		model.addAttribute("products",products);
		return "productInventory";
	}
	
	@RequestMapping("/admin/productInventory/addProduct")
	public String addProduct(Model model) {
			ProductDTO product=new ProductDTO();
			product.setProductCategory("iPhone");
			product.setProductCondition("new");
			product.setProductStatus("active");
			
			model.addAttribute("product", product);
			return "addProduct";
	}
	
	@PostMapping("admin/productInventory/addProduct")
	public String addProductPost(@ModelAttribute("product") ProductDTO product) {
		dao.addProduct(product);
		return "redirect:/admin/productInventory";
	}
	
}
