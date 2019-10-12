package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyou100.mapper.DispensingMapper;
import com.zhiyou100.model.Dispensing;
@Controller
public class DispensingServiceImpl implements DispensingService{
    @Autowired
    private DispensingMapper dispensingmapper;
	@Override
	public List<Dispensing> findAll(Map<String, String> map) {
		List<Dispensing> disp = dispensingmapper.findAll(map);
		return disp;
	}
	@Override
	public Dispensing lookOne(String medicalRecord) {
		 Dispensing sing = dispensingmapper.lookOne(medicalRecord);
		return sing;
	}

}
