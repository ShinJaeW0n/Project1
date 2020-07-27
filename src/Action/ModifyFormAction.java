package Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.bean.BbsBean;
import com.board.dao.BoardDAO;

import vo.ActionForward;

public class ModifyFormAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		String num = request.getParameter("seq");
		int boardNum = Integer.parseInt(num);
		
		BoardDAO dao = BoardDAO.getInstance();
		BbsBean bean = dao.getDetail(boardNum);
	
		request.setAttribute("bean",bean);
		request.setAttribute("boardNum",boardNum);
		
		forward.setPath("modify.jsp");
		return forward;
	}
	
}
