<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  int id = Integer.parseInt(request.getParameter("id"));
  java.util.Map<Integer,Integer> cart = (java.util.Map<Integer,Integer>)session.getAttribute("cart");
  if(cart!=null){ cart.remove(id); }
  response.sendRedirect("cart.jsp");
%>
