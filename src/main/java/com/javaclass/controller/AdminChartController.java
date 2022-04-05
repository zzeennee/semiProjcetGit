package com.javaclass.controller;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.javaclass.domain.AdminChartVO;
import com.javaclass.service.AdminBoardService;
import com.javaclass.service.AdminChartService;
import com.javaclass.service.AdminChartServiceImpl;

@Controller
public class AdminChartController {

@Autowired
AdminChartServiceImpl adminchartService;
	
//@RequestMapping("admin/adminHome.do")
//public void adminHome() {}
	
	@RequestMapping("admin/adminHome.do")
	public void adminChart(AdminChartVO chartVO, Model model) {
		List<AdminChartVO> adminChartProductCategory = adminchartService.adminChartProductCategory(chartVO);

		Gson gson = new Gson();
		JsonArray jArray = new JsonArray();
				
		Iterator<AdminChartVO> it = adminChartProductCategory.iterator();
		while(it.hasNext()) {
			AdminChartVO productCategoryVO = it.next();
			JsonObject object = new JsonObject();
			String product_Category = productCategoryVO.getProduct_Category();
			int cnt = productCategoryVO.getCnt();
			
		    object.addProperty("product_Category", product_Category);
			object.addProperty("cnt", cnt);
			jArray.add(object);
		}
				
		String json = gson.toJson(jArray);
		model.addAttribute("prdouct", json);	
	}
	
}
