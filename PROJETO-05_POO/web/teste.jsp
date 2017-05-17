<%@page import="br.com.fatecpg.classes.Quiz"%>
<%@page import="br.com.fatecpg.classes.Question"%>
<%@page import="br.com.fatecpg.classes.Jogador"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("test")!=null){
        String nome=request.getParameter("nome");
        Quiz.validarTeste(new String[]{
            request.getParameter("0"),
            request.getParameter("1"),
            request.getParameter("2"),
            request.getParameter("3"),
            request.getParameter("4"),
            request.getParameter("5"),
            request.getParameter("6"),
            request.getParameter("7"),
            request.getParameter("8"),
            request.getParameter("9")
        }, nome);
        response.sendRedirect("ranking.jsp");
    }
    int c = 1;
%>
<html>
    <head>
        <%@include file="WEB-INF/jspf/head.jspf" %>
        <title>Perguntas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>        
        <div class="section section-white">
	    <div class="container">
	        <div class="row">
                    <div class="section-title">
                        <h1>WebQuiz</h1>
                    </div>
                    <form action="ranking.jsp">
                        <label value="Insira seu nome: ">
                        <input type="text" name="nome" placeholder="Seu Nome" required/>
                        <br><br>
                        <%ArrayList<Question> test = Quiz.getTeste();%>
                        <%Collections.shuffle(test);%>
                        <%int parar = 1;%>
                        <%for(Question q: test){%>
                        <%if(parar>10){break;};%>
                        <h4><%=c+"°) "%><%= q.getPergunta() %></h4>
                        <%for(String alternative: q.getAlternativas()){%>
                        <input type="radio" name="<%=test.indexOf(q)%>"
                               value="<%=alternative%>"id="<%=alternative%>"/><label for="<%=alternative%>">&nbsp;<%=alternative%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                        <%}%>
                        <hr/>
                        <%c++; parar++;}%> <!--Incrementa o numero da pergunta-->
                        <input type="submit" class="btn btn-blue" name="test" value="Concluir"/>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>