package com.zhiyou100.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.RegistrationInfor;

public interface RegistrationMapper {

	List<RegistrationInfor> findThree(Map<String,Object> map);

	int count();

	RegistrationInfor lookAll(String string);

	void edit(RegistrationInfor registrationInfor);

	void deleteInfo(List list);

	RegistrationInfor check(String str);

	void update(RegistrationInfor registrationInfor);

}
