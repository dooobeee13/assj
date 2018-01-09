/**
 * @license Copyright (c) 2003-2017, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

CKEDITOR.editorConfig = function( config ) {
	config.filebrowserBrowseUrl = '/assj/ckfinder/ckfinder.html';

	config.filebrowserImageBrowseUrl = '/assj/ck/ckfinder/ckfinder.html?type=Images';

	config.filebrowserFlashBrowseUrl = '/assj/ck/ckfinder/ckfinder.html?type=Flash';

	config.filebrowserUploadUrl = '/assj/ck/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files';

	config.filebrowserImageUploadUrl = '/assj/ck/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images';

	 

	config.filebrowserFlashUploadUrl = '/assj/ck/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash';
	
	config.enterMode = CKEDITOR.ENTER_BR;
};
