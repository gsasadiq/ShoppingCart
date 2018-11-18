package com.teamsankya.shoppingcart.dao;

import java.util.List;

import com.teamsankya.shoppingcart.model.ProductDTO;

public interface ProductDAO{
	void addProduct(ProductDTO product);
	ProductDTO getProductById(String id);
	List<ProductDTO> getAllProducts();
	void deleteProduct(String id);
	//List<ProductDTO> getProductByCategory(ProductDTO productCategory);
}
