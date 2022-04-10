package com.javaclass.controller;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.javaclass.domain.PageMaker;
import com.javaclass.domain.QnaBoardVO;
import com.javaclass.domain.ReplyVO;
import com.javaclass.service.QnaBoardService;
//import com.javaclass.service.ReplyService;
import com.javaclass.service.ReplyService;
import com.javaclass.domain.*;

@Controller
@RequestMapping("/homePage")
public class QnaController {
	
	private static final org.mariadb.jdbc.internal.logging.Logger logger = LoggerFactory.getLogger(QnaController.class);

	@Autowired
	private QnaBoardService QnaBoardService;
	
	// localhost:8080/index.do

	@Inject
	ReplyService replyService;
	
	@RequestMapping("index.do")
	public String main() {
		return "index";
	}
	
	// 
	@RequestMapping("/{step}.do")
	public String viewPage(@PathVariable String step) {
		return "/homePage/"+step;
	}
	//글작성
	@RequestMapping(value = "/QnaBoardSave.do")
	public String QnaInsertBoard(QnaBoardVO bao) throws IOException {
		QnaBoardService.QnaInsertBoard(bao);
			return "redirect:Qna.do";
	}
	
	// 글 목록 검색
	@RequestMapping(value="/Qna.do", method = RequestMethod.GET)
	public String QnaGetBoardList(Model model, @ModelAttribute("scri") com.javaclass.domain.SearchCriteria scri) throws Exception{
		logger.info("QnaGetBoardList");
		
		model.addAttribute("QnaGetBoardList", QnaBoardService.QnaGetBoardList(scri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(scri);
		pageMaker.setTotalCount(QnaBoardService.listCount(scri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "homePage/Qna";
	}
	
	//상세조회
	@RequestMapping("/QnaGetBoard.do")
	public ModelAndView QnaGetBoard(QnaBoardVO bao, Model model) throws Exception{
		logger.info("read");
		
		ModelAndView mav = new ModelAndView();
		System.out.println("QnaBoardVO : " + bao.getQnaSeq());
		
		//보드 상세 내역을 가져옴
		QnaBoardVO board = QnaBoardService.QnaGetBoard(bao);
		mav.addObject("board",board);
		mav.setViewName("homePage/QnaGetBoard");
		//보드에 대한 리플을 가져옴
		List<ReplyVO> replyList = replyService.readReply(bao.getQnaSeq());
		mav.addObject("replyList", replyList);
		 
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
		return "redirect:QnaGetBoard.do?qnaSeq="+bao.getQnaSeq();
		
	}
	//삭제폼
	@RequestMapping(value ="/QnaDeleteBoardForm.do")
	public String QnaDeleteBoardForm(QnaBoardVO bao, Model m)throws IOException {
		m.addAttribute("board",QnaBoardService.QnaGetBoard(bao));
		return "homePage/QnaDeleteBoardForm";
	}
	
	//삭제
	@RequestMapping(value ="/QnaDeleteBoard.do", method=RequestMethod.GET)
	public String QnaDeleteBoard(int qnaSeq) { 
		System.out.println("qnaSeq" + qnaSeq);
		//QnaBoardService.QnaDeleteBoard(qnaSeq);
		return "redirect:Qna.do";
	} 

	//댓글 작성 **************************************************
	
	 @RequestMapping(value="/replyWrite.do", method = RequestMethod.POST) 
	 public String replyWrite(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr)throws Exception { 
		 logger.info("reply Write");
	 
		 System.out.println("댓글삽입 -------------");
		 replyService.writeReply(vo);
	  
//		 rttr.addAttribute("bno", vo.getBno()); 
//		 rttr.addAttribute("page",scri.getPage()); 
//		 rttr.addAttribute("perPageNum", scri.getPerPageNum());
//		 rttr.addAttribute("searchType", scri.getSearchType());
//		 rttr.addAttribute("keyword", scri.getKeyword());

//		 return "redirect:Qna.do"; 
		 return "redirect:/homePage/QnaGetBoard.do?qnaSeq="+vo.getQnaSeq(); 
	  
	 }
	 
	 //댓글 수정 GET
	 @RequestMapping(value="/replyUpdateView.do", method = RequestMethod.GET)
	 public String replyUpdateView(ReplyVO vo, SearchCriteria scri, Model model) throws Exception{
		 logger.info("reply Write");
		 
		 model.addAttribute("replyUpdate", replyService.selectReply(vo.getQnaSeq()));
		 model.addAttribute("replyUpdate", replyService.selectReply(vo.getReply_rno()));
			/* model.addAttribute("scri", scri); */
		 
		 return "homePage/replyUpdateView";
	 }
	 
	//댓글 수정 POST
	@RequestMapping(value="/replyUpdate", method = RequestMethod.POST)
	public String replyUpdate(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
			
		replyService.updateReply(vo);
		
		/*
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		*/	
		return "redirect:/homePage/QnaGetBoard.do?qnaSeq="+vo.getQnaSeq();
	}
	
	//댓글 삭제 GET
	@RequestMapping(value="/replyDeleteView.do", method = RequestMethod.GET)
	public String replyDeleteView(ReplyVO vo, SearchCriteria scri, Model model) throws Exception {
		logger.info("reply Write");
		
		model.addAttribute("replyDelete", replyService.selectReply(vo.getQnaSeq()));	
		model.addAttribute("replyDelete", replyService.selectReply(vo.getReply_rno()));
		/* model.addAttribute("scri", scri); */
			
		return "homePage/replyDeleteView";
	}
		
	//댓글 삭제
	@RequestMapping(value="/replyDelete", method = RequestMethod.POST)
	public String replyDelete(ReplyVO vo, SearchCriteria scri, RedirectAttributes rttr) throws Exception {
		logger.info("reply Write");
			
		replyService.deleteReply(vo);
		/*	
		rttr.addAttribute("bno", vo.getBno());
		rttr.addAttribute("page", scri.getPage());
		rttr.addAttribute("perPageNum", scri.getPerPageNum());
		rttr.addAttribute("searchType", scri.getSearchType());
		rttr.addAttribute("keyword", scri.getKeyword());
		*/	
		return "redirect:/homePage/QnaGetBoard.do?qnaSeq="+vo.getQnaSeq();
	}

}
