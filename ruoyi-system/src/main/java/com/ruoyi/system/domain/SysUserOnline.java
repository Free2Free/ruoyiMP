package com.ruoyi.system.domain;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 当前在线会话
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ApiModel()
public class SysUserOnline {
    /**
     * 会话编号
     */
    @ApiModelProperty(value = "会话编号")
    private String tokenId;

    /**
     * 部门名称
     */
    @ApiModelProperty(value = "部门名称")
    private String deptName;

    /**
     * 用户名称
     */
    @ApiModelProperty(value = "用户名称")
    private String userName;

    /**
     * 登录IP地址
     */
    @ApiModelProperty(value = "登录IP地址")
    private String ipaddr;

    /**
     * 登录地址
     */
    @ApiModelProperty(value = "登录位置地址")
    private String loginLocation;

    /**
     * 浏览器类型
     */
    @ApiModelProperty(value = "浏览器类型")
    private String browser;

    /**
     * 操作系统
     */
    @ApiModelProperty(value = "操作系统")
    private String os;

    /**
     * 登录时间
     */
    @ApiModelProperty(value = "登录时间")
    private Long loginTime;
}
