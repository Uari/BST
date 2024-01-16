package com.bst.ticket.dao.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bst.ticket.dao.CommunityDao;

@Repository
public class CommunityDaoImpl implements CommunityDao{
  Logger logger = LoggerFactory.getLogger(CommunityDaoImpl.class);

  @Autowired
  SqlSessionTemplate sqlSessionTemplate;

  @Override
  public List<Map<String, Object>> memberList(List<Map<String, Object>> pmap) throws Exception {
    
    return null;
  }
}
