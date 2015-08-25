package com.note.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.note.dao.SceneDao;
import com.note.model.Scene;
import com.note.service.SceneService;
import com.note.util.PageBean;

@SuppressWarnings("restriction")
@Service
public class SceneServiceImpl extends BaseServiceImpl<Scene,String> implements SceneService{
	@Resource
	private SceneDao sceneDao;
	@Resource
	public void seSceneDaoo(SceneDao sceneDao) {
		super.setBaseDao(sceneDao);
	}
	
	
}
