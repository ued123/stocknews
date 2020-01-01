package com.seongheon.demo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    SqlSession session;

    private final static String nameSpace="Board";

    public List<Posts> doPosts() {

        return session.selectList(nameSpace+".PostList");
    }

    public Posts showPost(int idx) {

        return session.selectOne(nameSpace+".ShowPost",idx);
    }

    public void WritePost(String contents) {

        session.insert(nameSpace+".WritePost",contents);
    }

    public void enterPost(int idx) {
        session.update(nameSpace+".viewplus",idx);
    }

}