package app01;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import app01.dao.BoardDao;
import app01.dao.ReplyDao;
import app01.dto.BoardDto;
import app01.dto.ReplyDto;

/**
 * Servlet implementation class BoardGetServlet
 */
@WebServlet("/board/get")
public class BoardGetServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private DataSource ds; 
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardGetServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    @Override
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	this.ds = (DataSource) application.getAttribute("dbpool");
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request parameter 가공
		int id = Integer.parseInt(request.getParameter("id"));
		
	
		// business logic 처리
		try (Connection con = ds.getConnection()) {
			// 게시글 본문
			BoardDao dao = new BoardDao();
			BoardDto board = dao.get(con, id);
						
			// 댓글 목록
			ReplyDao replyDao = new ReplyDao();
			List<ReplyDto> replyList = replyDao.list(con, id);
						
			// add attribute
			request.setAttribute("board", board);
			request.setAttribute("replyList", replyList);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// forward/redirect
		String path = "/WEB-INF/view/app01/get.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
