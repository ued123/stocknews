package com.seongheon.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class BoardController {

    @Autowired
    BoardDAO boardDAO;

    @RequestMapping(value="/board" , method= RequestMethod.GET)
    public void Board(Model model) {

        List<Posts> posts = boardDAO.doPosts();
        model.addAttribute("posts",posts);
    }

    @RequestMapping(value="/viewpost/{idx}",method = RequestMethod.GET)
    public String ViewPost(@PathVariable("idx") int idx,Model model){
        boardDAO.enterPost(idx);
        Posts post = boardDAO.showPost(idx);
        model.addAttribute("post",post);
        System.out.println("test");
        return "viewpost";
    }

    @RequestMapping(value="/writepost",method = RequestMethod.GET)
    public String WritePost(String contents) {

        //boardDAO.WritePost(contents);
        return "/writepostview";
    }

    @RequestMapping(value="/writepost",method = RequestMethod.POST)
    public String WritePostp(String contents) {

        boardDAO.WritePost(contents);
        return "redirect:/board";
    }
}
