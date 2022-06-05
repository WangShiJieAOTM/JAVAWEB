package servlets.root;
import DB.*;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import model.Course;
import model.CourseRuntime;
import model.CourseSemester;
import model.Teacher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/runinfo")
public class runinfo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        String cno=request.getParameter("cno");
        CourseDB course_db = new CourseDB();
        TeacherDB teacher_db = new TeacherDB();
        CourseSemesterDB courseSemester_db = new CourseSemesterDB();
        Course_runtimeDB course_runtime_db = new Course_runtimeDB();
        Object[] res=new Object[2];
        String [] row=new String[3];

        String[] day_list = new String[]{"一","二","三","四","五","六","日"};

        try {
            Course course = course_db.SelectByCno(cno);
            Teacher teacher = teacher_db.getInfo(course.getSettno());
            CourseSemester coursesemester = courseSemester_db.getBycno(cno);
            CourseRuntime courseRuntime = course_runtime_db.SelectByCno(cno);
            row[0]= teacher.getTname();
            row[1]= teacher.getTno();
            row[2]= coursesemester.getWeekbegin()+"-"+coursesemester.getWeekend()+"周";
            res[0]=row;
            String[] row2=new String[3];
            row2[0]= "周"+day_list[courseRuntime.getRunday()-1];
            row2[1]= String.valueOf(courseRuntime.getBegintime())+"-"+String.valueOf(courseRuntime.getEndtime());
            row2[2]= coursesemester.getLocation();
            res[1]=row2;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        Object Infotemp= JSONObject.toJSON(res);
        Object returnvalue= JSONArray.toJSON(Infotemp);
        PrintWriter printWriter=response.getWriter();
        printWriter.println(returnvalue);
        response.setStatus(200);
        printWriter.flush();
        printWriter.close();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
