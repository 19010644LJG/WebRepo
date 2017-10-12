package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
       RequestDispatcher rd = request.getRequestDispatcher("myblog/login.jsp");
       rd.forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
 	   
 	   request.setCharacterEncoding("utf-8");
        response.setContentType("application/json;charset=utf-8");
        PrintWriter out = response.getWriter();
        
       String id = request.getParameter("id");
       String name = "이준구";
       String pwd = request.getParameter("pwd");
       
       String string = "test@naver.com";
       
       boolean result = id.equals(string);
       
       Gson gson = new Gson();
       JsonObject object = new JsonObject();
       
       
       if (result) {
          // 세션에 사용자 정보를 생성해서 담기
          HttpSession session = request.getSession();
          UserVO user = new UserVO();
          user.setId(id);
          user.setName(name);
          session.setAttribute("user", user);
          object.addProperty("msg", "success");
       } else {
     	  object.addProperty("msg", "error");
       }
       out.write(gson.toJson(object));
       out.close();
    
    }

}
