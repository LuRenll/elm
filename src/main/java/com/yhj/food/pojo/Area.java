package com.yhj.food.pojo;

public class Area {
  private Integer areaID;
  private String areaName;

    public Integer getAreaID() {
        return areaID;
    }

    public void setAreaID(Integer areaID) {
        this.areaID = areaID;
    }

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public Area(Integer areaID, String areaName) {
        this.areaID = areaID;
        this.areaName = areaName;
    }

    public Area() {
    }
}
