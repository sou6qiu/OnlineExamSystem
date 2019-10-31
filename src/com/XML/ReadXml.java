package com.XML;

import com.entity.Question;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

public class ReadXml {

    //读取题型
    public ArrayList<Question> getSingleSelection(String file) {
        String type = file.substring(file.length() - 6);

        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        ArrayList<Question> questionArrayList = new ArrayList<>();
        Element root = document.getRootElement();//获取根节点

        switch (type) {
            case "单选.xml":
            case "多选.xml":
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    question.setQuestion(next.elementText("question"));
                    question.setOption1(next.elementText("option1"));
                    question.setOption2(next.elementText("option2"));
                    question.setOption3(next.elementText("option3"));
                    question.setOption4(next.elementText("option4"));
                    question.setTrueAnswer(next.elementText("trueAnswer"));
                    question.setDifficult(next.elementText("difficult"));
                    questionArrayList.add(question);
                }
                return questionArrayList;

            case "判断.xml":
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    question.setQuestion(next.elementText("question"));
                    question.setOption1(next.elementText("option1"));
                    question.setOption2(next.elementText("option2"));
                    question.setTrueAnswer(next.elementText("trueAnswer"));
                    question.setDifficult(next.elementText("difficult"));
                    questionArrayList.add(question);
                }
                return questionArrayList;

            case "填空.xml":
            case "简答.xml":
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    question.setQuestion(next.elementText("question"));
                    question.setTrueAnswer(next.elementText("trueAnswer"));
                    question.setDifficult(next.elementText("difficult"));
                    questionArrayList.add(question);
                }
                return questionArrayList;
            default:
                break;
        }

        return null;
    }

    //读取试卷
    public ArrayList<Question> getPaper(String file) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }

        ArrayList<Question> questionArrayList = new ArrayList<>();
        Element root = document.getRootElement();//获取根节点

        for (Iterator i = root.elementIterator(); i.hasNext(); ) {
            Question question = new Question();
            Element next = (Element) i.next();
            switch (next.getName()) {
                case "singleSelection":
                case "multipleSelection":
                    question.setType(next.getName());
                    question.setQuestion(next.elementText("question"));
                    question.setOption1(next.elementText("option1"));
                    question.setOption2(next.elementText("option2"));
                    question.setOption3(next.elementText("option3"));
                    question.setOption4(next.elementText("option4"));
                    question.setTrueAnswer(next.elementText("trueAnswer"));
                    question.setDifficult(next.elementText("difficult"));
                    question.setAnswer(next.elementText("answer"));
                    question.setMark(Integer.parseInt(next.elementText("mark")));

                    questionArrayList.add(question);
                    break;
                case "trueOrFalse":
                    question.setType(next.getName());
                    question.setQuestion(next.elementText("question"));
//                    question.setOption1(next.elementText("option1"));
//                    question.setOption2(next.elementText("option2"));
                    question.setTrueAnswer(next.elementText("trueAnswer"));
                    question.setDifficult(next.elementText("difficult"));
                    question.setAnswer(next.elementText("answer"));
                    question.setMark(Integer.parseInt(next.elementText("mark")));

                    questionArrayList.add(question);
                    break;
                case "fillBlank":
                case "shortAnswerQuestion":
                    question.setType(next.getName());
                    question.setQuestion(next.elementText("question"));
                    question.setDifficult(next.elementText("difficult"));
                    question.setAnswer(next.elementText("answer"));
                    question.setMark(Integer.parseInt(next.elementText("mark")));

                    questionArrayList.add(question);
                    break;
                default:
                    break;
            }
        }

        return questionArrayList;
    }


    public static void main(String[] args) {

    }
}
