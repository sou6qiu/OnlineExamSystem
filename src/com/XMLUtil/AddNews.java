package com.XMLUtil;

import com.entity.News;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class AddNews {
    //撰写新闻
    public void addToNews(News n, String file){
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }

        Element root = document.getRootElement();
        //添加一个news节点
        Element news = root.addElement("news");
        //添加title节点
        Element title = news.addElement("title");
        title.setText(n.getTitle());
        //添加作者节点
        Element author = news.addElement("author");
        author.setText(n.getAuthor());
        //时间日期date
        Element date = news.addElement("date");
        date.setText(n.getDate());
        //内容content
        Element content = news.addElement("content");
        content.setText(n.getContent());
        //将内容写入到文件中
        XMLWriter writer;
        try {
            writer = new XMLWriter(new FileWriter(new File(file)));
            writer.write(document);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //编辑或主编审核通过新闻
    //通过的新闻放到对应的板块
    public void addToPlate(News n, String file) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }

        Element root = document.getRootElement();

        Element news = root.addElement("news");//添加一个news节点
        Element title = news.addElement("title");//添加文本节点
        title.setText(n.getTitle());//添加文本内容
        Element author = news.addElement("author");
        author.setText(n.getAuthor());
        Element editor = news.addElement("editor");
        editor.setText(n.getEditor());
        //时间日期date
        Element date = news.addElement("date");
        date.setText(n.getDate());
        //内容content
        Element content = news.addElement("content");
        content.setText(n.getContent());
        //将内容写入到文件中
        XMLWriter writer;
        try {
            writer = new XMLWriter(new FileWriter(new File(file)));
            writer.write(document);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //编辑或主编驳回新闻
    //将被移除的新闻添加到rejected.xml
    public void addToRejected(News n, String c, String file){
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        Element root = document.getRootElement();

        Element news = root.addElement("news");//添加一个news节点

        Element title = news.addElement("title");//添加文本节点
        title.setText(n.getTitle());//添加文本内容
        Element author = news.addElement("author");
        author.setText(n.getAuthor());
        Element editor = news.addElement("editor");
        editor.setText(n.getEditor());
        //时间日期date
        Element date = news.addElement("date");
        date.setText(n.getDate());
        //内容content
        Element content = news.addElement("content");
        content.setText(n.getContent());
        Element comment = news.addElement("comment");
        comment.setText(c);
        //将内容写入到文件中
        XMLWriter writer;
        try {
            writer = new XMLWriter(new FileWriter(new File(file)));
            writer.write(document);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}