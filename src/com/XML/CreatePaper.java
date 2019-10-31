package com.XML;

import com.entity.Question;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.XMLWriter;

import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

public class CreatePaper {
    public ArrayList<Question> getQuestion(String course, ArrayList<String> type, ArrayList<Integer> easy_num, ArrayList<Integer> middle_num, ArrayList<Integer> hard_num) {
        String qtype = null;
        GetQuestionList getQuestionList = new GetQuestionList();
        ArrayList<Question> questionArrayList = new ArrayList<>();

        for (int i = 0; i < type.size(); i++) {
            qtype = type.get(i);
            for (int j = 0; j < 3; j++) {
                switch (j) {
                    case 0:
                        questionArrayList.addAll(getQuestionList.getEasyQuestion("/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/" + course + "/" + qtype + ".xml", easy_num.get(i)));
                        break;
                    case 1:
                        questionArrayList.addAll(getQuestionList.getMiddleQuestion("/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/" + course + "/" + qtype + ".xml", middle_num.get(i)));
                        break;
                    case 2:
                        questionArrayList.addAll(getQuestionList.getHardQuestion("/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/questionBank/" + course + "/" + qtype + ".xml", hard_num.get(i)));
                        break;
                }
            }
        }
        return questionArrayList;
    }

    public void createPaper(ArrayList<String> type, String sid, String course, ArrayList<Integer> value,ArrayList<Integer> easy_num, ArrayList<Integer> middle_num, ArrayList<Integer> hard_num){
        ArrayList<Question> arrayList = this.getQuestion(course, type, easy_num, middle_num, hard_num);

        String fileName = "/Users/songbin/Develop/IdeaProjects/OnlineExamSystem/xml/teacher/宋斌/grade/" + course + "/" + sid +".xml";//创建的文件的文件名
        Document document = DocumentHelper.createDocument();//创建xml文件

        Element paper = document.addElement("paper");//建立根节点


        for (int i = 0; i < arrayList.size(); i++) {
            Question q = arrayList.get(i);
            Element qtype = paper.addElement(q.getType());
            Element mark, option1, option2, option3, option4, trueAnswer, answer;
            Element question = qtype.addElement("question");
            question.setText(q.getQuestion());
            switch (q.getType()) {
                case "singleSelection":
                    mark = qtype.addElement("mark");
                    mark.setText(value.get(i).toString());
                    option1 = qtype.addElement("option1");
                    option1.setText(q.getOption1());

                    option2 = qtype.addElement("option2");
                    option2.setText(q.getOption2());

                    option3 = qtype.addElement("option3");
                    option3.setText(q.getOption3());

                    option4 = qtype.addElement("option4");
                    option4.setText(q.getOption4());

                    trueAnswer = qtype.addElement("trueAnswer");
                    trueAnswer.setText(q.getTrueAnswer());

                    answer = qtype.addElement("answer");
                    break;

                case "multipleSelection":
                    option1 = qtype.addElement("option1");
                    option1.setText(q.getOption1());

                    option2 = qtype.addElement("option2");
                    option2.setText(q.getOption2());

                    option3 = qtype.addElement("option3");
                    option3.setText(q.getOption3());

                    option4 = qtype.addElement("option4");
                    option4.setText(q.getOption4());

                    trueAnswer = qtype.addElement("trueAnswer");
                    trueAnswer.setText(q.getTrueAnswer());

                    answer = qtype.addElement("answer");
                    break;

                case "trueOrFalse":
                    trueAnswer = qtype.addElement("trueAnswer");
                    trueAnswer.setText(q.getTrueAnswer());

                    answer = qtype.addElement("answer");
                    break;

                case "fillBlank":
                    answer = qtype.addElement("answer");
                    break;

                case "shortAnswerQuestion":
                    answer = qtype.addElement("answer");
                    break;
                default:
                    break;
            }
        }



        long time = System.currentTimeMillis();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式

        System.out.println(df.format(time));
        System.out.println(df.format(time + 120 * 60 * 1000));
        Element Time = paper.addElement("Time");
        Element begin = Time.addElement("beginTime");
        begin.setText(df.format(time));
        Element end = Time.addElement("endTime");
        Element deadline = Time.addElement("deadline");
        deadline.setText(df.format(time + 120 * 60 * 1000));
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
