<%@page import="com.project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
	String cource=request.getParameter("cource");
	String branch=request.getParameter("branch");
	String rollNo=request.getParameter("rollNo");
	String name=request.getParameter("name");
	String fatherName =request.getParameter("fatherName");
	String gender=request.getParameter("gender");

	
	try
	{
		Connection con=ConnectionProvider.getCon();
		//Class.forName("com.mysql.jdbc.Driver");
		//Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/srms?characterEncoding=latin1","root","rahul");
		PreparedStatement ps=con.prepareStatement("insert into student values(?,?,?,?,?,?)");
		ps.setString(1, cource);
		ps.setString(2, branch);
		ps.setString(3, rollNo);
		ps.setString(4, name);
		ps.setString(5, fatherName);
		ps.setString(6, gender);
		
		int i=ps.executeUpdate();
		//out.print(i+"recored added ");
		response.sendRedirect("adminHome.jsp");
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>