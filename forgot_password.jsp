<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.http.*,java.lang.*"%>
<%
    String mail = request.getParameter("forgot_mail");
    try{
        Connection con = null;
        Statement statement = null;
        ResultSet resultSet = null;
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@joshith:1521:orcle123","scott","tiger123");
        statement = con.createStatement();
        String sql = "SELECT password FROM registration where email='"+mail+"'";
        resultSet = statement.executeQuery(sql);
        String db_pwd = "";
        while(resultSet.next()){
            db_pwd = resultSet.getString("password");
        }
        if(db_pwd==""){
            session.setAttribute("Email",mail);
            response.sendRedirect("http://localhost:8081/URBAN-FOODS/unsuccess-login.jsp");
        }
        else{
            out.println("Your password is "+db_pwd);
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
<html>
    <script>
        setTimeout(function(){
            window.location.href = 'http://localhost:8081/URBAN-FOODS/login.html';
        },5000);
    </script>
</html>