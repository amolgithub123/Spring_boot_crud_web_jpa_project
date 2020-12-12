<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="lightblue">
      <div class="container">
  <h2>Article List</h2>
  <table border = "1" cellpadding = "10" cellspacing = "10"  width="100%">
   <thead>
   <tr bgcolor="red">
    <th>ID</th>
    <th>Title</th>
    <th>Category</th>
    <th >Update</th>
    <th >Delete</th>
    </tr>
   </thead>
   <tbody >
    
   
       <c:forEach items="${articleList }" var="article" >
     <tr style="text-align: center;">
    
      <td>${article.id }</td>
      <td>${article.title }</td>
      <td>${article.category }</td>
      <td style="text-align: center;">
       <spring:url value="/article/updateArticle/${article.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button" ><mark>Update</mark></a>
      </td>
      <td style="text-align: center;">
       <spring:url value="/article/deleteArticle/${article.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
  <spring:url value="/article/addArticle/" var="addURL" />
  <a class="btn btn-primary" href="${addURL }" role="button" >Add New Article</a>
 </div>
</body>
</html>