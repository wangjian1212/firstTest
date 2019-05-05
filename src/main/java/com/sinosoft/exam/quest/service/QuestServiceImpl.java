package com.sinosoft.exam.quest.service;

import com.sinosoft.exam.quest.mapper.QuestMapper;
import com.sinosoft.exam.quest.model.Quest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestServiceImpl implements QuestService {

    @Autowired
    QuestMapper questMapper;

    @Override
    public Quest getQuestById(String id) {
        return questMapper.getQuestById(id);
    }

    @Override
    public List<Quest> getQuestsByUserId(String userId) {
        return questMapper.getQuestsByUserId(userId);
    }

    @Override
    public int saveQuest(Quest quest){
        return  questMapper.saveQuest(quest);
    }
}
