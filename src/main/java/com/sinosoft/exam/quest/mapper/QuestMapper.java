package com.sinosoft.exam.quest.mapper;

import com.sinosoft.exam.quest.model.Quest;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestMapper {
    public Quest getQuestById(String id);
    public List<Quest> getQuestsByUserId(@Param("creUserId") String userId);
    public int saveQuest(Quest quest);
}
