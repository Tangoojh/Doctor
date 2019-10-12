package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyou100.mapper.DrugMapper;
import com.zhiyou100.model.Drug;
@Controller
public class DrugServiceImpl implements DrugService{
    @Autowired
    private DrugMapper drugmapper;
	@Override
	public List<Drug> findAll(Map<String, Object> map) {
		List<Drug> drug = drugmapper.findAll(map);
		return drug;
	}
	@Override
	public Drug lookByOne(String drugNum) {
		 Drug dr = drugmapper.lookByOne(drugNum);
		return dr;
	}
	@Override
	public void addInfo(Drug drug) {
		drugmapper.addInfo(drug);		
	}
	@Override
	public Drug findByOne(String drugNum) {
		 Drug dru = drugmapper.findByOne(drugNum);
		return dru;
	}
	@Override
	public void updateIng(Drug drug) {
		drugmapper.updateIng(drug);		
	}

}
