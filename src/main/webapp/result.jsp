<%@page import="java.net.URL,javax.xml.namespace.QName,javax.xml.ws.Service,org.jboss.samples.jws.Calculator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculator Result</title>
</head>
<% int value1 = 0; int value2 = 0; int sum = 0;

try { out.print( request.getParameter( "value1" ) + " " + request.getParameter( "value2" ) );
value1 = Integer.parseInt( request.getParameter( "value1" ) );
value2 = Integer.parseInt( request.getParameter( "value2" ) );

//URL url = new URL("http://localhost:8080/jaxws-calculator-1.0/calculator?wsdl");
//QName qname = new QName("http://jws.samples.jboss.org", "Calculator");
//Service service = Service.create(url,qname);
//Calculator calc = (Calculator)service.getPort(Calculator.class);

sum =value1+value2;

} catch ( Exception e ) { e.printStackTrace();
} %>

 
 <body> The result is: <%=value1%>+<%=value2%>=<%=sum%> <br> <a href="index.jsp">Back</a> </body>
 
  </html>