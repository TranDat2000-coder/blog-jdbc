package dao;

import java.util.List;

import model.NewsModel;

public interface INewDAO extends GenericDAO<NewsModel> {

	NewsModel findOne(Long id);
	
	List<NewsModel> findByCategoryId(Long categoryId);
	
	Long save(NewsModel newModel);
	
	List<NewsModel> findAll(Integer offset, Integer limit); 
	
	public void update(NewsModel updateNew);
	
	void delete(long id);
	
	int getTotalItems();
}
