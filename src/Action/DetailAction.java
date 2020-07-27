package Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.board.bean.BbsBean;
import com.board.dao.BoardDAO;

import vo.ActionForward;

public class DetailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		
		BoardDAO dao = BoardDAO.getInstance();
		BbsBean bean = dao.getDetail(seq);
		boolean result = dao.updateCount(seq);
		
		request.setAttribute("bean", bean);
		
		forward.setPath("eventReviewList.jsp");
		
		return forward;
	}

}
