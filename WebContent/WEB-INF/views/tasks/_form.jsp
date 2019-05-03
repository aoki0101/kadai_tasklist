<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${errors != null}">
    <div id="flush_error">
        入力内容にエラーがあります。<br />
        <c:forEach var="error" items="${errors}">
            ・<c:out value="${error}" /><br />
        </c:forEach>

    </div>
</c:if>
<label for="content">タスク</label><br />
<input type="text" name= "content" value="${task.content}" />
<br /><br />

<input type="hidden" name="_token" value="${_token}" />
<button type="submit">作成</button>

<style>
#flush_error {
    width: 100%;
    padding-top:28px;
    padding-bottom:28px;
    padding-left:2%;
    margin-bottom: 15px;
    color: #721c24;
    background-color: #f8d7da;
}
</style>