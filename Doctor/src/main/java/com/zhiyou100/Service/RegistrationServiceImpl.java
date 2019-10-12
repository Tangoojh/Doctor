package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyou100.mapper.RegistrationMapper;
import com.zhiyou100.model.RegistrationInfor;
@Controller
public class RegistrationServiceImpl implements RegistrationService{
     @Autowired
	 private RegistrationMapper registrationMapper;
	
	@Override
	public List<RegistrationInfor> findThree(Map<String,Object> map) {
		List<RegistrationInfor> listr = registrationMapper.findThree(map);
		return listr;
	}

	@Override
	public int count() {		
		return registrationMapper.count();
	}

	@Override
	public RegistrationInfor lookAll(String str) {
		RegistrationInfor registrationInfor = registrationMapper.lookAll(str);
		return registrationInfor;
	}

	@Override
	public void edit(RegistrationInfor registrationInfor) {
		registrationMapper.edit(registrationInfor);		
	}

	@Override
	public void deleteInfo(List list) {
		registrationMapper.deleteInfo(list);
	}

	@Override
	public RegistrationInfor check(String str) {
		RegistrationInfor registrationInfor = registrationMapper.check(str);
		return registrationInfor;
	}

	@Override
	public void update(RegistrationInfor registrationInfor) {
		registrationMapper.update(registrationInfor);		
	}

}
