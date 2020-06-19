package com.github.edu.modular.edu.controller;

import com.github.edu.core.base.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import com.github.edu.core.log.LogObjectHolder;
import com.github.edu.modular.edu.model.Faq;
import com.github.edu.modular.edu.service.IFaqService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

/**
 * faq控制器
 *
 * @author Monkey
 * @Date 2020-06-19 15:26:09
 */
@Controller
@RequestMapping("/faq")
@Api(value = "Faq-controller", description = "faq")
public class FaqController extends BaseController {

    private String PREFIX = "/edu/faq/";

    @Autowired
    private IFaqService faqService;

    /**
     * 跳转到faq首页
     */
    @RequestMapping("")
    public String index() {
        return PREFIX + "faq.html";
    }

    /**
     * 跳转到添加faq
     */
    @RequestMapping("/faq_add")
    public String faqAdd() {
        return PREFIX + "faq_add.html";
    }

    /**
     * 跳转到修改faq
     */
    @RequestMapping(value = "/faq_update/{faqId}", method = RequestMethod.GET)
    @ApiOperation(value = "编辑faq", notes = "编辑faq")
    public String faqUpdate(@PathVariable Integer faqId, Model model) {
        Faq faq = faqService.selectById(faqId);
        model.addAttribute("item",faq);
        LogObjectHolder.me().set(faq);
        return PREFIX + "faq_edit.html";
    }

    /**
     * 获取faq列表
     */
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "获取faq列表", notes = "获取faq列表")
    public Object list(String condition) {
        return faqService.selectList(null);
    }

    /**
     * 新增faq
     */
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "新增faq", notes = "新增faq")
    public Object add(Faq faq) {
        faqService.insert(faq);
        return SUCCESS_TIP;
    }

    /**
     * 删除faq
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "删除faq", notes = "删除faq")
    public Object delete(@RequestParam Integer faqId) {
        faqService.deleteById(faqId);
        return SUCCESS_TIP;
    }

    /**
     * 修改faq
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    @ApiOperation(value = "修改faq", notes = "修改faq")
    public Object update(Faq faq) {
        faqService.updateById(faq);
        return SUCCESS_TIP;
    }

    /**
     * faq详情
     */
    @RequestMapping(value = "/detail/{faqId}", method = RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value = "faq详情", notes = "faq详情")
    public Object detail(@PathVariable("faqId") Integer faqId) {
        return faqService.selectById(faqId);
    }
}
