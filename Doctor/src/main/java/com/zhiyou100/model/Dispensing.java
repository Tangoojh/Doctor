package com.zhiyou100.model;

public class Dispensing {
    private String medicalRecord;

    private String drugNum;

    private Integer dispensNum;

    private Integer alreadSendNum;

    private Integer notSendNum;

    private String time;
    
    private Doctor doctor;
    
    private Drug drug;
    
    public Drug getDrug() {
		return drug;
	}

	public void setDrug(Drug drug) {
		this.drug = drug;
	}

	private RegistrationInfor registrationInfor;

    public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public RegistrationInfor getRegistrationInfor() {
		return registrationInfor;
	}

	public void setRegistrationInfor(RegistrationInfor registrationInfor) {
		this.registrationInfor = registrationInfor;
	}

	public String getMedicalRecord() {
        return medicalRecord;
    }

    public void setMedicalRecord(String medicalRecord) {
        this.medicalRecord = medicalRecord == null ? null : medicalRecord.trim();
    }

    public String getDrugNum() {
        return drugNum;
    }

    public void setDrugNum(String drugNum) {
        this.drugNum = drugNum == null ? null : drugNum.trim();
    }

    public Integer getDispensNum() {
        return dispensNum;
    }

    public void setDispensNum(Integer dispensNum) {
        this.dispensNum = dispensNum;
    }

    public Integer getAlreadSendNum() {
        return alreadSendNum;
    }

    public void setAlreadSendNum(Integer alreadSendNum) {
        this.alreadSendNum = alreadSendNum;
    }

    public Integer getNotSendNum() {
        return notSendNum;
    }

    public void setNotSendNum(Integer notSendNum) {
        this.notSendNum = notSendNum;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time == null ? null : time.trim();
    }

	@Override
	public String toString() {
		return "Dispensing [medicalRecord=" + medicalRecord + ", drugNum=" + drugNum + ", dispensNum=" + dispensNum
				+ ", alreadSendNum=" + alreadSendNum + ", notSendNum=" + notSendNum + ", time=" + time + ", doctor="
				+ doctor + ", drug=" + drug + ", registrationInfor=" + registrationInfor + "]";
	}
    
}