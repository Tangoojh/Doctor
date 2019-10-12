package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.Dispensing;

public interface DispensingService {

	List<Dispensing> findAll(Map<String, String> map);

	Dispensing lookOne(String medicalRecord);

}
