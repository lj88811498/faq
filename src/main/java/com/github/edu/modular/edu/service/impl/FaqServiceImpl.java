package com.github.edu.modular.edu.service.impl;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.github.edu.modular.edu.model.Faq;
import org.springframework.stereotype.Service;
import com.github.edu.modular.edu.service.IFaqService;


/**
 * faqService
 *
 * @author Monkey
 * @Date 2020-06-19 15:26:09
 */
@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class FaqServiceImpl extends ServiceImpl<BaseMapper<Faq>,Faq> implements IFaqService {
}
