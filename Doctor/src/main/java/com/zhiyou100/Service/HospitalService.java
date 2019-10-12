package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.HospitalInfor;

public interface HospitalService {

	List<HospitalInfor> findAll(Map<String, String> map);

	HospitalInfor findOne(String medicalRecord);

	void addInfo(HospitalInfor hospitalInfor);

	void deleteOne(String medicalRecord);

	HospitalInfor checkOne(String medicalRecord);

	void updateInfo(HospitalInfor infor);

}
