<%-- 
    Document   : index
    Created on : Jun 15, 2022, 6:09:32 PM
    Author     : JDTobiason
--%>
<!DOCTYPE html>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>MASS</h1>
        <form>
        <label for="username">User Name:</label> 
        <input type="text" name="username" required="true"> 
        <label for"password">Password:</label>
        <input type="text" name="password" required="true">
        <br>
        <br>
        <input type="submit" value="Update" onclick=""> 
        </form>
        <sql:setDataSource var="snapshot" driver = "com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/mass?allowPublicKeyRetrieval=true&useSSL=false"
            user="root" password="1234"/>
        <sql:update dataSource ="${snapshot}" var="result">
            UPDATE user_database SET user_name = "${param.username}", pass = "${param.password}" WHERE user_id = "test2";
        </sql:update>
    </body>
</html>
