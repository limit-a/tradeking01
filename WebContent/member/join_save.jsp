<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*, com.member.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<p>
	ID :${idt }</p>
<p>회원가입이 되었습니다</p>




<%-- <c:set var="my" value="<%=new Member()%>" />

<c:set target="${my }" property="toy_id" value="${param.toy_id }" />
<c:set target="${my }" property="toy_password"
	value="${param.toy_password }" />
<c:set target="${my }" property="toy_name" value="${param.toy_name }" />
<c:set target="${my }" property="toy_email" value="${param.toy_email }" />
<c:set target="${my }" property="postcode" value="${param.postcode }" />
<c:set target="${my }" property="addr" value="${param.addr }" />
<c:set target="${my }" property="child_age" value="${param.child_age }" />

<c:set var="items" value="${paramValues.item }" />
<c:set var="temp" value="null" />
<c:if test="${items != null }">
	<c:set var="temp" value="${items[0] }" />
	<c:forEach items="${items }" var="i" begin="1" step="1">
		<c:set var="temp" value="${temp }-${i }"></c:set>
	</c:forEach>
</c:if>
<c:set target="${my }" property="item" value="${temp }" />

<sql:setDataSource var="con" driver="oracle.jdbc.driver.OracleDriver"
	url="jdbc:oracle:thin:@localhost:1521:orcl" user="jaehan"
	password="123456" />

<sql:query var="rs" dataSource="${con }">
select Max(num) as m from member
</sql:query>

<c:forEach var="data" items="${rs.rows}">
	<c:set var="n" value="${data['m']+1 }" />
</c:forEach>

<sql:update dataSource="${con }">
insert into member(num, id, password, name, email, postcode, addr, childage, item) values(?, ?, ?, ?, ?, ?, ?, ?, ?)
<sql:param>${n }</sql:param>
	<sql:param>${my.toy_id }</sql:param>
	<sql:param>${my.toy_password }</sql:param>
	<sql:param>${my.toy_name }</sql:param>
	<sql:param>${my.toy_email }</sql:param>
	<sql:param>${my.postcode }</sql:param>
	<sql:param>${my.addr }</sql:param>
	<sql:param>${my.child_age }</sql:param>
	<sql:param>${my.item }</sql:param>
</sql:update>

<p>
	ID :${my.toy_id }</p>
<p>회원가입이 되었습니다</p> --%>




<%-- <jsp:useBean id="my" class="com.member.Member" />

<%
	my.setToy_id(request.getParameter("toy_id"));
	my.setToy_password(request.getParameter("toy_password"));
	my.setToy_name(request.getParameter("toy_name"));
	my.setToy_email(request.getParameter("toy_email"));
	my.setPostcode(request.getParameter("postcode"));
	my.setAddr(request.getParameter("addr"));

	String age = request.getParameter("child_age");
	my.setChild_age(age);

	String[] items = request.getParameterValues("item");
	String temp = null;
	if (items != null) {
		temp = items[0];
		for (int i = 1; i < items.length; i++) {
			temp += "-" + items[i];
		}
	}
	my.setItem(temp);

	Connection con = null;

	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	String user = "jaehan";
	String pw = "123456";

	String sql = "insert into member(num, id, password, name, email, postcode, addr, childage, item) values(?, ?, ?, ?, ?, ?, ?, ?, ?)";

	try {
		Class.forName(driver);
		con = DriverManager.getConnection(url, user, pw);

		Statement stmt = con.createStatement();
		ResultSet rs = stmt
				.executeQuery("select Max(num) as m from member");
		int n = 1;
		if (rs.next()) {
			n = rs.getInt("m") + 1;
		}

		PreparedStatement ptmt = con.prepareStatement(sql);
		ptmt.setInt(1, n);
		ptmt.setString(2, my.getToy_id());
		ptmt.setString(3, my.getToy_password());
		ptmt.setString(4, my.getToy_name());
		ptmt.setString(5, my.getToy_email());
		ptmt.setString(6, my.getPostcode());
		ptmt.setString(7, my.getAddr());
		ptmt.setString(8, my.getChild_age());
		ptmt.setString(9, my.getItem());
		ptmt.executeUpdate();

	} catch (SQLException e) {
		e.printStackTrace();
	}
%>

<p>
	ID :<%=my.getToy_id() %></p>
<p>회원가입이 되었습니다</p> --%>