<%
String uid=request.getParameter("uid");
String upage="http://203.71.172.251/survey/common/svyh1.html?survey.eid=5cf29629d6b1dd5c&uid="+uid;
response.sendRedirect(upage);
%>

