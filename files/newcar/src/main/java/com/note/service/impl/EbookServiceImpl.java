package com.note.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.note.dao.EbookDao;
import com.note.model.Ebook;
import com.note.service.EbookService;

@SuppressWarnings("restriction")
@Service
public class EbookServiceImpl  extends BaseServiceImpl<Ebook,String> implements EbookService {
	

	@Resource
	private EbookDao ebookDao;
	@Resource
	public void setEbookDao(EbookDao ebookDao) {
		super.setBaseDao(ebookDao);
	}


}
