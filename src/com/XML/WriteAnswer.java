package com.XML;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;

public class WriteAnswer {
    public void write(String file, String value, String question) {
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

        for (Iterator j = root.elementIterator(); j.hasNext();) {
            Element next = (Element)j.next();
            System.out.println(next.elementText("question"));
            if (next.elementText("question").equals(question)) {
                next.element("answer").setText(value);
                break;
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
    }

//    public static void main(String[] args) {
//        String file = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/grade/基于Java的XML及其相关技术/std1.xml";
//
//        String value = "A";
//        SAXReader saxReader = new SAXReader();
//        Document document = null;
//
//        try {
//            document = saxReader.read(new File(file));
//        } catch (DocumentException e) {
//            e.printStackTrace();
//        }
//
//        Element root = document.getRootElement();
//        for (Iterator i = root.elementIterator(); i.hasNext(); ) {
//            Element next = (Element) i.next();
//
//            System.out.println(next.elementText("question"));
//            if (next.elementText("question").equals("test24")) {
//                next.element("answer").setText(value);
//            }
//        }
//
//        XMLWriter writer;
//        try {
//            writer = new XMLWriter(new FileWriter(new File(file)));
//            writer.write(document);
//            writer.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//    }
}
