package com.zhiyou100.model;

public class ChargeManager {
    private Integer id;

    private String medicalRecord;

    private Integer payItemsId;

    private Double chargeMoney;

    private String chargeTime;

    private PayItems payitems;
    
    private RegistrationInfor registrationinfor;
    
    
    public PayItems getPayitems() {
		return payitems;
	}

	public void setPayitems(PayItems payitems) {
		this.payitems = payitems;
	}

	public RegistrationInfor getRegistrationinfor() {
		return registrationinfor;
	}

	public void setRegistrationinfor(RegistrationInfor registrationinfor) {
		this.registrationinfor = registrationinfor;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getMedicalRecord() {
        return medicalRecord;
    }

    public void setMedicalRecord(String medicalRecord) {
        this.medicalRecord = medicalRecord == null ? null : medicalRecord.trim();
    }

    public Integer getPayItemsId() {
        return payItemsId;
    }

    public void setPayItemsId(Integer payItemsId) {
        this.payItemsId = payItemsId;
    }

    public Double getChargeMoney() {
        return chargeMoney;
    }

    public void setChargeMoney(Double chargeMoney) {
        this.chargeMoney = chargeMoney;
    }

    public String getChargeTime() {
        return chargeTime;
    }

    public void setChargeTime(String chargeTime) {
        this.chargeTime = chargeTime == null ? null : chargeTime.trim();
    }

	@Override
	public String toString() {
		return "ChargeManager [id=" + id + ", medicalRecord=" + medicalRecord + ", payItemsId=" + payItemsId
				+ ", chargeMoney=" + chargeMoney + ", chargeTime=" + chargeTime + ", payitems=" + payitems
				+ ", registrationinfor=" + registrationinfor + "]";
	}
    
}