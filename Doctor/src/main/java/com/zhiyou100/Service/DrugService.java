package com.zhiyou100.Service;

import java.util.List;
import java.util.Map;

import com.zhiyou100.model.Drug;

public interface DrugService {

	List<Drug> findAll(Map<String, Object> map);

	Drug lookByOne(String drugNum);

	void addInfo(Drug drug);

	Drug findByOne(String drugNum);

	void updateIng(Drug drug);

}
