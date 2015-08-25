package com.note.util;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

@SuppressWarnings("restriction")
public class CustomHibernateDaoSupport extends HibernateDaoSupport{
	
	@Resource
    public void anyMethodName(SessionFactory sessionFactory)
    {
        setSessionFactory(sessionFactory);
    }
}
