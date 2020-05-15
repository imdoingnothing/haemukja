package recipe.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import common.Attachment;
import recipe.model.dao.RecipeDao;
import recipe.model.vo.Recipe;

public class RecipeService {

	public int insertRecipe(Recipe r, ArrayList<Attachment> fileList) {
		Connection conn = getConnection();
		RecipeDao rd = new RecipeDao();
		
		int result1 = rd.insertRecipe(conn,r);
		int result2 = rd.insertAttachment(conn,fileList);
		System.out.println("게시판 업로드 결과 : " + result1);
		System.out.println("파일 업로드 결과 : " + result2);
		
		close(conn);
		
		return result1;
	}

}
