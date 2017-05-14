<%@page import="br.com.fatecpg.classes.Question"%>
<%@page import="br.com.fatecpg.classes.Quiz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%@include file="WEB-INF/jspf/head.jspf" %>
</head>
<body>
    <%@include file="WEB-INF/jspf/header.jspf" %>

	    <div class="section section-white">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="calltoaction-wrapper">
							<h3>Bem vindo ao <span style="color:#aec62c; text-transform:uppercase;font-size:24px;">Show do PUPO</span>, um quiz feito pelo Grupo 06, proposto para o TP-05 da disciplina POO! </h3><br/><br/>
                                                        <a href="teste.jsp" style="width:300px; height:50px;" class="btn btn-blue"><h2>Iniciar Quiz!</h2></a>
						</div>
					</div>
				</div>
			</div>
		</div>
<hr>
        <div class="section section-white">
	        <div class="container">
	        	<div class="row">
	
				<div class="section-title">
				<h2>Colaboradores</h2>
				</div>
		
		
			<ul class="grid cs-style-3">
	        	<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/luiz.jpg" alt="luiz">
						<figcaption>
							<h3>Luiz Spinelli</h3> <!--Nome-->
							<span style="color:#aec62c;">Bootstrap e estilização</span> <!--O que fez-->
						</figcaption>
					</figure>
	        	</div>	
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/andre.jpg" alt="andre add uma foto sua">
						<figcaption>
							<h3>André</h3> <!--Nome-->
							<span style="color:#aec62c;">...</span> <!--O que fez-->
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/helaman.jpg" alt="helaman add uma foto sua">
						<figcaption>
							<h3>Helaman</h3> <!--Nome-->
							<span style="color:#aec62c;">...</span> <!--O que fez-->
						</figcaption>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/higor.jpg" alt="Higor Moroni">
						<figcaption>
							<h3>Higor Moroni</h3> <!--Nome-->
							<span style="color:#aec62c;">Não fez nada de útil</span>
						</figcaption>
					</figure>
				</div>
                            	<div class="col-md-4 col-sm-6">
                                    <!--Vazio pra alinhar-->
				</div>
				<div class="col-md-4 col-sm-6">
					<figure>
						<img src="img/portfolio/raul.jpg" alt="raul add uma foto sua">
						<figcaption>
							<h3>Raul</h3> <!--Nome-->
							<span style="color:#aec62c;">...</span> <!--O que fez-->
						</figcaption>
					</figure>
				</div>
			</ul>
	        	</div>
	        </div>
	    </div>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
</html>
