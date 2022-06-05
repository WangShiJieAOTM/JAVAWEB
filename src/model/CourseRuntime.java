package model;

public class CourseRuntime {
    private String semester;
    private Integer cno;
    private Integer runday;
    private Integer begintime;
    private Integer endtime;

    public String getSemester() {
        return semester;
    }

    public Integer getCno(){return cno;}

    public Integer getRunday() {
        return runday;
    }

    public Integer getBegintime() {
        return begintime;
    }

    public Integer getEndtime() {
        return endtime;
    }


    public void setSemester(String semester) {
        this.semester = semester;
    }

    public void setCno(Integer cno) {
        this.cno = cno;
    }

    public void setRunday(Integer runday) {
        this.runday = runday;
    }

    public void setBegintime(Integer begintime) {
        this.begintime = begintime;
    }

    public void setEndtime(Integer endtime) {
        this.endtime = endtime;
    }


}
