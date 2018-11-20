package com.teamsankya.shoppingcart.dao;

import java.util.List;

import javax.persistence.Query;
import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamsankya.shoppingcart.model.ProductDTO;
@Repository
public class ProductDAOImpl implements ProductDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void addProduct(ProductDTO product) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(product);
		session.getTransaction().commit();
		session.close();
	}

	@Override
	public ProductDTO getProductById(String id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		ProductDTO product=session.get(ProductDTO.class, id);
		session.close();
		return product;
	}

	@Override
	public List<ProductDTO> getAllProducts() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from ProductDTO");
		List<ProductDTO> products=query.getResultList();
		session.close();
		return products;
	}

	@Override
	public void deleteProduct(String id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.delete(getProductById(id));
		session.getTransaction().commit();
		session.close();
	}
	@Override
	public List<ProductDTO> searchProduct(String productCategory){
		String qry ="from ProductDTO where productCategory='"+productCategory+"'";
		Session session=sessionFactory.openSession();
		Query query=session.createQuery(qry);
		List<ProductDTO> dto=query.getResultList();
		return dto;
	}

	/*@Override
	public List<ProductDTO> getProductByCategory(String productCategory) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		//if(productCategory=="iPhone") {
		Query query=session.createQuery("from ProductDTO where productCategory=:pro");
		query.setParameter("pro", "iPhone");
		List<ProductDTO> products=query.getResultList();
		//}
		else if(productCategory=="Moto") {
			Query query=session.createQuery("from ProductDTO where productCategory=:pro");
			query.setParameter("pro", "Moto");
			products=query.getResultList();
		}
		
		return products;
		
	}*/

	
	
}
