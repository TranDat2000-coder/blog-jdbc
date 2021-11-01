package service.impl;

import java.sql.Timestamp;
import java.util.List;

import javax.inject.Inject;

import dao.INewDAO;
import model.NewsModel;
import service.INewService;

public class NewService implements INewService {

	@Inject
	private INewDAO newDao;

	@Override
	public List<NewsModel> findAll(Integer offset, Integer limit) {
		return newDao.findAll(offset, limit);
	}
	
	@Override
	public List<NewsModel> findByCategoryId(Long categoryId) {
		
		return newDao.findByCategoryId(categoryId);
	}

	@Override
	public NewsModel save(NewsModel newModel) {
		
		newModel.setCreateDate(new Timestamp(System.currentTimeMillis()));
		newModel.setCreateBy("");
		Long newId = newDao.save(newModel);
		return newDao.findOne(newId);
	}

	@Override
	public NewsModel update(NewsModel updateNew) {
		
		NewsModel oldNew = newDao.findOne(updateNew.getId());
		updateNew.setCreateDate(oldNew.getCreateDate());
		updateNew.setCreateBy(oldNew.getCreateBy());
		updateNew.setModifiedDate(new Timestamp(System.currentTimeMillis()));
		updateNew.setModifiedBy("");
		newDao.update(updateNew);
		return newDao.findOne(updateNew.getId());
	}

	@Override
	public void delete(long[] ids) {
		
		for(long id : ids) {
			newDao.delete(id);
		}
		
	}

	@Override
	public int getTotalItems() {
		
		return newDao.getTotalItems();
	}

}
