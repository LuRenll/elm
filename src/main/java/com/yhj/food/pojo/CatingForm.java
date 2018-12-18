package com.yhj.food.pojo;

import java.io.Serializable;
/**
 * @作者:YHJ
 * @时间:2018/12/17 20:51
 * @描述:订单类
 */
public class CatingForm implements Serializable{
    private Integer formId;
    private String formName;
    private String formDate;
    private String formAdress;
    private String formPhone;
    private String formMost;
    private Integer formPrise;
    private Integer formNum;

    public Integer getFormId() {
        return formId;
    }

    public void setFormId(Integer formId) {
        this.formId = formId;
    }

    public String getFormName() {
        return formName;
    }

    public void setFormName(String formName) {
        this.formName = formName;
    }

    public String getFormDate() {
        return formDate;
    }

    public void setFormDate(String formDate) {
        this.formDate = formDate;
    }

    public String getFormAdress() {
        return formAdress;
    }

    public void setFormAdress(String formAdress) {
        this.formAdress = formAdress;
    }

    public String getFormPhone() {
        return formPhone;
    }

    public void setFormPhone(String formPhone) {
        this.formPhone = formPhone;
    }

    public String getFormMost() {
        return formMost;
    }

    public void setFormMost(String formMost) {
        this.formMost = formMost;
    }

    public Integer getFormPrise() {
        return formPrise;
    }

    public void setFormPrise(Integer formPrise) {
        this.formPrise = formPrise;
    }

    public Integer getFormNum() {
        return formNum;
    }

    public void setFormNum(Integer formNum) {
        this.formNum = formNum;
    }
}
