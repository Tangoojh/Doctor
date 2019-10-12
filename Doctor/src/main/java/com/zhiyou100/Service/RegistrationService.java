package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.RegistrationInfor;

public interface RegistrationService {

	List<RegistrationInfor> findThree(Map<String,Object> map);

	int count();

	RegistrationInfor lookAll(String str);

	void edit(RegistrationInfor registrationInfor);

	void deleteInfo(List list);

	RegistrationInfor check(String str);

	void update(RegistrationInfor registrationInfor);

}
