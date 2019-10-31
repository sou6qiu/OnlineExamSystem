package com.XML;

import com.entity.Question;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Iterator;

public class ModifyQuestion {
    public void modify(String file, Question question, String c) {
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

            if (next.elementText("question").equals(c)) {
                next.element("question").setText(question.getQuestion());
                next.element("option1").setText(question.getOption1());
                next.element("option2").setText(question.getOption2());
                next.element("option3").setText(question.getOption3());
                next.element("option4").setText(question.getOption4());
                next.element("trueAnswer").setText(question.getTrueAnswer());
                next.element("difficult").setText(question.getDifficult());
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

    public void modifyOther(String file, Question question, String c){
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

            if (next.elementText("question").equals(c)) {
                next.element("question").setText(question.getQuestion());
                next.element("trueAnswer").setText(question.getTrueAnswer());
                next.element("difficult").setText(question.getDifficult());
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
//
//    }

}
