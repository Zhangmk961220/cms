package org.test.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.test.service.CategoryService;

import java.util.HashMap;
import java.util.Map;

@Controller
public class CmsCtrl {
    @Autowired
    CategoryService mCategoryService;

    //跳转到后台主页
    @RequestMapping("/")
    public ModelAndView reqAdminPage() {
        Map<String, Object> model = new HashMap<String, Object>();
        model.put("categories", mCategoryService.getMenu());
        return new ModelAndView("/admin/index", model);
    }
    //跳转到前台主页
    @RequestMapping("/front")
    public String reqFrontPage() {
        return "/front/home";
    }

}
