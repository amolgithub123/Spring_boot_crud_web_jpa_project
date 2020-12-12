<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>     
    
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <title>Article Form</title>
 
</head>
<body>
 <div >
  <spring:url value="/article/saveArticle" var="saveURL" />
  <h2>Article</h2>
  <form:form modelAttribute="articleForm" method="post" action="${saveURL }" cssClass="form" >
   <form:hidden path="id"/>
   <div class="form-group">
    <label>Title</label>
    <form:input path="title" cssClass="form-control" id="title" />
   </div>
   <div class="form-group">
    <label>Category</label>
    <form:input path="category" cssClass="form-control" id="category" />
   </div>
   <button type="submit" class="btn btn-primary">Save</button>
  </form:form>
  
 </div>
</body>
</html>