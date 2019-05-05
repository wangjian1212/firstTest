package com.sinosoft.exam.quest.controller;

import com.sinosoft.exam.quest.model.Quest;
import com.sinosoft.exam.quest.service.QuestService;
import com.sinosoft.exam.user.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/quest")
public class QuestController {
    private static Logger logger = LoggerFactory.getLogger(QuestController.class);
    @Autowired
    QuestService questService;

    /**
     * 查看反馈列表
     * @param request
     * @return
     */
    @RequestMapping(value="/list/{tab}", method= RequestMethod.GET)
    public ModelAndView list(HttpServletRequest request, @PathVariable("tab") String tab){
        User user = (User) request.getSession().getAttribute("user");
        logger.debug("current login user: " + user.getName());
        String userId = user.getId();
        if("1".equals(tab)){//全部列表
            userId = "";
        }
        List<Quest> list = questService.getQuestsByUserId(userId);
        ModelAndView mv = new ModelAndView("index");
        mv.addObject("list", list);
        return mv;
    }
    @ResponseBody
    @RequestMapping(value="/questList", method= RequestMethod.GET)
    public Map questList(HttpServletRequest request){
        User user = (User) request.getSession().getAttribute("user");
        logger.debug("current login user: " + user.getName());
        String userId = user.getId();
        List<Quest> list = questService.getQuestsByUserId(userId);
        Map map  = new HashMap();
        map.put("total", list.size());
        map.put("rows",list);

        return map;
    }

    /**
     * 通过ID查看问题反馈
     * @param request
     * @param id
     * @return
     */
    @RequestMapping(value="/view/{id}", method= RequestMethod.GET)
    public ModelAndView view(HttpServletRequest request, @PathVariable("id") String id){
        Quest quest = new Quest();
        quest = questService.getQuestById(id);
        ModelAndView mv = new ModelAndView("quest_view");
        mv.addObject("quest",quest);
        return mv;
    }

    /**
     * 打开发帖页面
     * @return
     */
    @RequestMapping(value="/create", method= RequestMethod.GET)
    public ModelAndView create(){
        Quest quest = new Quest();
        ModelAndView mv = new ModelAndView("quest_edit");
        mv.addObject("quest", quest);
        return mv;
    }

    /**
     * 发帖
     * @param request
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping(value="/saveQuest", method= RequestMethod.POST)
    public String saveQuest(HttpServletRequest request,  String title, String content){
        User user = (User) request.getSession().getAttribute("user");
        SimpleDateFormat dft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Quest quest = new Quest();
        quest.setCreUserId(user.getId());
        quest.setCreUserName(user.getName());
        quest.setCreTime(dft.format(new Date()));
        quest.setTitle(title);
        quest.setContent(content);
        int result = questService.saveQuest(quest);
        logger.debug("saveQuest resultr: " + result);
        return result > 0 ? "true" : "false";
    }

    /**
     * 测试用
     * @return
     */
    @RequestMapping(value="/test")
    public ModelAndView test1(){
        ModelAndView mv = new ModelAndView("test");
        return mv;
    }
}
