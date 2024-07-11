<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.DateFormat, java.util.Date" %>
<%
    boolean sw = false;
    String message = "<h3>설정된 쿠키 정보 </h3><hr>"; 
    Cookie date = null; //방문일자
    Cookie cnt  = null; //방문횟수
    Cookie[] cookies = request.getCookies();  //모든 쿠키를 얻는다.
	
    if(cookies != null ) {
       for(int i=0;i<cookies.length;i++) {
         message += " 쿠키 이름 : "+ cookies[i].getName() + " / 쿠키값 : " + 
                         cookies[i].getValue() + "<br>";
         System.out.println("aa = "+ cookies[i].getName());
         if(cookies[i].getName().equals("dateCookie")) {
            date = cookies[i];
            sw = true;
         }else if(cookies[i].getName().equals("cntCookie")) {
            cnt = cookies[i];
         }   
       }
    }else {
       message += "사이트 첫 방문을 환영합니다!<br> <hr> ";
    }
  
    String dateValue = String.valueOf(System.currentTimeMillis());  //시스템의시간
    
    if (!sw) {      //처음 방문일 경우 쿠키생성
       date = new Cookie("dateCookie",dateValue);     
       date.setMaxAge(365*24*60*60); //유효기간 365일
       date.setPath("/aa"); //유효 경로 설정
       response.addCookie(date); //쿠키 추가

       cnt = new Cookie("cntCookie",String.valueOf(1));     
       cnt.setMaxAge(365*24*60*60); //유효기간 365일
       cnt.setPath("/aa");
       response.addCookie(cnt);
    }
    else { //처음 방문이 아닌 경우는
       long conv = Long.parseLong(date.getValue());
       int  count = Integer.parseInt(cnt.getValue()) + 1;
	       
       message += "<hr>마지막 방문 : " + new Date(conv) + "<br> 방문횟수 : " + count ;
	
       //쿠키에 새값을 추가
       date.setValue(dateValue);
       date.setMaxAge(365*24*60*60);  //365일
       date.setPath("/");
       response.addCookie(date);
	
       cnt.setValue(String.valueOf(count));
       cnt.setMaxAge(365*24*60*60);  //365일
       cnt.setPath("/");
       response.addCookie(cnt);
   }
   System.out.println("msg = "+ message);
%>
<html>
<body>
<%= message %>
</body>
</html>