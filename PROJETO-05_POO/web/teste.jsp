<%@page import="sun.security.util.Length"%>
<%@page import="br.com.fatecpg.classes.Quiz"%>
<%@page import="br.com.fatecpg.classes.Question"%>
<%@page import="br.com.fatecpg.classes.Jogador"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    if(request.getParameter("test")!=null){
        double nota=Quiz.validarTeste(new String[]{
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
        });
        String nome=request.getParameter("nome");
        for (String nomeJogador : Quiz.pessoas.keySet()) {
        Jogador j = Quiz.pessoas.get (nomeJogador);
            if(nome==nomeJogador){
                
            }else{
                
            }          
        }
   
        for(int i=0;i<Quiz.jogadores.length;i++){}
        response.sendRedirect("index.jsp");
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
                    <form>
                        <label value="Insira seu nome: ">
                        <input type="text" name="nome" placeholder="Seu Nome" required/>
                        <br><br>
                        <%ArrayList<Question> test = Quiz.getTeste();%>
                        <%for(Question q: test){%>
                        <h4><%=c+"°) "%><%= q.getPergunta() %></h4>
                        <%for(String alternative: q.getAlternativas()){%>
                        <input type="radio" name="<%=test.indexOf(q)%>"
                        value="<%=alternative%>"/><%=alternative%>
                        <%}%>
                        <hr/>
                        <%c++;}%> <!--Incrementa o numero da pergunta-->
                        <input type="submit" class="btn btn-blue" name="test" value="Concluir"/>
                    </form>
                </div>
            </div>
        </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>