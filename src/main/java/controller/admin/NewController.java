package controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import constant.SystemConstant;
import model.NewsModel;
import service.INewService;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/admin-new-list" })
public class NewController extends HttpServlet {

	private static final long serialVersionUID = 3500762834657105845L;

	@Inject
	private INewService newService;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NewsModel model = FormUtil.toModel(NewsModel.class, request);
		//phan trang and show all
		
		Integer offset = (model.getPage() - 1) * model.getMaxPageItem();
		model.setListResult(newService.findAll(offset, model.getMaxPageItem()));
		model.setTotalItem(newService.getTotalItems());
		model.setTotalPage((int) Math.ceil((double) model.getTotalItem() / model.getMaxPageItem()));
		
		request.setAttribute(SystemConstant.MODEL, model);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/new.jsp");
		rd.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
}
