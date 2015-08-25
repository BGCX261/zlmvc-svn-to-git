package com.note.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.ResultPath;

import com.note.model.Member;
import com.note.model.Scene;
import com.note.service.MemberService;
import com.note.service.SceneService;


@ParentPackage("scene")
public class SceneAction extends BaseAction{

	private static final long serialVersionUID = 1L;
	private Scene scene;
	private  List<Scene> sceneList;
	@Resource
	MemberService memberService;

	@Resource
	private SceneService sceneService;
	
	public String sceneIndex(){
		//long id=Long.valueOf(getRequest().getParameter("id"));
		String id=getRequest().getParameter("id");
		scene=sceneService.get(id);
		return super.SUCCESS;
	}
	
	public String toAddScene(){
		return super.SUCCESS;
	}
	
	public String toSceneList(){
		sceneList=sceneService.getAll();
		return super.SUCCESS;
	}
	
	public String save(){
		try {
			scene.setImagePath("http://www.haohuoshop.com");
			scene.setCreateDate("2021.12.28");
			if(getSession().get(Member.LOGIN_MEMBER_ID_SESSION_NAME)!=null){
				Member m=memberService.get((String) getSession().get(Member.LOGIN_MEMBER_ID_SESSION_NAME));
				scene.setCreateMember(m);
			}
			sceneService.save(scene);
			addActionError("添加成功！");
		} catch (Exception e) {
			e.printStackTrace();
			addActionError("添加景区出错!");
			return INPUT;
		}
		return SUCCESS;
	}
	
	public Scene getScene() {
		return scene;
	}
	
	public void setScene(Scene scene) {
		this.scene = scene;
	}

	public List<Scene> getSceneList() {
		return sceneList;
	}

	public void setSceneList(List<Scene> sceneList) {
		this.sceneList = sceneList;
	}
	

	
}
