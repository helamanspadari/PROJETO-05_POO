<%@page import="br.com.fatecpg.classes.Quiz"%>
<%@page import="br.com.fatecpg.classes.Question"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("test")!=null){
        Quiz.validarTeste(new String[]{
            request.getParameter("0"),
            request.getParameter("1"),
            request.getParameter("2")
        });
        response.sendRedirect("index.jsp");
    }
%>
<html>
    <head>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <title>Perguntas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <hr/>
        <div class="section section-white">
	    <div class="container">
	        <div class="row">
                    <div class="section-title">
                        <h1>WebQuiz</h1>
                    </div>
                    <form>
                        <%ArrayList<Question> test = Quiz.getTeste();%>
                        <%for(Question q: test){%>
                        <h4><%= q.getPergunta() %></h4>
                        <%for(String alternative: q.getAlternativas()){%>
                        <input type="radio" name="<%=test.indexOf(q)%>"
                        value="<%=alternative%>"/><%=alternative%>
                        <%}%>
                        <hr/>
                        <%}%>
                        <input type="submit" name="test" value="Concluir"/>
                    </form>
                </div>
            </div>
        </div>
        <hr/>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>