package com.zhiyou100.Controller;


import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.zhiyou100.Service.DrugService;
import com.zhiyou100.model.Drug;

@Controller
@RequestMapping("/medicine")
public class DrugController {
   @Autowired
   private DrugService drugservice;
   @RequestMapping("/index")
   public String find(String drugName,String drugType,@RequestParam(defaultValue="1")int pageNo,Model model) {
	   Map<String,Object> map = new HashMap();
	   map.put("drugName", drugName);
	   map.put("drugType", drugType);
	   PageHelper.startPage(pageNo, 3);
	   List<Drug> drug = drugservice.findAll(map);
	   PageInfo<Drug> pageinfo = new PageInfo<>(drug);
	   model.addAttribute("drug", pageinfo.getList());
	   model.addAttribute("page", pageinfo);
	   return "forward:/medicine/index.jsp";
   }
   @RequestMapping("/look")
   public String look(@RequestParam()String drugNum,Model model) {
	   
	   Drug dr = drugservice.lookByOne(drugNum);
	   model.addAttribute("r", dr);
	   return "forward:/medicine/look.jsp";
   }
   @RequestMapping("/add")
   public String add(@RequestParam("img")MultipartFile img,HttpServletRequest request,Drug drug) throws IOException {
	   String realPath = request.getServletContext().getRealPath("/upload");
	   File file = new File(realPath);
	   if(file.exists()) {
		   file.mkdir();
	   }	   
	   String filename = img.getOriginalFilename();
	   String[] split = filename.split("\\.");
	   String suffix = split[split.length-1];
	   long prefix = new Date().getTime();
	 String newfilename = prefix+"."+suffix;
	 File newfile = new File(file,newfilename);
	 FileUtils.writeByteArrayToFile(newfile, img.getBytes());
	 String path = realPath+"\\"+newfilename;
	 drug.setDrugUrl(newfilename);
	   drugservice.addInfo(drug);
	   return "forward:/medicine/index";
   }
   @RequestMapping("/check")
   public String findByOne(String drugNum,Model model) {
	   Drug dru = drugservice.findByOne(drugNum);
	   model.addAttribute("r", dru);
	  return "forward:/medicine/update.jsp";  
   }  
   @RequestMapping("/update")
   public String update(Drug drug) {
	   drugservice.updateIng(drug);
	   return "forward:/medicine/index";
   }
}
