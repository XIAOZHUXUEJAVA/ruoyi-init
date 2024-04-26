package com.ruoyi.emergency.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.core.annotation.Excel;
import com.ruoyi.common.core.web.domain.BaseEntity;

/**
 * 事故类别对象 emergency_category
 * 
 * @author ruoyi
 * @date 2024-04-26
 */
public class EmergencyCategory extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 类别ID */
    private Long categoryId;

    /** 类别名称 */
    @Excel(name = "类别名称")
    private String categoryName;

    /** 描述 */
    @Excel(name = "描述")
    private String description;

    public void setCategoryId(Long categoryId) 
    {
        this.categoryId = categoryId;
    }

    public Long getCategoryId() 
    {
        return categoryId;
    }
    public void setCategoryName(String categoryName) 
    {
        this.categoryName = categoryName;
    }

    public String getCategoryName() 
    {
        return categoryName;
    }
    public void setDescription(String description) 
    {
        this.description = description;
    }

    public String getDescription() 
    {
        return description;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("categoryId", getCategoryId())
            .append("categoryName", getCategoryName())
            .append("description", getDescription())
            .toString();
    }
}
