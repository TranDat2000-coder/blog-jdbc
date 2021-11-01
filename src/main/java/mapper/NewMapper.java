package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import model.NewsModel;

public class NewMapper implements RowMapper<NewsModel> {

	@Override
	public NewsModel mapRow(ResultSet rs) {
		try {
			NewsModel news = new NewsModel();
			news.setId(rs.getLong("id"));
			news.setCategoryId(rs.getLong("categoryid"));
			news.setTitle(rs.getString("title"));
			news.setThumbNail(rs.getString("thumbnail"));
			news.setShortDescription(rs.getString("shortdescription"));
			news.setContent(rs.getString("content"));
			news.setCreateDate(rs.getTimestamp("createdate"));
			news.setCreateBy(rs.getString("createby"));
			if(rs.getTimestamp("modifieddate") != null) {
				news.setModifiedDate(rs.getTimestamp("modifieddate"));
			}
			if(rs.getString("modifiedby") != null) {
				news.setModifiedBy(rs.getString("modifiedby"));
			}
			return news;
		} catch (SQLException e) {
			return null;
		}
	}

}
