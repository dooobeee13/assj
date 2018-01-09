package com.hy.assj.freeboard.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hy.assj.common.FileuploadUtil;
import com.hy.assj.freeboard.model.FreeBoardService;
import com.hy.assj.freeboard.model.FreeBoardVO;
import com.hy.assj.member.model.MemberVO;
import com.hy.assj.resume.controller.ResumeController;

import oracle.sql.CLOB;

@Controller
@RequestMapping("/board")
public class FreeBoardController {

	private static final Logger logger = LoggerFactory.getLogger(ResumeController.class);
	
	@Autowired
	private FileuploadUtil fileUtil;
	
	@Autowired
	private FreeBoardService fbService;
	
	@RequestMapping("/freeBoardList.do")
	public String freeBoardList(Model model) {
		
		List<Map<String,Object>> list = fbService.selectAllFB();
		
		logger.info("list.size()={}",list.size());
		
		model.addAttribute("list", list);
		
		return "board/freeBoard/freeBoardList";
	}
	
	@RequestMapping(value="/freeBoardWrite.do", method=RequestMethod.GET)
	public String freeBoardWrite_Get() {
		return "board/freeBoard/freeBoardWrite";
	}
	
	@RequestMapping(value="/freeBoardWrite.do", method=RequestMethod.POST)
	public String freeBoardWrite_post(@ModelAttribute FreeBoardVO fbVO,
			HttpServletRequest request,HttpSession session,Model model) {
						
		//이미지 업로드 처리
			String imageURL="";
			try {
				List<Map<String, Object>> list 
				=fileUtil.fileupload(request, FileuploadUtil.FREEBOARDIMAGE);
				if(list==null) {
					fbVO.setFbImage(imageURL);
				}
				for(Map<String, Object> map: list) {
					imageURL=(String) map.get("filename"); 
					fbVO.setFbImage(imageURL);
					logger.info("이미지 업로드, imageURL={}",imageURL);
				}
				
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			session=request.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
			logger.info("회원 session, memberVO={}",memberVO);
			
			fbVO.setMemNo(memberVO.getMemNo());
			
			if(fbVO.getFbImage() == null || fbVO.getFbImage().isEmpty()) {
				fbVO.setFbImage(imageURL);
			}
			
			int cnt = fbService.insertFB(fbVO);
			
			String msg="", url="";
			if(cnt>0) {
				msg="글이 등록되었습니다";
				url ="/board/freeBoardList.do";
			}else {
				msg="글 등록 실패";
				url ="/board/freeBoardWrite.do";
			}
		
			model.addAttribute("msg", msg);
			model.addAttribute("url", url);	
		
			return "common/message";
	}
	
	
	@RequestMapping("/freeBoardView.do")
	public String selectFBView(@RequestParam(defaultValue="0")int fbNo,Model model) {
		logger.info("자유게시판 상세보기 파라미터,fbNo={}",fbNo);
		
		Map<String,Object> map = fbService.selectFB(fbNo);
		
		CLOB clob = (CLOB) map.get("FB_CONTENT");
		String str = "";
		try {
			str = clobToString(clob);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		map.put("FB_CONTENT", str);
		model.addAttribute("map", map);
		
		return "board/freeBoard/freeBoardView";
	}
	
	public static String clobToString(CLOB clob) throws Exception {
		StringBuffer s = new StringBuffer();
		BufferedReader br = new BufferedReader(clob.getCharacterStream());
		String ts = "";
		while((ts = br.readLine()) != null) {
			s.append(ts + "\n");
		}
		br.close();
		return s.toString();
	}
	
	@RequestMapping(value="/freeBoardUpdate.do", method=RequestMethod.GET)
	public String fbUpdate_get(@RequestParam(defaultValue="0")int fbNo,Model model) {
		logger.info("자유게시판 수정 get 파라미터, fbNo={}",fbNo);
		
		FreeBoardVO fbVO = fbService.selectFBByNo(fbNo);
		
		model.addAttribute("fbVO", fbVO);
		
		return "board/freeBoard/freeBoardUpdate";
		
	}

	@RequestMapping(value="/freeBoardUpdate.do", method=RequestMethod.POST)
	public String fbUpdate_post(@ModelAttribute FreeBoardVO fbVO,HttpServletRequest request,HttpSession session,Model model) {
		logger.info("자유게시판 수정 post 파라미터, fbVO={}",fbVO);
				
		/*session=request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberVO");
		logger.info("회원 session, memberVO={}",memberVO);
		
		fbVO.setMemNo(memberVO.getMemNo());*/
		
		int cnt = 0;
		
		cnt = fbService.updateFB(fbVO);
		
		String msg="", url="";
		if(cnt>0) {
			msg="글이 수정되었습니다";
			url ="/board/freeBoardView.do?fbNo="+fbVO.getFbNo();
		}else {
			msg="글 수정 실패";
			url ="/board/freeBoardUpdate.do?fbNo="+fbVO.getFbNo();
		}
	
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);	
	
		return "common/message";
		
	}
	
	@RequestMapping("/freeBoardDelete.do")
	public String deleteFB(@RequestParam(defaultValue="0") int fbNo,Model model) {
		logger.info("자유게시판 삭제 파라미터, fnNo={}",fbNo);
		
		int cnt = 0;
		
		cnt = fbService.deleteFB(fbNo);
		
		String msg="", url="";
		if(cnt>0) {
			msg="글이 삭제되었습니다";
			url ="/board/freeBoardList.do";
		}else {
			msg="글 삭제 실패";
			url ="/board/freeBoardView.do?fbNo="+fbNo;
		}
	
		model.addAttribute("msg", msg);
		model.addAttribute("url", url);	
	
		return "common/message";
		
	}


	
}
