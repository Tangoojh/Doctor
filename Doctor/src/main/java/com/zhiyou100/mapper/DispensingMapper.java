package com.zhiyou100.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.Dispensing;

public interface DispensingMapper {

	List<Dispensing> findAll(Map<String, String> map);

	Dispensing lookOne(String medicalRecord);

}
