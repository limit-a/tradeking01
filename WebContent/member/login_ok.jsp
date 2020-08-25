<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<c:set var="game_id" value="${param.game_id }" />
<c:set var="game_pw" value="${param.game_password }" />

<sql:setDataSource var="con" driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:orcl" user="jaehan"
	password="123456" />

<sql:query var="rs" dataSource="${con }">
select * from game_member where id=? and password=?
<sql:param>${game_id }</sql:param>
	<sql:param>${game_pw }</sql:param>
</sql:query>

<c:forEach var="data" items="${rs.rows}">
	<c:set var="id" value="${data['id'] }" scope="session" />
</c:forEach>
<c:if test="${sessionScope.id==null }">
	<script>
		alert("아이디 또는 비밀번호가 올바르지 않습니다");
		location.href = "Start.jsp?part=member&page=login";
	</script>
</c:if> 
<script type="text/javascript">
	location.href = '/tradeking01';
</script>




<%-- <%
	String toy_id = request.getParameter("toy_id");
	String toy_pw = request.getParameter("toy_password");
	
	Connection con = null;
	
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "jaehan";
	String pw = "123456"; 
	String sql = "select * from member where id='" + toy_id + "' and password='" + toy_pw + "'";

	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, pw);

		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) {
			session.setAttribute("id", toy_id);
%>
<script type="text/javascript">
	location.href = '/shop';
</script>
<%
	} else {
%>
<script>
	alert("아이디 또는 비밀번호가 올바르지 않습니다");
	location.href = "index.jsp?part=member&page=login";
</script>
<%
	}
	} catch (SQLException e) {
		e.printStackTrace();
	}
%> --%>
