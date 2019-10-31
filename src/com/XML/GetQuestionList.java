package com.XML;

import com.entity.Question;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Random;

public class GetQuestionList {
    public ArrayList<Question> getEasyQuestion(String file, int num) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        ArrayList<Question> questionArrayList = new ArrayList<>();
        Element root = document.getRootElement();//获取根节点

        String type = file.substring(file.length() - 6);
        ArrayList<Question> easyqusetionarraylist = new ArrayList<>();
        Random random = new Random();
        switch (type) {
            case "单选.xml":
            case "多选.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("易")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setOption1(next.elementText("option1"));
                        question.setOption2(next.elementText("option2"));
                        question.setOption3(next.elementText("option3"));
                        question.setOption4(next.elementText("option4"));
                        question.setTrueAnswer(next.elementText("trueAnswer"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;

            case "判断.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("易")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setOption1(next.elementText("option1"));
                        question.setOption2(next.elementText("option2"));
                        question.setTrueAnswer(next.elementText("trueAnswer"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;

            case "填空.xml":
            case "简答.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("易")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;
            default:
                break;
        }

        return null;
    }

    public ArrayList<Question> getMiddleQuestion(String file, int num) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        ArrayList<Question> questionArrayList = new ArrayList<>();
        Element root = document.getRootElement();//获取根节点

        String type = file.substring(file.length() - 6);
        ArrayList<Question> easyqusetionarraylist = new ArrayList<>();
        Random random = new Random();
        switch (type) {
            case "单选.xml":
            case "多选.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("中")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setOption1(next.elementText("option1"));
                        question.setOption2(next.elementText("option2"));
                        question.setOption3(next.elementText("option3"));
                        question.setOption4(next.elementText("option4"));
                        question.setTrueAnswer(next.elementText("trueAnswer"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;

            case "判断.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("中")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setOption1(next.elementText("option1"));
                        question.setOption2(next.elementText("option2"));
                        question.setTrueAnswer(next.elementText("trueAnswer"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;

            case "填空.xml":
            case "简答.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("中")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;
            default:
                break;
        }

        return null;
    }

    public ArrayList<Question> getHardQuestion(String file, int num) {
        SAXReader saxReader = new SAXReader();
        Document document = null;

        try {
            document = saxReader.read(new File(file));
        } catch (DocumentException e) {
            e.printStackTrace();
        }
        ArrayList<Question> questionArrayList = new ArrayList<>();
        Element root = document.getRootElement();//获取根节点

        String type = file.substring(file.length() - 6);
        ArrayList<Question> easyqusetionarraylist = new ArrayList<>();
        Random random = new Random();
        switch (type) {
            case "单选.xml":
            case "多选.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("难")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setOption1(next.elementText("option1"));
                        question.setOption2(next.elementText("option2"));
                        question.setOption3(next.elementText("option3"));
                        question.setOption4(next.elementText("option4"));
                        question.setTrueAnswer(next.elementText("trueAnswer"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;

            case "判断.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("难")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setOption1(next.elementText("option1"));
                        question.setOption2(next.elementText("option2"));
                        question.setTrueAnswer(next.elementText("trueAnswer"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;

            case "填空.xml":
            case "简答.xml":
                easyqusetionarraylist.clear();
                for (Iterator i = root.elementIterator(); i.hasNext(); ) {
                    Question question = new Question();
                    Element next = (Element) i.next();
                    if (next.elementText(("difficult")).equals("难")) {
                        question.setType(next.getName());
                        question.setQuestion(next.elementText("question"));
                        question.setDifficult(next.elementText("difficult"));
                        questionArrayList.add(question);
                    }
                }
                for (int i = 0; i < num; i++) {
                    int j = random.nextInt(questionArrayList.size());
                    easyqusetionarraylist.add(questionArrayList.get(j));
                    questionArrayList.remove(j);
                }
                return easyqusetionarraylist;
            default:
                break;
        }

        return null;
    }

}
