package com.github.edu.modular.edu.bean;

import java.io.Serializable;

public class TableField implements Serializable {
    private static final long serialVersionUID = 421L;

    /**
     * 表字段
     */
    private String field;
    /**
     * 是否非空
     */
    private boolean notNull;
    /**
     * 字段默认值
     */
    private String defaultValue;
    /**
     * 字段描述
     */
    private String description;
    /**
     * 字段类型
     */
    private String type;

    private String length;

    /**
     * 是否主键
     */
    private boolean primary = Boolean.valueOf(false);

    private String sign;

    public String getField() {
        return field;
    }

    public void setField(String field) {
        this.field = field;
    }

    public boolean isNotNull() {
        return notNull;
    }

    public void setNotNull(boolean notNull) {
        this.notNull = notNull;
    }

    public String getDefaultValue() {
        return defaultValue;
    }

    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public boolean isPrimary() {
        return primary;
    }

    public void setPrimary(boolean primary) {
        this.primary = primary;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    @Override
    public String toString() {
        return "TableField{" +
                "field='" + field + '\'' +
                ", notNull=" + notNull +
                ", defaultValue='" + defaultValue + '\'' +
                ", description='" + description + '\'' +
                ", type='" + type + '\'' +
                ", length='" + length + '\'' +
                ", primary=" + primary +
                ", sign='" + sign + '\'' +
                '}';
    }
}
