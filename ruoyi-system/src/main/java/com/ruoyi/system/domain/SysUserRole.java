package com.ruoyi.system.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/**
 * 用户和角色关联 sys_user_role
 * 
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ApiModel()
@TableName(value = "sys_user_role")
public class SysUserRole
{
    @TableId
    @ApiModelProperty(value = "序号ID")
    private Long id;
    /** 用户ID */
    @ApiModelProperty(value = "用户ID")
    private Long userId;
    
    /** 角色ID */
    @ApiModelProperty(value = "角色ID")
    private Long roleId;
}
