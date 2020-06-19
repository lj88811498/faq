package com.github.edu.modular.edu.dao;

import com.github.edu.modular.edu.model.Faq;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

/**
 * <p>
 * faq Mapper 接口
 * </p>
 *
 * @author Monkey
 * @since 2020-06-19
 */
@Transactional
@Component
public interface FaqMapper extends BaseMapper<Faq> {

}
