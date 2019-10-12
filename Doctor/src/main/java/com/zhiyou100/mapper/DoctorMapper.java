package com.zhiyou100.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.Doctor;

public interface DoctorMapper {

	List<Doctor> findAll(Map<String, String> map);

	Doctor lookOne(int id);

	void addInfo(Doctor doctor);

	Doctor findDoctorById(int id);

	void updateInfo(Doctor doctor);

}
