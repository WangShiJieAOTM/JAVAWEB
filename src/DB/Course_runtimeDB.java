package DB;

import model.Course;
import model.CourseRuntime;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Course_runtimeDB {
    public CourseRuntime SelectByCno(String cno) throws SQLException {
        Connection connection=DB.getConnection();
        String sql="select * from course_runtime where cno=?";
        PreparedStatement ps=connection.prepareStatement(sql);
        ps.setString(1,cno);
        ResultSet resultSet=ps.executeQuery();
        CourseRuntime course_runtime=new CourseRuntime();
        if(resultSet.next())
        {
            course_runtime.setCno(resultSet.getInt("cno"));
            course_runtime.setRunday(resultSet.getInt("runday"));
            course_runtime.setBegintime(resultSet.getInt("begintime"));
            course_runtime.setEndtime(resultSet.getInt("endtime"));
            course_runtime.setSemester(resultSet.getString("semester"));
        }
        DB.close(connection,ps,resultSet);
        return course_runtime;
    }
}
