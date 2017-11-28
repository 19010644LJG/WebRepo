package org.dimigo.action;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.omg.CORBA.Request;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;

public class TranslateAction implements IAction {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		
				String korean = request.getParameter("text");
		        String clientId = "1uLThtMi_WiLacO4K29F";//애플리케이션 클라이언트 아이디값";
		        String clientSecret = "3kKghzY3ar";//애플리케이션 클라이언트 시크릿값";
		        try {
		            String text = URLEncoder.encode(korean, "UTF-8");
		            String apiURL = "https://openapi.naver.com/v1/language/translate";
		            URL url = new URL(apiURL);
		            HttpURLConnection con = (HttpURLConnection)url.openConnection();
		            con.setRequestMethod("POST");
		            con.setRequestProperty("X-Naver-Client-Id", clientId);
		            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
		            // post request
		            String postParams = "source=ko&target=en&text=" + text;
		            con.setDoOutput(true);
		            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
		            wr.writeBytes(postParams);
		            wr.flush();
		            wr.close();
		            int responseCode = con.getResponseCode();
		            BufferedReader br;
		            if(responseCode==200) { // 정상 호출
		                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
		            } else {  // 에러 발생
		                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
		            }
		            String inputLine;
		            StringBuffer result = new StringBuffer();
		            while ((inputLine = br.readLine()) != null) {
		                result.append(inputLine);
		            }
		            
		            String translatedText = parseJson(result.toString());
		            System.out.println(translatedText);
		            
		            //jsp에다 던져주기
		            request.setAttribute("tranlatedText", translatedText);
		            
		            
		            br.close();
		            System.out.println(response.toString());
		        } catch (Exception e) {
		            System.out.println(e);
		        } finally {
		        	RequestDispatcher rd = request.getRequestDispatcher("translate.jsp");
		        	rd.forward(request, response);
		        }
		    
		}
		@SuppressWarnings("unchecked")
		private String parseJson(String json) throws Exception {
	    	Map<String, Object> map = new ObjectMapper().readValue(json, Map.class);
			Map<String, Object> message = (Map<String, Object>) map.get("message");
			Map<String, String> result = (Map<String, String>) message.get("result");
			
			return result.get("translatedText");
	    }

}
