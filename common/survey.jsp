<%
String uid=request.getParameter("uid");
String upage="http://203.71.172.251/survey/common/svyh.html?survey.eid=50836bb79b1a4ad2&uid="+uid;
response.sendRedirect(upage);
%>