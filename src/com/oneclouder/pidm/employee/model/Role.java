package com.oneclouder.pidm.employee.model;

/**
 * Created by PhychoLee on 9/10/16 9:21 AM.
 * Description:角色实体类
 */
public class Role {
    private Integer id;

    private String name;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}