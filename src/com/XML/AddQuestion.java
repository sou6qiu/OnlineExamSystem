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

public class AddQuestion {
    public void addSelection(String file, Question question, String type) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }

        String questiontype=null;
        if(type.equals("singleSelection")) questiontype="singleSelection";
        else if(type.equals("multipleSelection")) questiontype="multipleSelection";

        Element root = document.getRootElement();
        //添加一个singleSelection节点
        Element single = root.addElement(questiontype);

        Element q = single.addElement("question");
        q.setText(question.getQuestion());

        Element option1 = single.addElement("option1");
        option1.setText(question.getOption1());

        Element option2 = single.addElement("option2");
        option2.setText(question.getOption2());

        Element option3 = single.addElement("option3");
        option3.setText(question.getOption3());

        Element option4 = single.addElement("option4");
        option4.setText(question.getOption4());

        Element trueAnswer = single.addElement("trueAnswer");
        trueAnswer.setText(question.getTrueAnswer());

        Element difficult = single.addElement("difficult");
        difficult.setText(question.getDifficult());

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


    public void addOtherQuestion(String file, Question question,String type) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }

        String questiontype=null;
        switch (type) {
            case "fillBlank":
                questiontype = "fillBlank";
                break;
            case "trueOrFalse":
                questiontype = "trueOrFalse";
                break;
            case "shortAnswerQuestion":
                questiontype = "shortAnswerQuestion";
                break;
        }

        Element root = document.getRootElement();
        //添加一个singleSelection节点
        Element single = root.addElement(questiontype);

        Element q = single.addElement("question");
        q.setText(question.getQuestion());

        Element trueAnswer = single.addElement("trueAnswer");
        trueAnswer.setText(question.getTrueAnswer());

        Element difficult = single.addElement("difficult");
        difficult.setText(question.getDifficult());

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
