<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.text.DateFormat, java.util.Date" %>
<%
    boolean sw = false;
    String message = "<h3>������ ��Ű ���� </h3><hr>"; 
    Cookie date = null; //�湮����
    Cookie cnt  = null; //�湮Ƚ��
    Cookie[] cookies = request.getCookies();  //��� ��Ű�� ��´�.
	
    if(cookies != null ) {
       for(int i=0;i<cookies.length;i++) {
         message += " ��Ű �̸� : "+ cookies[i].getName() + " / ��Ű�� : " + 
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
       message += "����Ʈ ù �湮�� ȯ���մϴ�!<br> <hr> ";
    }
  
    String dateValue = String.valueOf(System.currentTimeMillis());  //�ý����ǽð�
    
    if (!sw) {      //ó�� �湮�� ��� ��Ű����
       date = new Cookie("dateCookie",dateValue);     
       date.setMaxAge(365*24*60*60); //��ȿ�Ⱓ 365��
       date.setPath("/aa"); //��ȿ ��� ����
       response.addCookie(date); //��Ű �߰�

       cnt = new Cookie("cntCookie",String.valueOf(1));     
       cnt.setMaxAge(365*24*60*60); //��ȿ�Ⱓ 365��
       cnt.setPath("/aa");
       response.addCookie(cnt);
    }
    else { //ó�� �湮�� �ƴ� ����
       long conv = Long.parseLong(date.getValue());
       int  count = Integer.parseInt(cnt.getValue()) + 1;
	       
       message += "<hr>������ �湮 : " + new Date(conv) + "<br> �湮Ƚ�� : " + count ;
	
       //��Ű�� ������ �߰�
       date.setValue(dateValue);
       date.setMaxAge(365*24*60*60);  //365��
       date.setPath("/");
       response.addCookie(date);
	
       cnt.setValue(String.valueOf(count));
       cnt.setMaxAge(365*24*60*60);  //365��
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