package com.note.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("unchecked")
public class BaseAction extends ActionSupport {

	private static final long serialVersionUID = 1L;

	public static final String VIEW = "view";
	public static final String LIST = "list";
	public static final String STATUS = "status";
	public static final String WARN = "warn";
	public static final String SUCCESS = "success";
	public static final String ERROR = "error";
	public static final String MESSAGE = "message";
	public static final String CONTENT = "content";
	public static final String INPUT = "input";

	protected HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	/**
	 * Convenience method to get the response
	 * 
	 * @return current response
	 */
	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	public void setSession(String name, Object value) {
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		session.put(name, value);
	}

	/**
	 * 获取ActionContext (request)
	 * @return
	 */
	public ActionContext getActionContext() {
		return ActionContext.getContext();
	}
	/**
	 *  获取session
	 * @return
	 */
	public Map getSession() {
		return getActionContext().getSession();
	}
	/**
	 *  获取application
	 * @return
	 */
	public Map getServletContext() {
		return getActionContext().getApplication();
	}

}
