package com.bst.ticket.dao;

import java.util.List;
import java.util.Map;

public interface MainDao {
    public List<Map<String, Object>> ticketList(Map<String, Object> tmap) throws Exception;

}
