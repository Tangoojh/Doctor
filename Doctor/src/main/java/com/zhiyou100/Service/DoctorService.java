package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.Doctor;

public interface DoctorService {

	List<Doctor> findAll(Map<String, String> map);

	Doctor lookOne(int id);

	void addInfo(Doctor doctor);

	Doctor findDoctorById(int id);

	void updateInfo(Doctor doctor);

	

}
