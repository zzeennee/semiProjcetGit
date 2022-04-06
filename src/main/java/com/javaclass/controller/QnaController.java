package com.javaclass.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.javaclass.domain.QnaBoardVO;
import com.javaclass.domain.QnaReplyVO;
import com.javaclass.service.QnaBoardService;
import com.javaclass.service.ReplyService;


@Controller
@RequestMapping("/homePage")
public class QnaController {

	@Autowired
	private QnaBoardService QnaBoardService;
	

	// localhost:8080/index.do
	/*
	 * @RequestMapping("index.do") public String main() { return "index"; }
	 */
	

	@Inject
	private ReplyService replyService;
	
	@RequestMapping("/QnaInsertBoard.do")
	public void QnaInsertPage() {
		System.out.println("인서트보드접속");
	}

	//글작성
	@RequestMapping(value = "/QnaBoardSave.do")
	public String QnaInsertBoard(QnaBoardVO bao) throws IOException {
		QnaBoardService.QnaInsertBoard(bao);
			return "redirect:Qna.do";
	}
	
	// 글 목록 검색
	@RequestMapping("/Qna.do")
	public void QnaGetBoardList(String searchCondition, String searchKeyword, Model m) {
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		
		System.out.println("searchCondition :: " + searchCondition);
		System.out.println("searchKeyword :: " + searchKeyword);
		
		List<QnaBoardVO> list = QnaBoardService.QnaGetBoardList(map);
		m.addAttribute("QnaGetBoardList", list);
		System.out.println("QnaGetBoardList.do 요청됨.");  
	}
	
	//상세조회
	@RequestMapping("/QnaGetBoard.do")
	public ModelAndView QnaGetBoard(QnaBoardVO bao, Model model){
		ModelAndView mav = new ModelAndView();
		System.out.println("QnaBoardVO : " + bao.getBoard_Seq());
		QnaBoardVO board = QnaBoardService.QnaGetBoard(bao);
		mav.addObject("board",board);
		mav.setViewName("homePage/QnaGetBoard");
		return mav;
	}
	//수정폼
	@RequestMapping("/QnaUpdateBoardForm.do")
	public String QnaUpdateBoardForm(QnaBoardVO bao, Model m){
		m.addAttribute("board",QnaBoardService.QnaGetBoard(bao));
		return "homePage/QnaUpdateBoardForm";
		
	}
	//수정
	@RequestMapping("/QnaUpdateBoard.do")
	public String QnaUpdateBoard(QnaBoardVO bao){
		System.out.println("bao : "+bao);
		QnaBoardService.QnaUpdateBoard(bao);
		return "redirect:QnaGetBoard.do?board_Seq="+bao.getBoard_Seq();
		
	}
	//삭제폼
	@RequestMapping(value ="/QnaDeleteBoardForm.do")
	public String QnaDeleteBoardForm(QnaBoardVO bao, Model m)throws IOException {
		m.addAttribute("board",QnaBoardService.QnaGetBoard(bao));
		return "homePage/QnaDeleteBoardForm";
	}
	
	//삭제
	@RequestMapping(value ="/QnaDeleteBoard.do", method=RequestMethod.GET)
	public String QnaDeleteBoard(QnaBoardVO bao) { 
		System.out.println("board_Seq :: " + bao.getBoard_Seq() + "  board_Password :: " +bao.getBoard_Password());
		QnaBoardService.QnaDeleteBoard(bao);
		return "redirect:Qna.do";
	} 
	
	//게시물조회
	@RequestMapping(value="/list",method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		// 댓글 조회
		List<QnaBoardVO> list = null;
		list = QnaBoardService.list();
		model.addAttribute("list", list);			
	}
	
	//댓글 조회
		@RequestMapping(value="/view",method = RequestMethod.GET)
		public void getView(@RequestParam("bno") int bno , Model model) throws Exception {
			
			QnaBoardVO vo = QnaBoardService.view(bno);
			model.addAttribute("view", vo);
			
			// 댓글 조회
			List<QnaReplyVO> reply = null;
			reply = replyService.list(bno);
			model.addAttribute("reply", reply);		
		}

}
