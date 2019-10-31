package com.XMLUtil;

import com.entity.News;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import java.io.File;
import java.io.FileWriter;


public class CreateXML {
    public void createXML(News n) {
        String fileName = "/Users/songbin/Downloads/xml/person/test.xml";//创建的文件的文件名
        Document document = DocumentHelper.createDocument();//创建xml文件

        Element plate = document.addElement("plate");//建立根节点plate
        plate.addAttribute("xmlns:xsi", "http://www.w3.org/2001/XMLSchema-instance");
        plate.addAttribute("xsi:noNamespaceSchemaLocation", "../news.xsd");

        Element news = plate.addElement("news");//添加一个news节点
        Element title = news.addElement("title");//添加文本节点
        title.setText(n.getTitle());//添加节点内容
        Element author = news.addElement("author");
        author.setText(n.getAuthor());
        Element editor = news.addElement("editor");
        editor.setText(n.getEditor());
        Element date = news.addElement("date");
        date.setText(n.getDate());
        Element content = news.addElement("content");
        content.setText(n.getContent());
//        Element img_src = news.addElement("img_src");
//        img_src.setText(n.getImg_src());

        Element comment = news.addElement("comment");
        comment.setText(n.getComment());

        //设置生成xml的格式
        OutputFormat format = OutputFormat.createPrettyPrint();
        format.setEncoding("UTF-8");
        //将内容写入到文件中
        try {
            XMLWriter writer = new XMLWriter(new FileWriter(new File(fileName)));
            writer.write(document);
            writer.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
