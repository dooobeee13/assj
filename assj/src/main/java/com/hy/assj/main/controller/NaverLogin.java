package com.hy.assj.main.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;


public class NaverLogin {
	
	private static final String CLIENT_ID = "uFaFHgbK0bgMRtMo07LX";
	private static final String SECRET_ID = "ZlfOe7jAMO";
	private static final String REDIRECT_URL = "http://localhost:9090/assj/login/naverCallback.do";
	
	public static String generateState() {
		SecureRandom random = new SecureRandom();
		return new BigInteger(130, random).toString();
	}
	
	public static String getApiURL(String state) {
		String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
	    apiURL += "&client_id=" + CLIENT_ID;
	    apiURL += "&redirect_uri=" + REDIRECT_URL;
	    apiURL += "&state=" + state;
	    return apiURL;
	}
	
	
    public static Map<String, String> getRequestKey(String state, String code) {
        String naverUrl = "https://nid.naver.com/oauth2.0/token?client_id=" + CLIENT_ID + "&client_secret=" + SECRET_ID 
        		+ "&grant_type=authorization_code" + "&state=" + state + "&code=" + code;
        StringBuffer sb = new StringBuffer();
        Map<String, String> result = new HashMap<>();
 
        try {
            HttpURLConnection conn = (HttpURLConnection) new URL(naverUrl).openConnection();
            BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
            String tmp = null;
            while ((tmp = reader.readLine()) != null) {
                sb.append(tmp);
            }
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(sb);
        try {
            JSONParser parser = new JSONParser();
            JSONObject jsonObject = (JSONObject) parser.parse(sb.toString());
             
            result.put("access_token", (String) jsonObject.get("access_token"));
            result.put("refresh_token", (String) jsonObject.get("refresh_token"));
            result.put("token_type", (String) jsonObject.get("token_type"));
             
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return result;
    }
    
    
    public static Map<String, String> requestUserInfo(String accessToken) {
        Map<String, String> resultMap = new HashMap<>();
        String header = "Bearer " + accessToken; // Bearer 다음에 공백 추가
        try {
            String apiURL = "https://openapi.naver.com/v1/nid/me";
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("Authorization", header);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer sb = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                sb.append(inputLine);
            }
            br.close();
            System.out.println(sb.toString());
            try {
                JSONParser parser = new JSONParser();
                JSONObject jsonObject = (JSONObject) parser.parse(sb.toString());
                JSONObject response = (JSONObject) jsonObject.get("response");
                resultMap.put("id", (String) response.get("id"));
                resultMap.put("email", (String) response.get("email"));
                resultMap.put("profile_image", (String) response.get("profile_image"));
                resultMap.put("gender", (String) response.get("gender"));
                resultMap.put("name", (String) response.get("name"));
            } catch (ParseException e) {
                e.printStackTrace();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
    	
        return resultMap;
    }


}
