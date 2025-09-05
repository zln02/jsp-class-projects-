<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  // ?id=, ?qty=
  int id = Integer.parseInt(request.getParameter("id"));
  int qty = 1;
  try { if(request.getParameter("qty")!=null) qty = Integer.parseInt(request.getParameter("qty")); } catch(Exception e){}
  java.util.Map<Integer,Integer> cart = (java.util.Map<Integer,Integer>)session.getAttribute("cart");
  if(cart==null){ cart = new java.util.HashMap<>(); session.setAttribute("cart", cart); }
  cart.put(id, cart.getOrDefault(id,0)+qty);
  response.sendRedirect("cart.jsp");
%>
