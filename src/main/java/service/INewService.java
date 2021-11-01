package service;

import java.util.List;

import model.NewsModel;

public interface INewService {

	List<NewsModel> findByCategoryId(Long categoryId);
	
	List<NewsModel> findAll(Integer offset, Integer limit);
	
	NewsModel save(NewsModel newModel);
	
	NewsModel update(NewsModel updateNew);
	
	void delete(long[] ids);
	
	int getTotalItems();
}
