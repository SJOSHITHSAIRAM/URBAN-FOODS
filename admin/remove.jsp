<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); // HTTP 1.1
    if (session.getAttribute("success-admin-login-uname")==null){
        response.sendRedirect("http://localhost:8081/URBAN-FOODS/login.html");
    }
%>
<%
    String email = request.getParameter("remove_email");
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@joshith:1521:orcle123","scott","tiger123");
        String qry = "delete from registration where email = '"+email+"'";
        PreparedStatement pstmt = con.prepareStatement(qry);
        int sts = pstmt.executeUpdate();
        if(sts == 1){
            response.sendRedirect("http://localhost:8081/URBAN-FOODS/admin/success-remove.jsp");
        }
        else{
            response.sendRedirect("http://localhost:8081/URBAN-FOODS/admin/unsuccess-remove.jsp");
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>