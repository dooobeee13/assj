package com.hy.assj.ckeditor.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.util.FileUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.hy.assj.common.FileuploadUtil;

@Controller
@RequestMapping("/ckeditor")
public class CKEditorController {
	private static final Logger logger=LoggerFactory.getLogger(CKEditorController.class);
	
	@Autowired
	FileuploadUtil fileUtil;
	
	@RequestMapping("/upload.do")
	public String imageUpload(@RequestParam String CKEditorFuncNum, HttpServletRequest request,HttpSession session, Model model) {
		logger.info("ckeditor 업로드 테스트, 파라미터 CKEditorFuncNum={}", CKEditorFuncNum);
		
		String path = session.getServletContext().getRealPath("/");
		
		String uploadUrl="";
		String msg="업로드 실패";
		try {
			List<Map<String, Object>> fileList
				=fileUtil.fileupload(request,FileuploadUtil.FREEBOARDIMAGE2);
			
			if(fileList!=null && !fileList.isEmpty()) {
				Map<String, Object> dataMap = fileList.get(0);
				uploadUrl=(String)dataMap.get("filename");
				msg="이미지 업로드 성공";
			}else {
				msg="파일이 없습니다";
			}
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		logger.info("ckeditor 업로드 결과, uploadUrl={}, msg='{}'", uploadUrl, msg);
		
		model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
		model.addAttribute("uploadUrl", uploadUrl);
		model.addAttribute("msg", msg);
		
		return "common/ckeditorUpload";
	}
	
}
