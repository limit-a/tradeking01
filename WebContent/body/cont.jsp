<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Date, com.util.NoticeT"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="nt" value="<%=new NoticeT()%>" />

<div class="cont__top">
	<%-- <div class="cont__intro-img">
		<img alt="" src="image/intro_img.jpg">
	</div>
	<div class="cont__notice-list">
		공지사항
		<c:forEach var="list" items="${nt.list }">
	 ${list.title }
	 </c:forEach>
	</div> --%>
</div>




	<%-- <fmt:setLocale value="en_US" />
	<fmt:setLocale value="ko_Kr" /> 
	<fmt:formatNumber value="543600" type="currency" />
	<c:set var="num" value="0.15" />
	<fmt:formatNumber value="${num }" type="percent" />
	<fmt:formatNumber value="12345.6789000" pattern="###,###원" />
	
	<c:set var="date" value="<%=new Date()%>" />
	<fmt:formatDate value="${date }" type="date" />
	<fmt:formatDate value="${date }" type="time" />
	<fmt:formatDate value="${date }" type="both" />
	<fmt:formatDate value="${date }" pattern="yyy년 mm월 dd일 hh시 mm분" /> --%>

	<%-- <%=session.getAttribute("id")%>
	<%
		session.removeAttribute("id");
	    session.setMaxInactiveInterval(10);
	    int time = session.getMaxInactiveInterval();
	    session.invalidate();
	%>
	<%= time %>
	<%=session.getAttribute("id")%> 
	<%
		Cookie cook = new Cookie("name", "김유신");
		response.addCookie(cook);
		String reque_cook = request.getHeader("Cookie");
	%> 
	
	<c:forEach var="i" begin="0" end="10" step="1">
	${i }
	</c:forEach>

	<c:set var="arr" value="<%=new int[] { 10, 20, 30, 40, 50, 60 }%>" />
	<c:forEach var="i" items="${arr }">
	${i }
	</c:forEach>
	--%>
</div>