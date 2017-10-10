<%-- 
    Document   : categoria
    Created on : 10/10/2017, 08:04:40
    Author     : Alunos
--%>

<%@page import="dao.CategoriaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Categoria"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MG - Categoria</title>
        <link href="css/index.css" type="text/css" rel="stylesheet">
        <link href="css/util.css" type="text/css" rel="stylesheet">
        <link href="css/tabela.css" type="text/css" rel="stylesheet">
        <link href="css/menu-superior.css" type="text/css" rel="stylesheet">
        <link href="font-awesome/css/font-awesome.css" type="text/css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Londrina+Solid" rel="stylesheet">
    </head>
    <body>
        <%@include file="menu_superior.jsp" %>
        <div class="conteudo">
            <h2 class="conteudo-titulo">Lista de Categorias</h2>
        </div>
        <div class="acao-novo">
            <a class="acao-novo-link" href="categoria_cadastro.jsp"><i class="fa fa-plus"></i>Cadastro</a>
        </div>
        <div>
            <table>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Ação</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr class="table-footer">
                        <td>Nome</td>
                        <td>Ação</td>
                    </tr>
                </tfoot>
                <tbody>
                    <% ArrayList<Categoria> categorias = new CategoriaDAO().retornarListaCategorias();
                        for (Categoria categoria : categorias) {%>
                    <tr>
                        <td><%= categoria.getNome()%></td>
                        <td>
                            <a><i class="fa fa-pencil"></i></a>
                            <a><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    <% }%> 
                </tbody>
            </table>
        </div>
    </body>
</html>
