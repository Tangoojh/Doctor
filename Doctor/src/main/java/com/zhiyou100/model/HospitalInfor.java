package com.zhiyou100.model;

public class HospitalInfor {
    private String medicalRecord;

    private String caregiver;

    private String bedId;

    private Double payTheDeposit;

    private String stateIllness;
    
    private Doctor doctor;
    
    private Section section;
    
    private RegistrationInfor registrationinfor;
    
    private CertificateType certificatetype;

    public CertificateType getCertificatetype() {
		return certificatetype;
	}

	public void setCertificatetype(CertificateType certificatetype) {
		this.certificatetype = certificatetype;
	}

	public Doctor getDoctor() {
		return doctor;
	}

	public void setDoctor(Doctor doctor) {
		this.doctor = doctor;
	}

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public RegistrationInfor getRegistrationinfor() {
		return registrationinfor;
	}

	public void setRegistrationinfor(RegistrationInfor registrationinfor) {
		this.registrationinfor = registrationinfor;
	}

	public String getMedicalRecord() {
        return medicalRecord;
    }

    public void setMedicalRecord(String medicalRecord) {
        this.medicalRecord = medicalRecord == null ? null : medicalRecord.trim();
    }

    public String getCaregiver() {
        return caregiver;
    }

    public void setCaregiver(String caregiver) {
        this.caregiver = caregiver == null ? null : caregiver.trim();
    }

    public String getBedId() {
        return bedId;
    }

    public void setBedId(String bedId) {
        this.bedId = bedId == null ? null : bedId.trim();
    }

    public Double getPayTheDeposit() {
        return payTheDeposit;
    }

    public void setPayTheDeposit(Double payTheDeposit) {
        this.payTheDeposit = payTheDeposit;
    }

    public String getStateIllness() {
        return stateIllness;
    }

    public void setStateIllness(String stateIllness) {
        this.stateIllness = stateIllness == null ? null : stateIllness.trim();
    }

	@Override
	public String toString() {
		return "HospitalInfor [medicalRecord=" + medicalRecord + ", caregiver=" + caregiver + ", bedId=" + bedId
				+ ", payTheDeposit=" + payTheDeposit + ", stateIllness=" + stateIllness + ", doctor=" + doctor
				+ ", section=" + section + ", registrationinfor=" + registrationinfor + ", certificatetype="
				+ certificatetype + "]";
	}
}