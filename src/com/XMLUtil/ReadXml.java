package com.XMLUtil;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import com.entity.News;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

public class ReadXml {

    //读取xml
    public ArrayList<News> getElement(String file) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        ArrayList<News> newsArrayList = new ArrayList<>();
        Element root = document.getRootElement();//获取根节点

        for (Iterator i = root.elementIterator(); i.hasNext(); ) {
            News news = new News();
            Element next = (Element) i.next();
            news.setTitle(next.elementText("title"));
            news.setAuthor(next.elementText("author"));
            news.setEditor(next.elementText("editor"));
            news.setDate(next.elementText("date"));
            news.setContent(next.elementText("content"));
            news.setComment(next.elementText("comment"));
            newsArrayList.add(news);
        }
        return newsArrayList;
    }

    public News getNode(String file, String d) {
        News n = new News();
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }

        Element root = document.getRootElement();

        for (Iterator i = root.elementIterator(); i.hasNext(); ) {
            Element next = (Element) i.next();
            n.setTitle(next.elementText("title"));
            n.setAuthor(next.elementText("author"));
            n.setDate(next.elementText("date"));
            n.setContent(next.elementText("content"));
            //将新闻从原新闻中删除
            if (next.elementText("date").equals(d)) break;

        }
        //将内容写入到文件中
        XMLWriter writer;
        try {
            writer = new XMLWriter(new FileWriter(new File(file)));
            writer.write(document);
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return n;
    }

}
