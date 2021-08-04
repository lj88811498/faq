package com.github.edu.mq;


import java.io.Serializable;

public class Stu implements Serializable{

    /**
     * 学生id
     */
    private int id;
    private String name;
    /**
     * 语文
     */
    private int chinese;
    /**
     * 数学
     */
    private int math;
    /**
     * 英语
     */
    private int english;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getChinese() {
        return chinese;
    }

    public int getMath() {
        return math;
    }

    public void setMath(int math) {
        this.math = math;
    }

    public int getEnglish() {
        return english;
    }

    public void setEnglish(int english) {
        this.english = english;
    }

    public void setChinese(int chinese) {
        this.chinese = chinese;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Stu{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", chinese=" + chinese +
                ", math=" + math +
                ", english=" + english +
                '}';
    }
}