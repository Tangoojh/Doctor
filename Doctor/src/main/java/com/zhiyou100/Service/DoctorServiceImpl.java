package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyou100.mapper.DoctorMapper;
import com.zhiyou100.model.Doctor;
@Controller
public class DoctorServiceImpl implements DoctorService{
    @Autowired
    private DoctorMapper doctorMapper;
	@Override
	public List<Doctor> findAll(Map<String, String> map) {
	List<Doctor> doctor = doctorMapper.findAll(map);
		return doctor;
	}
	@Override
	public Doctor lookOne(int id) {
	Doctor doctor = doctorMapper.lookOne(id);
		return doctor;
	}
	@Override
	public void addInfo(Doctor doctor) {
		doctorMapper.addInfo(doctor);
	}
	@Override
	public Doctor findDoctorById(int id) {
		Doctor doctor = doctorMapper.findDoctorById(id);
		return doctor;
	}
	@Override
	public void updateInfo(Doctor doctor) {
		doctorMapper.updateInfo(doctor);	
	}

}
