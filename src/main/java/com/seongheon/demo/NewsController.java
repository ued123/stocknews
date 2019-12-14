package com.seongheon.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class NewsController {

    @Autowired
    CompanyInfoDAO companyInfoDAO;

    @RequestMapping(value="/",method = RequestMethod.GET)
    public String home() {
        return "home";
    }

    @RequestMapping(value="/news",method= RequestMethod.GET)
    public void newsSearchGET(Model model) {
        List<CompanyInfoVO> companyInfoVOList = companyInfoDAO.doCompanyList();
        model.addAttribute("companyList",companyInfoVOList);
    }

    //기업을 클릭할때마다 요청을 보내서 뉴스내용을 가져옴.
    @RequestMapping(value="/news/{name}",method= RequestMethod.POST)
    public @ResponseBody String newsSearchPOST(@PathVariable("name") String name) {

        String result = NaverSearchApi.doSearch(name);
        return result;
    }

}
