package com.github.edu.modular.edu.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.github.edu.core.base.controller.BaseController;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.beans.factory.annotation.Autowired;
import com.github.edu.core.log.LogObjectHolder;
import org.springframework.web.bind.annotation.RequestParam;
import com.github.edu.modular.edu.model.Zb;
import com.github.edu.modular.edu.service.IZbService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;
import java.util.List;

/**
 * zb控制器
 *
 * @author Monkey
 * @Date 2020-06-24 16:29:27
 */
@Controller
@RequestMapping("/zb")
@Api(value = "Zb-controller", description = "zb")
public class ZbController extends BaseController {

    private String PREFIX = "/edu/zb/";

    @Autowired
    private IZbService zbService;

    /**
     * 跳转到zb首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "zb.html";
    }

    /**
     * 跳转到添加zb
     */
    @RequestMapping("/zb_add")
    public String zbAdd() {
        return PREFIX + "zb_add.html";
    }

    /**
     * 跳转到修改zb
     */
    @RequestMapping(value = "/zb_update/{zbId}", method = RequestMethod.GET)
    @ApiOperation(value = "编辑zb", notes = "编辑zb")
    public String zbUpdate(@PathVariable Integer zbId, Model model) {
        Zb zb = zbService.selectById(zbId);
        model.addAttribute("item",zb);
        LogObjectHolder.me().set(zb);
        return PREFIX + "zb_edit.html";
    }

    /**
     * 获取zb列表
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "获取zb列表,t：x，y，star排序字段，d，0正1倒", notes = "获取zb列表,t：x，y，star排序字段，d，0正1倒")
    public Object list(String t, String d) {
        EntityWrapper<Zb> zb = new EntityWrapper<Zb>();
        if (StringUtils.isNotBlank(t)) {
            List<String> orders = new ArrayList<String>();
            orders.add(t);
            if (StringUtils.isNotBlank(d)) {
                if ( d.toLowerCase().equals("1")) {
                    zb.orderDesc(orders);
                } else {
                    zb.orderAsc(orders);
                }
            }
        }

        return zbService.selectList(zb);
    }

    /**
     * 新增zb
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "新增zb", notes = "新增zb")
    public Object add(Zb zb) {
        zbService.insert(zb);
        return SUCCESS_TIP;
    }

    /**
     * 删除zb
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "删除zb", notes = "删除zb")
    public Object delete(@RequestParam Integer zbId) {
        zbService.deleteById(zbId);
        return SUCCESS_TIP;
    }

    /**
     * 修改zb
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "修改zb", notes = "修改zb")
    public Object update(Zb zb) {
        zbService.updateById(zb);
        return SUCCESS_TIP;
    }

    /**
     * zb详情
     */
    @RequestMapping(value = "/detail/{zbId}", method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "zb详情", notes = "zb详情")
    public Object detail(@PathVariable("zbId") Integer zbId) {
        return zbService.selectById(zbId);
    }
}
