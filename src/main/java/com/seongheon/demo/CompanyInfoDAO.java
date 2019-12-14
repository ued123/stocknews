package com.seongheon.demo;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CompanyInfoDAO {

    @Autowired
    SqlSession session;

    private  final static String nameSpace="CompanyInfo";

    public List<CompanyInfoVO> doCompanyList() {

        return session.selectList(nameSpace+".companyinfoList");
    }
}