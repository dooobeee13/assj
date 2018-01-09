package com.hy.assj.freeboard.model;

import org.springframework.web.multipart.MultipartFile;

public class FileUploadVO {
	
	private String CKEditorFuncNum;
	private MultipartFile upload;
	private String newFilename;
	private String imageUrl;
	public String getCKEditorFuncNum() {
		return CKEditorFuncNum;
	}
	public void setCKEditorFuncNum(String cKEditorFuncNum) {
		CKEditorFuncNum = cKEditorFuncNum;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public String getNewFilename() {
		return newFilename;
	}
	public void setNewFilename(String newFilename) {
		this.newFilename = newFilename;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	@Override
	public String toString() {
		return "FileUploadVO [CKEditorFuncNum=" + CKEditorFuncNum + ", upload=" + upload + ", newFilename="
				+ newFilename + ", imageUrl=" + imageUrl + "]";
	}
	
	

}
