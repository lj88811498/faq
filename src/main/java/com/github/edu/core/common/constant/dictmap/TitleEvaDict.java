package com.github.edu.core.common.constant.dictmap;

import com.github.edu.core.common.constant.dictmap.base.AbstractDictMap;

/**
 * Created by sky on 2018/11/26.
 * 修改用户状态（禁用/启用）的记录日志
 */
public class TitleEvaDict extends AbstractDictMap{
    @Override
    public void init() {
        put("titleEvaluationTitle","");
        put("titleEvaluationId","");
    }

    @Override
    protected void initBeWrapped() {
        putFieldWrapperMethodName("titleEvaluationTitle","getTitleEvaTitle");
        putFieldWrapperMethodName("titleEvaluationId","getTitleEvaTitleById");
    }
}
