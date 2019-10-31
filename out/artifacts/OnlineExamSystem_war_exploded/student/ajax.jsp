<%@ page import="com.XML.WriteAnswer" %>
<%@ page import="java.nio.charset.StandardCharsets" %>
<%@ page import="org.dom4j.io.SAXReader" %>
<%@ page import="org.dom4j.Document" %>
<%@ page import="org.dom4j.DocumentException" %>
<%@ page import="org.dom4j.Element" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.dom4j.io.XMLWriter" %>
<%@ page import="java.io.FileWriter" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    response.setContentType("text/html");
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
    String value = new String(request.getParameter("value").getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
    String question = URLDecoder.decode(request.getParameter("question"),"utf-8");
    String file = URLDecoder.decode(request.getParameter("file"), "utf-8");
    System.out.println(file);
//    if (value != null && question != null) {
//        WriteAnswer writeAnswer = new WriteAnswer();
//        writeAnswer.write(file, value, question);
//    }

    SAXReader saxReader = new SAXReader();
    Document document = null;
    System.out.println(question);
    System.out.println(value);

    try {
        document = saxReader.read(new File(file));
    } catch (DocumentException e) {
        e.printStackTrace();
    }
    Element root = document.getRootElement();//获取根节点

    for (Iterator i = root.elementIterator(); i.hasNext(); ) {
        Element next = (Element) i.next();
        if (!next.getName().equals("Time")) {
            if (next.elementText("question").equals(question)) {
                next.element("answer").setText(value);
            }
        }
    }

    XMLWriter writer;
    try {
        writer = new XMLWriter(new FileWriter(new File(file)));
        writer.write(document);
        writer.close();
    } catch (IOException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
