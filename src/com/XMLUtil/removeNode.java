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
import java.util.Iterator;

public class removeNode {
    //从新闻中移除
    public News remove(String file, String d) {
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
            n.setEditor(next.elementText("editor"));
            n.setDate(next.elementText("date"));
            n.setContent(next.elementText("content"));
            //将新闻从原新闻中删除
            if (next.elementText("date").equals(d)) {
                root.remove(next);
                break;
            }
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
