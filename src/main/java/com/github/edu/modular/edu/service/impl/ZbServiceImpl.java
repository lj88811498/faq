package com.github.edu.modular.edu.service.impl;

import com.baomidou.mybatisplus.mapper.BaseMapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import org.springframework.transaction.annotation.Transactional;
import com.github.edu.modular.edu.model.Zb;
import org.springframework.stereotype.Service;
import com.github.edu.modular.edu.service.IZbService;


/**
 * zbService
 *
 * @author Monkey
 * @Date 2020-06-24 16:29:27
 */
@Service
@Transactional(rollbackFor = java.lang.Exception.class)
public class ZbServiceImpl extends ServiceImpl<BaseMapper<Zb>,Zb> implements IZbService {
}
