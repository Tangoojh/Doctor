package com.zhiyou100.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.ChargeManager;

public interface ChargeMapper {

	List<ChargeManager> findCharge(Map<String, String> map);

	void insertInfo(ChargeManager chma);

}
