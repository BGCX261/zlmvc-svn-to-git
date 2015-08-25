package com.note.dao.impl;


import org.hibernate.criterion.DetachedCriteria;
import org.springframework.stereotype.Repository;

import com.note.dao.SceneDao;
import com.note.model.Scene;
@Repository
public class SceneDaoImpl extends BaseDaoImpl<Scene,String> implements SceneDao{

	public com.note.util.Pager findByPager(com.note.util.Pager pager) {
		DetachedCriteria detachedCriteria = DetachedCriteria.forClass(Scene.class);
		return this.findByPager(pager, detachedCriteria);
	};
	
	
}
