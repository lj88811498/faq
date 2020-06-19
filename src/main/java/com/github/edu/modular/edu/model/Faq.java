package com.github.edu.modular.edu.model;

import io.swagger.annotations.ApiModel;
import com.baomidou.mybatisplus.enums.IdType;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.activerecord.Model;
import io.swagger.annotations.ApiParam;

import java.io.Serializable;

/**
 * <p>
 * faq
 * </p>
 *
 * @author Monkey
 * @since 2020-06-19
 */
@ApiModel
public class Faq extends Model<Faq> {

    private static final long serialVersionUID = 1L;

    @TableId(value = "faq_id", type = IdType.AUTO)
    private Integer faqId;
    /**
     * 父级
     */
    @ApiParam(value = "父级", required = false)
    private String faqPid;
    /**
     * 类型：1q 2a
     */
    @ApiParam(value = "类型：1q 2a", required = true, defaultValue = "1")
    private String faqType;
    /**
     * 内容
     */
    @ApiParam(value = "内容", required = true)
    private String faqInfo;
    /**
     * 是否删除：1是0否
     */
    @ApiParam(value = "是否删除：1是0否", required = false, defaultValue = "0")
    private String faqIsdelete;


    public Integer getFaqId() {
        return faqId;
    }

    public void setFaqId(Integer faqId) {
        this.faqId = faqId;
    }

    public String getFaqPid() {
        return faqPid;
    }

    public void setFaqPid(String faqPid) {
        this.faqPid = faqPid;
    }

    public String getFaqType() {
        return faqType;
    }

    public void setFaqType(String faqType) {
        this.faqType = faqType;
    }

    public String getFaqInfo() {
        return faqInfo;
    }

    public void setFaqInfo(String faqInfo) {
        this.faqInfo = faqInfo;
    }

    public String getFaqIsdelete() {
        return faqIsdelete;
    }

    public void setFaqIsdelete(String faqIsdelete) {
        this.faqIsdelete = faqIsdelete;
    }

    @Override
    protected Serializable pkVal() {
        return this.faqId;
    }

    @Override
    public String toString() {
        return "Faq{" +
        "faqId=" + faqId +
        ", faqPid=" + faqPid +
        ", faqType=" + faqType +
        ", faqInfo=" + faqInfo +
        ", faqIsdelete=" + faqIsdelete +
        "}";
    }
}
