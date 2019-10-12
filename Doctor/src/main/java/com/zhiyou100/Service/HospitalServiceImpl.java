package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyou100.mapper.HospitalMapper;
import com.zhiyou100.model.HospitalInfor;
@Controller
public class HospitalServiceImpl implements HospitalService{
    @Autowired
    private HospitalMapper hospitalMapper;
	@Override
	public List<HospitalInfor> findAll(Map<String, String> map) {
		 List<HospitalInfor> hos = hospitalMapper.findAll(map);
		return hos;
	}
	@Override
	public HospitalInfor findOne(String medicalRecord) {
		HospitalInfor hosp = hospitalMapper.findOne(medicalRecord);
		return hosp;
	}
	@Override
	public void addInfo(HospitalInfor hospitalInfor) {
		hospitalMapper.addInfo(hospitalInfor);
	}
	@Override
	public void deleteOne(String medicalRecord) {
		hospitalMapper.deleteOne(medicalRecord);	
	}
	@Override
	public HospitalInfor checkOne(String medicalRecord) {
		HospitalInfor hospt = hospitalMapper.checkOne(medicalRecord);
		return hospt;
	}
	@Override
	public void updateInfo(HospitalInfor infor) {
		hospitalMapper.updateInfo(infor);		
	}

}
