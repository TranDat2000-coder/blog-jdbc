package dao.impl;

import java.util.List;

import dao.INewDAO;
import mapper.NewMapper;
import model.NewsModel;

public class NewDAO extends AbstractDAO<NewsModel> implements INewDAO {

	@Override
	public List<NewsModel> findByCategoryId(Long categoryId) {

		String sql = "SELECT * FROM news WHERE categoryid = ?";
		return query(sql, new NewMapper(), categoryId);
	}

	@Override
	public Long save(NewsModel newModel) {
	
		StringBuilder sql = new StringBuilder("INSERT INTO news (title, thumbnail, categoryid, ");
		sql.append(" shortdescription, content, createdate, createby)");
		sql.append(" VALUES (?, ?, ?, ?, ?, ?, ?)");
		return insert(sql.toString(), newModel.getTitle(), newModel.getThumbNail(), newModel.getCategoryId(), 
				newModel.getShortDescription(), newModel.getContent(), newModel.getCreateDate(), newModel.getCreateBy());
	}

	@Override
	public List<NewsModel> findAll(Integer offset, Integer limit) {
		String sql = "SELECT * FROM news LIMIT ?, ?";
		return query(sql, new NewMapper(), offset, limit);
	}

	@Override
	public NewsModel findOne(Long id) {
		String sql = "SELECT * FROM news WHERE id = ?";
		List<NewsModel> news = query(sql, new NewMapper(), id);
		return news.isEmpty() ? null : news.get(0);
	}

	@Override
	public void update(NewsModel updateNew) {
		
		StringBuilder sql = new StringBuilder("UPDATE news SET title = ?, thumbnail = ?,");
		sql.append(" content = ?, shortdescription = ?, categoryid = ?,");
		sql.append(" createdate = ?, createby = ?, modifieddate = ?, modifiedby = ? WHERE id = ?");
		
		upate(sql.toString(),updateNew.getTitle(), updateNew.getThumbNail(), updateNew.getContent(),
				updateNew.getShortDescription(), updateNew.getCategoryId(), updateNew.getCreateDate(),
				updateNew.getCreateBy(), updateNew.getModifiedDate(), updateNew.getModifiedBy(), updateNew.getId());
		
	}

	@Override
	public void delete(long id) {
		
		String sql = "DELETE FROM news WHERE id = ?";
		upate(sql, id);
		
	}

	@Override
	public int getTotalItems() {
		String sql = "SELECT count(*) FROM news";
		return count(sql);
	}


}
