package com.DAO;

 import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 import java.util.ArrayList;
 import java.util.List;
 import java.util.Date;

 import com.DAO.entity.user;
import com.DAO.util.DBHelper;


    public class UserDao {
        public int role=0;
        user user = new user();
        public boolean getUser(String userID, String password) {
            Connection conn = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            boolean flag = false;

            try {
                conn = DBHelper.getConnection();
                String sql = "select * from student;"; // SQL语句
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {

                    if (rs.getString("stdid").equals(userID)) {
                        user.setPassword(rs.getString("stdpassword"));
                        user.setName(rs.getString("stdid"));
                        user.setRealname(rs.getString("stdname"));
                        user.setMajor(rs.getString("stdmajor"));
                        user.setCollege(rs.getString("stdcollege"));
                        user.setRole(0);
                        this.role=0;
                        if (rs.getString("stdpassword").equals(password)) {
                             flag=true;
                        } else
                            flag=false;
                    }
                }
                sql="select * from teacher;";
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {

                    if (rs.getString("teaid").equals(userID)) {
                        user.setPassword(rs.getString("teapassword"));
                        user.setName(rs.getString("teaid"));
                        user.setRealname(rs.getString("teaname"));
                        user.setMajor(rs.getString("teamajor"));
                        user.setCollege(rs.getString("teacollege"));
                        user.setRole(1);
                        this.role=1;
                        if (rs.getString("teapassword").equals(password)) {
                            flag=true;
                        } else
                            flag=false;
                    }
                }
                sql="select * from officer;";
                stmt = conn.prepareStatement(sql);
                rs = stmt.executeQuery();
                while (rs.next()) {

                    if (rs.getString("offid").equals(userID)) {
                        user.setPassword(rs.getString("offpassword"));
                        user.setName(rs.getString("offid"));
                        user.setRealname(rs.getString("offname"));
                        user.setRole(2);
                        this.role=2;
                        if (rs.getString("offpassword").equals(password)) {
                            flag=true;
                        } else
                            flag=false;
                    }
                }
                return flag;
            }

            catch (Exception ex)

            {
                ex.printStackTrace();
                return false;
            }

            finally

            {
                // 释放数据集对象
                if (rs != null) {
                    try {
                        rs.close();
                        rs = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
        }
        public user userback(){
            return this.user;
        }

        //(name,password,gender,nation,phone,email,postcode,page,birthday,truename,role

        public int update(String oldname,String password,String table,String column){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE "+table+" SET "+column+"password = '"+password+"' WHERE ("+column+"id = '"+oldname+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
        return flag;
        }

        public ResultSet getSelect(String table) {
// sql语句
            String sql = "select * from "+table;
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public ResultSet getCourse(String state) {
// sql语句
            String sql = "select * from course WHERE cstate='"+state+"';";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public ResultSet availableCourse(String stdid,String not) {
// sql语句
            String sql = "select * from exam.course  where "+not+" exists(select cid from exam.choose where exam.course.cid=exam.choose.cid and stdid='"+stdid+"') and cstate='pass'; ";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public void delete_choose(String cid,String stdid){
            Connection conn;
            PreparedStatement stmt = null;
            try{
                conn = DBHelper.getConnection();
                String sql = "DELETE FROM choose WHERE (cid = '"+cid+"' and stdid='"+stdid+"');"; // SQL语句
                stmt = conn.prepareStatement(sql);

                stmt.execute();

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
        }
        public void choose(String stdid,String cid){
            Connection conn = null;
            PreparedStatement stmt = null;

            try{
                conn = DBHelper.getConnection();
                String sql =" INSERT INTO choose(stdid,cid,objectivem,pass,score) VALUES('"+stdid+"','"+cid+"',null,'unstart',null);"; // SQL语句
                stmt = conn.prepareStatement(sql);
                stmt.execute(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
        }
        public ResultSet teacherCourse(String teaid,String state) {
// sql语句
            String sql = "select * from course WHERE (cstate='"+state+"'AND teaid='"+teaid+"') ;";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public int courseAdd(String cname,String teaid,String ctime,String ccredit,String cperiod,String ctest,String cpaper ){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String precid=null;
            int cid=0;
            try{
                conn = DBHelper.getConnection();
                String sql1="select * from course;";
                pst = (PreparedStatement) conn.prepareStatement(sql1);
                rs = pst.executeQuery();
                while (rs != null && rs.next()) {
                    precid=rs.getString("cid");
                }
                cid=Integer.parseInt(precid)+1;
                precid=cid+"";
                String sql ="INSERT INTO `exam`.`course` (`cid`, `cname`, `teaid`, `ctime`, `ccredit`, `cperiod`, `cstate`, `ctest`, `cpaper`) VALUES ('"+precid+"', '"+cname+"', '"+teaid+"', '"+ctime+"', '"+ccredit+"', '"+cperiod+"', 'unreviewed', '"+ctest+"','"+cpaper+"');"; // SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);
            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }
        public int delete_request(String cid){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE course SET cstate = 'delete' WHERE (cid = '"+cid+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }
        public int coursePass(String cid){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE course SET cstate = 'pass' WHERE (cid = '"+cid+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }

        public void courseDelete(String cid){
            Connection conn = null;
            PreparedStatement stmt = null;
            try{
                conn = DBHelper.getConnection();
                String sql = "DELETE FROM course WHERE (cid = '"+cid+"' );"; // SQL语句
                stmt = conn.prepareStatement(sql);

                stmt.execute();

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
        }
        public int examAdd(String ename,int easy,int medium,int hard,int singlemark,int singlenum,int multimark,int multinum,int fillmark,int fillnum,int shortmark,int shortnum,int torfmark,int torfnum ){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String precid=null;
            int eid=0;
            try{
                conn = DBHelper.getConnection();
                String sql1="select * from exam;";
                pst = (PreparedStatement) conn.prepareStatement(sql1);
                rs = pst.executeQuery();
                while (rs != null && rs.next()) {
                    precid=rs.getString("eid");
                }
                eid=Integer.parseInt(precid)+1;
                precid=eid+"";
                String sql ="INSERT INTO `exam`.`exam` (`eid`, `ename`, `easy`, `medium`, `hard`, `singlemark`, `singlenum`, `multimark`, `multinum`, `fillmark`, `fillnum`, `shortmark`, `shortnum`, `torfmark`, `torfnum`, `estate`) VALUES ('"+precid+"','"+ename+"','"+easy+"', '"+medium+"', '"+hard+"', '"+singlemark+"', '"+singlenum+"', '"+multimark+"', '"+multinum+"', '"+fillmark+"', '"+fillnum+"', '"+shortmark+"', '"+shortnum+"', '"+torfmark+"', '"+torfnum+"','uncheck');"; // SQL语句
                System.out.println(sql);
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);
            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }
        public ResultSet getCoursePaper(String teaid,String cpaper) {
// sql语句
            String sql = "select * from course WHERE (cpaper='"+cpaper+"'AND teaid='"+teaid+"') and cstate='pass';";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public int paperPass(String column, String cid,String cpaper){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE course SET cpaper = '"+cpaper+"' WHERE ("+column+" = '"+cid+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }
        public ResultSet getExamSet() {
// sql语句
            String sql = "select * from exam WHERE (estate = 'uncheck');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public int estateChange(String eid){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE exam SET estate = 'checked' WHERE (eid = '"+eid+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }
        public int teacherAdd(String teaname,String teagender,String teacollege,String teamail,String teamajor ,String teatitle ){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String precid=null;
            int cid=0;
            try{
                conn = DBHelper.getConnection();
                String sql1="select * from teacher;";
                pst = (PreparedStatement) conn.prepareStatement(sql1);
                rs = pst.executeQuery();
                while (rs != null && rs.next()) {
                    precid=rs.getString("teaid");
                }
                cid=Integer.parseInt(precid)+1;
                precid=cid+"";
                String sql ="INSERT INTO `exam`.`teacher` (`teaid`, `teaname`, `teagender`, `teacollege`, `teamail`, `teapassword`, `teamajor`, `teatitle`) VALUES ('"+precid+"', '"+teaname+"', '"+teagender+"', '"+teacollege+"', '"+teamail+"', '"+precid+"', '"+teamajor+"', '"+teatitle+"');"; // SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);
            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }
        public int studentAdd(String stdname,String stdgender,String stdcollege,String stdgrade,String stdmajor ,String stdidcard ){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            PreparedStatement pst = null;
            ResultSet rs = null;
            String precid=null;
            int cid=0;
            try{
                conn = DBHelper.getConnection();
                String sql1="select * from student;";
                pst = (PreparedStatement) conn.prepareStatement(sql1);
                rs = pst.executeQuery();
                while (rs != null && rs.next()) {
                    precid=rs.getString("stdid");
                }
                cid=Integer.parseInt(precid)+1;
                precid=cid+"";
                String sql ="INSERT INTO `exam`.`student` (`stdid`, `stdname`, `stdgrade`, `stdcollege`, `stdgender`, `stdidcard`, `stdpassword`, `stdmajor`) VALUES ('"+precid+"', '"+stdname+"', '"+stdgrade+"', '"+stdcollege+"', '"+stdgender+"','"+stdidcard+"', '"+precid+"', '"+stdmajor+"');"; // SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);
            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }
        public void deleteRole(String id,String table,String column){
            Connection conn = null;
            PreparedStatement stmt = null;
            try{
                conn = DBHelper.getConnection();
                String sql = "DELETE FROM "+table+" WHERE ("+column+" = '"+id+"');"; // SQL语句
                stmt = conn.prepareStatement(sql);

                stmt.execute();

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
        }
        public ResultSet availableExam(String stdid,String pass) {
// sql语句
            String sql = "select * from exam.course  where  exists(select cid from exam.choose where exam.course.cid=exam.choose.cid and stdid='"+stdid+"'and pass='"+pass+"') and cstate='pass' AND cpaper='yep'; ";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public int passChange(String cid,String stdid,String pass){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE choose SET pass = '"+pass+"' WHERE (cid = '"+cid+"' AND stdid='"+stdid+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }


        public int objMarked(String cid,String stdid, int mark){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE choose SET objectivem = '"+mark+"' WHERE (cid = '"+cid+"' AND stdid='"+stdid+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }

        public int markConfirm(String cid,String stdid, int grade){
            Connection conn = null;
            PreparedStatement stmt = null;
            int flag=0;
            try{
                conn = DBHelper.getConnection();
                String sql =" UPDATE choose SET score = '"+grade+"' WHERE (cid = '"+cid+"' AND stdid='"+stdid+"');";// SQL语句
                stmt = conn.prepareStatement(sql);
                flag=stmt.executeUpdate(sql);

            }
            catch (Exception ex)

            {
                ex.printStackTrace();
            }
            finally
            {
                // 释放语句对象
                if (stmt != null) {
                    try {
                        stmt.close();
                        stmt = null;
                    } catch (Exception ex) {
                        ex.printStackTrace();
                    }
                }
            }
            return flag;
        }

        public ResultSet paperSetting( String ename) {
// sql语句
            String sql = "select * from exam WHERE (estate = 'checked' and ename='"+ename+"');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public ResultSet paperCheck_class(String tid) {
// sql语句
            String sql = "select * from course WHERE (cpaper = 'yep' and teaid='"+tid+"');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public ResultSet getCourseById (String cid) {
// sql语句
            String sql = "select * from course WHERE (cid='"+cid+"');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public ResultSet getTeacherById (String teaid) {
// sql语句
            String sql = "select * from teacher WHERE (teaid='"+teaid+"');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public ResultSet paperCheck_Student(String state,String cid) {
// sql语句
            String sql = "select * from choose,student WHERE (cid = '"+cid+"' and pass='"+state+"' and choose.stdid = student.stdid);";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public ResultSet paperFinish_Student(String stdid,String state) {
// sql语句
            String sql = "select stdid,objectivem,score,choose.cid,cname from choose,course WHERE (pass='"+state+"' and choose.cid = course.cid and stdid='"+stdid+"');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
        public ResultSet paperPi(String cid,String state) {
// sql语句
            String sql = "select student.stdid,objectivem,student.stdname from choose,student WHERE (pass='"+state+"' and choose.stdid = student.stdid and cid='"+cid+"');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public ResultSet CourseView(String teaid) {
// sql语句
            String sql = "select * from course WHERE (teaid='"+teaid+"');";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public ResultSet getMarkInfo(String cid) {
// sql语句
            String sql = "select * from course,choose,student WHERE (cid='"+cid+"' and choose.stdid=student.stdid and course.cid=choose.cid);";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }

        public ResultSet StudentMark(String stdid) {
// sql语句
            String sql = "select * from choose,course WHERE (stdid='"+stdid+"' and choose.cid=course.cid);";
// 获取到连接
            Connection conn = null;
            PreparedStatement pst = null;
            ResultSet rs = null;
            // 定义一个list用于接受数据库查询到的内容
            try {
                conn = DBHelper.getConnection();
                pst = (PreparedStatement) conn.prepareStatement(sql);
                rs = pst.executeQuery();

            } catch (Exception e) {
                e.printStackTrace();
            }
            return rs;
        }
    }









