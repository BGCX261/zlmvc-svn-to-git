package com.note.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.note.model.Ebook;
import com.note.service.EbookService;


@Namespace("/")
@ResultPath("/")
@SuppressWarnings("restriction")

public class EbookAction extends FileUploadAction {
	private static final long serialVersionUID = 7172199270385742823L;
	
	@Resource
	EbookService ebookService;
	private Ebook ebook;
	
	@Action(value = "addEbook", results = { @Result(name = "success", 
			location = "bookInfor.htm",params={"bookid","${ebook.book.id}"},type="redirect"),
	@Result(name = "input", location = "add_ebook.jsp")})
	public String save(){
		try{
			ebook.setEbookurl(uploadEbook());
		}catch(Exception ex){
			ex.printStackTrace();
			addActionError("���ϴ�ͼƬ��ͼƬ�Ƿ����");
			return INPUT;
		}
		ebookService.save(ebook);
		addActionError("��ϲ���ϴ��ɹ���");
		return SUCCESS;
	}
	
	
	public Ebook getEbook() {
		return ebook;
	}
	public void setEbook(Ebook ebook) {
		this.ebook = ebook;
	}
	
}
