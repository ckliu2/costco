<%@ page session = "false" %><%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %><%@ page contentType="text/html;charset=utf-8"%><%@ taglib uri="/webwork" prefix="ww" %><%--
--%>|<fmt:message key="common.pleaseSelect"/>...<ww:set name="list" value="%{findIndustrys()}"/><ww:iterator value="list"><%--
--%>,<ww:property value="id"/>|<ww:property value="name"/><%--
--%></ww:iterator>