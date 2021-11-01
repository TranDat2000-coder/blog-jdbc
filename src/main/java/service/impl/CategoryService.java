package service.impl;

import java.util.List;

import javax.inject.Inject;

import dao.ICategoryDAO;
import model.CategoryModel;
import service.ICategoryService;

public class CategoryService implements ICategoryService {

	@Inject
	private ICategoryDAO categoryDAO;
	
	@Override
	public List<CategoryModel> findAll() {
		
		return categoryDAO.findAll();
	}

}
