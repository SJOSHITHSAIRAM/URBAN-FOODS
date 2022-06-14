<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.http.*"%>
<%
    String name = request.getParameter("review_name");
    String email = request.getParameter("review_email");
    int stars = Integer.parseInt(request.getParameter("review_stars"));
    Long number = Long.parseLong(request.getParameter("review_number"));
    String address = request.getParameter("review_address");
    String message = request.getParameter("review_message");
    
    try{
        Connection con = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@joshith:1521:orcle123","scott","tiger123");
        String qry = "insert into temp values(?,?,?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(qry);
        pstmt.setString(1,name);
        pstmt.setString(2,email);
        pstmt.setInt(3,stars);
        pstmt.setLong(4,number);
        pstmt.setString(5,address);
        pstmt.setString(6,message);
        int sts = pstmt.executeUpdate();
        out.println(sts+"row inserted successfully");
        String redirectUrl = "http://localhost:8081/URBAN-FOODS/food/index.html";
        response.sendRedirect(redirectUrl);
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>