<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String path = request.getRealPath("./image");

		int max_size = 1024 * 1024 * 20;
		String name = "";
		String subject = "";
		String filename1 = "";
		String filename2 = "";
		String original1 = "";
		String original2 = "";

		try {
			MultipartRequest f = new MultipartRequest(request, path,
					max_size, "UTF-8", new DefaultFileRenamePolicy());
			Enumeration file = f.getFileNames();
			String temp = (String) file.nextElement();
			filename1 = f.getFilesystemName(temp);
			original1 = f.getOriginalFileName(temp);
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>