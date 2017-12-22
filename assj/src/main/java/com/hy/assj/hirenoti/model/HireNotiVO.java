package com.hy.assj.hirenoti.model;

import java.sql.Timestamp;

public class HireNotiVO {
	private int hnNo; // 채용공고번호(PK)
	private String hnNotiTitle; // 공고제목
	private int cmNo; // 기업등록번호(FK)
	private int hnSalStart; // 최소급여
	private int hnSalEnd; //  최대급여
	private int hnViews; // 조회수
	private Timestamp hnStart; // 공고시작일
	private Timestamp hnDeadline; // 공고마감일
	private String hnHows; // 접수방법
	private String hnTask; // 주요업무
	private String hnEligiblity;
 	private String hnPreference; // 우대사항
	private String hnStep; // 채용절차
	private String hnBenefits; // 복리후생
	private String hnDocument; // 제출서류
	private String hnAddr; // 근무지주소
	private String hnDetailAddr; // 근무지(상세주소)
	private int hnLat; // 위도
	private int hnLng; // 경도
	private String hnStatus; // 공고상태
	private String hnGender; // 성별
	private int hnRecruitNum; // 모집인원
	
	private int eduNo; // 학력코드(FK)
	private int careerNo; // 경력코드(FK)
	
}
