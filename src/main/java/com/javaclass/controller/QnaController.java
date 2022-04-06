package com.javaclass.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.javaclass.domain.QnaBoardVO;
import com.javaclass.service.QnaBoardService;


@Controller
@RequestMapping("/homePage")
public class QnaController {

	@Autowired
	private QnaBoardService QnaBoardService;
	
	// localhost:8080/index.do
	/*
	 * @RequestMapping("index.do") public String main() { return "index"; }
	 */
	
	// 
//	@RequestMapping("/{step}.do")
//	public String viewPage(@PathVariable String step) {
//		return step;
//	}
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
		mav.setViewName("QnaGetBoard");
		return mav;
	}
	//수정폼
	@RequestMapping("/QnaUpdateBoardForm.do")
	public String QnaUpdateBoardForm(QnaBoardVO bao, Model m){
		m.addAttribute("board",QnaBoardService.QnaGetBoard(bao));
		return "QnaUpdateBoardForm";
		
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
		return "QnaDeleteBoardForm";
	}
	
	//삭제
	@RequestMapping(value ="/QnaDeleteBoard.do", method=RequestMethod.GET)
	public String QnaDeleteBoard(int board_Seq) { 
		System.out.println("board_Seq" + board_Seq);
		QnaBoardService.QnaDeleteBoard(board_Seq);
		return "redirect:Qna.do";
	} 

}
