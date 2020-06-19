package com.github.edu.modular.edu.bean;

import java.io.Serializable;
import java.util.List;

public class Table implements Serializable {
    private static final long serialVersionUID = 421L;
    /**
     * 表面
     */
    private String name;
    /**
     * 表大小
     */
    private long size;
    /**
     * 表描述
     */
    private String description;
    /**
     * 表引擎
     */
    private String engine;
    /**
     * 表编码
     */
    private String charset;
    /**
     * 表字段
     */
    private List<TableField> fieldList;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getSize() {
        return size;
    }

    public void setSize(long size) {
        this.size = size;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public String getCharset() {
        return charset;
    }

    public void setCharset(String charset) {
        this.charset = charset;
    }

    public List<TableField> getFieldList() {
        return fieldList;
    }

    public void setFieldList(List<TableField> fieldList) {
        this.fieldList = fieldList;
    }

    @Override
    public String toString() {
        return "Table{" +
                "name='" + name + '\'' +
                ", size=" + size +
                ", description='" + description + '\'' +
                ", engine='" + engine + '\'' +
                ", charset='" + charset + '\'' +
                '}';
    }
}
