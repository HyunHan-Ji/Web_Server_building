<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session</title>
</head>
<body>
	<%
		String sessin_id = session.getId();
	
		long last_time = session.getLastAccessedTime();
		
		long start_time = session.getCreationTime();
		
		long used_time = (last_time - start_time) / 60000;
		
		out.println("���� ���̵�" + sessin_id + "<br>");
		out.println("��û ���� �ð� : " + start_time + "<br>");
		out.println("��û ������ �ð�" + last_time + "<br>");
		out.println("�� ����Ʈ���� ��� �ð� : " + used_time + "<br>");
	%>
</body>
</html>