package com.sinosoft.exam.quest.service;

import com.sinosoft.exam.quest.model.Quest;

import java.util.List;

public interface QuestService {
    /**
     * 根据id查询问题反馈
     * @param id
     * @return
     */
    public Quest getQuestById(String id);

    /**
     * 提交反馈
     * @param quest
     * @return
     */
    public int saveQuest(Quest quest);

    /**
     * 根据用户id查询用户反馈列表
     * @param userId
     * @return
     */
    public List<Quest> getQuestsByUserId(String userId);
}
