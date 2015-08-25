package com.note.util;
import java.util.List;

/**
 * 
 * ��ҳ��ѯʵ��
 * http://xiongjiajia.iteye.com/blog/1454218
 * 
 * */
public class PageBean {
	
	/*==============================================================*/
	private List resultList;//�����
	private int recordSUM;//�ܼ�¼��
	private int pageSUM;//��ҳ��
	private int currentPage;//��ǰҳ
	private int pageSize;//ҳ��¼��
	private boolean isFirstPage;//�Ƿ��ǵ�һҳ   
	private boolean isLastPage;//�Ƿ������һҳ
	private boolean hasPreviousPage;//�Ƿ�����һҳ
	private boolean hasNextPage;//�Ƿ�����һҳ
	/*===========================��ʼ��===================================*/
	public void init(){ 
		this.isFirstPage = isFirstPage(); 
	    this.isLastPage = isLastPage(); 
	    this.hasPreviousPage = isHasPreviousPage(); 
	    this.hasNextPage = isHasNextPage(); 
	} 
	/*=============================��ҳ��=================================*/
	public static int countTotalPage(int pageSize,int recordSUM){ 
		
		int totalPage = recordSUM % pageSize == 0 ? recordSUM/pageSize : recordSUM/pageSize+1; 
		
	    return totalPage; 
	} 
	/*============================��ǰҳ��ʼ��¼�� ==================================*/
	public static int countOffset(final int pageSize,final int currentPage){ 
		
		final int offset = pageSize*(currentPage-1); 
		
	    return offset; 
	} 
	/*=============================����ҳ=================================*/
	public static int countCurrentPage(int page){ 
		
		final int curPage = (page==0?1:page); 
		
	    return curPage; 
	} 
	/*============================�жϵ�ǰҳ��״̬==================================*/
	public boolean isFirstPage() { 
		return currentPage == 1;    
	} 
	public boolean isLastPage() { 
	    return currentPage == pageSUM;    
	} 
	public boolean isHasPreviousPage() { 
	    return currentPage != 1;         
	} 
	public boolean isHasNextPage() { 
		return currentPage != pageSUM;    
	} 
	/*===========================Get/Set����===================================*/
	public List getResultList() {
		return resultList;
	}
	public void setResultList(List resultList) {
		this.resultList = resultList;
	}
	public int getRecordSUM() {
		return recordSUM;
	}
	public void setRecordSUM(int recordSUM) {
		this.recordSUM = recordSUM;
	}
	public int getPageSUM() {
		return pageSUM;
	}
	public void setPageSUM(int pageSUM) {
		this.pageSUM = pageSUM;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	/*==============================================================*/
     
}
