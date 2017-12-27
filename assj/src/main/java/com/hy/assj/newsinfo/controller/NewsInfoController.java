package com.hy.assj.newsinfo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hy.assj.administrator.model.AdminService;

@Controller
@RequestMapping("/news_Info")
public class NewsInfoController {
	private static final Logger logger = LoggerFactory.getLogger(NewsInfoController.class);
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value="/news_main.do",method=RequestMethod.GET)
	public void newsMain(Model model) {
		
	}
	
	@RequestMapping("/news_data.do")
	public @ResponseBody List<Map<String, Object>> newsdata() {
		
		List<Map<String, Object>> list = adminService.selectNews();
		
		
		/*Map<String, Object> map = new HashMap<>();
		map.put("NEWS_NO", 1);
		map.put("NEWS_TITLE", "이 여자는 오늘부터 제껍니다");
		map.put("NEWS_URL", "05fde46fdf10e4953da63be7b15fed9f6338cecf.jpg");
		map.put("NEWS_WRITER", "갓기찬");
		map.put("NEWS_CONTENT", "하지만 사실상 보지도 못햇쥬?");
		
		Map<String, Object> map1 = new HashMap<>();
		map1.put("NEWS_NO", 2);
		map1.put("NEWS_TITLE", "오늘의 공채는 뭘까요?");
		map1.put("NEWS_URL", "40d22daeed13e303288063cba80de74a0124cdb0.jpg");
		map1.put("NEWS_WRITER", "췤췤");
		map1.put("NEWS_CONTENT", "개꿀이네연;");
		
		Map<String, Object> map2 = new HashMap<>();
		map2.put("NEWS_NO", 3);
		map2.put("NEWS_TITLE", "안녕하세여 갓기찬입니다");
		map2.put("NEWS_URL", "4e52814ada359d22b60cefd421c52bf0b212c12d.jpg");
		map2.put("NEWS_WRITER", "핰핰");
		map2.put("NEWS_CONTENT", "외쳐 ee!!!!!!!!!!");
		
		Map<String, Object> map3 = new HashMap<>();
		map3.put("NEWS_NO", 4);
		map3.put("NEWS_TITLE", "안녕하세영 ㅎ");
		map3.put("NEWS_URL", "52f7907d0ff2709292cb.jpg");
		map3.put("NEWS_WRITER", "호롤로롤ㄹ");
		map3.put("NEWS_CONTENT", "하ㅎㅎㅎㅎㅎ");
		
		Map<String, Object> map4 = new HashMap<>();
		map4.put("NEWS_NO", 5);
		map4.put("NEWS_TITLE", "이 여자는 오늘부터 제껍니다");
		map4.put("NEWS_URL", "40d22daeed13e303288063cba80de74a0124cdb0.jpg");
		map4.put("NEWS_WRITER", "갓기찬");
		map4.put("NEWS_CONTENT", "하지만 사실상 보지도 못햇쥬?");
		
		Map<String, Object> map5 = new HashMap<>();
		map5.put("NEWS_NO", 6);
		map5.put("NEWS_TITLE", "오늘의 공채는 뭘까요?");
		map5.put("NEWS_URL", "bb1ff66b6c585dc32a7b443a91c3187d283e91f3.jpg");
		map5.put("NEWS_WRITER", "췤췤");
		map5.put("NEWS_CONTENT", "개꿀이네연;");
		
		Map<String, Object> map6 = new HashMap<>();
		map6.put("NEWS_NO", 7);
		map6.put("NEWS_TITLE", "안녕하세여 갓기찬입니다");
		map6.put("NEWS_URL", "thumb_crop_resize.jpg");
		map6.put("NEWS_WRITER", "핰핰");
		map6.put("NEWS_CONTENT", "외쳐 ee!!!!!!!!!!");
		
		Map<String, Object> map7 = new HashMap<>();
		map7.put("NEWS_NO", 8);
		map7.put("NEWS_TITLE", "안녕하세영 ㅎ");
		map7.put("NEWS_URL", "ead9ab2d1820981da4208a868f04c3b4715c84df.jpg");
		map7.put("NEWS_WRITER", "호롤로롤ㄹ");
		map7.put("NEWS_CONTENT", "하ㅎㅎㅎㅎㅎ");
		
		Map<String, Object> map8 = new HashMap<>();
		map8.put("NEWS_NO", 9);
		map8.put("NEWS_TITLE", "이 여자는 오늘부터 제껍니다");
		map8.put("NEWS_URL", "d049434e5700b0fb1857a3641d50547124849b3e.jpg");
		map8.put("NEWS_WRITER", "갓기찬");
		map8.put("NEWS_CONTENT", "하지만 사실상 보지도 못햇쥬?");
		
		Map<String, Object> map9 = new HashMap<>();
		map9.put("NEWS_NO", 10);
		map9.put("NEWS_TITLE", "오늘의 공채는 뭘까요?");
		map9.put("NEWS_URL", "40d22daeed13e303288063cba80de74a0124cdb0.jpg");
		map9.put("NEWS_WRITER", "췤췤");
		map9.put("NEWS_CONTENT", "개꿀이네연;");
		
		Map<String, Object> map10 = new HashMap<>();
		map10.put("NEWS_NO", 11);
		map10.put("NEWS_TITLE", "안녕하세여 갓기찬입니다");
		map10.put("NEWS_URL", "05fde46fdf10e4953da63be7b15fed9f6338cecf.jpg");
		map10.put("NEWS_WRITER", "핰핰");
		map10.put("NEWS_CONTENT", "외쳐 ee!!!!!!!!!!");
		
		Map<String, Object> map11 = new HashMap<>();
		map11.put("NEWS_NO", 12);
		map11.put("NEWS_TITLE", "안녕하세영 ㅎ");
		map11.put("NEWS_URL", "d049434e5700b0fb1857a3641d50547124849b3e.jpg");
		map11.put("NEWS_WRITER", "호롤로롤ㄹ");
		map11.put("NEWS_CONTENT", "하ㅎㅎㅎㅎㅎ");

		list.add(map11);
		list.add(map10);
		list.add(map9);
		list.add(map8);
		list.add(map8);
		list.add(map7);
		list.add(map6);
		list.add(map5);
		list.add(map4);
		list.add(map3);
		list.add(map2);
		list.add(map1);
		list.add(map);*/
		return list;
		
	}
}

