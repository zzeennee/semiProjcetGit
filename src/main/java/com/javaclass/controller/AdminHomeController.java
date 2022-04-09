package com.javaclass.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.javaclass.domain.AccountVO;
import com.javaclass.domain.AdminChartVO;
import com.javaclass.service.AccountService;
import com.javaclass.service.AccountServiceImpl;
import com.javaclass.service.AdminBoardService;
import com.javaclass.service.AdminChartService;
import com.javaclass.service.AdminChartServiceImpl;

@Controller
@RequestMapping("/admin")
public class AdminHomeController {

	@Autowired
	AdminChartServiceImpl adminchartService;

	@RequestMapping("/adminHome.do")
	public void adminChart(AdminChartVO chartVO, String account_Id, Model model, HttpSession session) {
		// 월별 회원가입 차트
		List<AdminChartVO> accountChart = adminchartService.accountChart(chartVO);

		Gson accountgson = new Gson();
		JsonArray accountjArray = new JsonArray();

		Iterator<AdminChartVO> accountit = accountChart.iterator();
		while (accountit.hasNext()) {
			AdminChartVO accountMonthVO = accountit.next();
			JsonObject object = new JsonObject();
			String accountMonth = accountMonthVO.getAccountMonth();
			int accountCnt = accountMonthVO.getAccountCnt();
			object.addProperty("accountMonth", accountMonth);
			object.addProperty("accountCnt", accountCnt);
			accountjArray.add(object);
		}

		String accountjson = accountgson.toJson(accountjArray);
		model.addAttribute("account", accountjson);
		
		// 카테고리별 등록 차트
		List<AdminChartVO> adminChartProductCategory = adminchartService.adminChartProductCategory(chartVO);

		Gson productgson = new Gson();
		JsonArray productjArray = new JsonArray();

		Iterator<AdminChartVO> productit = adminChartProductCategory.iterator();
		while (productit.hasNext()) {
			AdminChartVO productCategoryVO = productit.next();
			JsonObject object = new JsonObject();
			String product_Category = productCategoryVO.getProduct_Category();
			int productCnt = productCategoryVO.getProductCnt();
			object.addProperty("product_Category", product_Category);
			object.addProperty("productCnt", productCnt);
			productjArray.add(object);
		}

		String productjson = productgson.toJson(productjArray);
		model.addAttribute("prdouct", productjson);

		// 카테고리별 판매 차트
		List<AdminChartVO> adminChartProductSellCategory = adminchartService.adminChartProductSellCategory(chartVO);

		Gson productSellgson = new Gson();
		JsonArray productSelljArray = new JsonArray();

		Iterator<AdminChartVO> productSellit = adminChartProductSellCategory.iterator();
		while (productSellit.hasNext()) {
			AdminChartVO productSellCategoryVO = productSellit.next();
			JsonObject object = new JsonObject();
			String product_SellCategory = productSellCategoryVO.getProduct_SellCategory();
			int productSellCnt = productSellCategoryVO.getProductSellCnt();
			object.addProperty("product_SellCategory", product_SellCategory);
			object.addProperty("productSellCnt", productSellCnt);
			productSelljArray.add(object);
		}

		String productSelljson = productSellgson.toJson(productSelljArray);
		model.addAttribute("prdouctSell", productSelljson);

	}

	@RequestMapping("/adminLogout.do")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";// 로그아웃 했을 때 메인페이지로 이동함
	}

}
