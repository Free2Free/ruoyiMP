package com.ruoyi.common.core.domain;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.ArrayList;
import java.util.List;

/**
 * Tree基类
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TreeEntity extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 父菜单名称
     */
    @ApiModelProperty(value = "父菜单名称")
    private String parentName;

    /**
     * 父菜单ID
     */
    @ApiModelProperty(value = "父菜单ID")
    private Long parentId;

    /**
     * 显示顺序
     */
    @ApiModelProperty(value = "显示顺序")
    private Integer orderNum;

    /**
     * 祖级列表
     */
    @ApiModelProperty(value = "祖级列表")
    private String ancestors;

    /**
     * 子部门
     */
    @ApiModelProperty(value = "子部门")
    private List<TreeEntity> children = new ArrayList<TreeEntity>();
}
