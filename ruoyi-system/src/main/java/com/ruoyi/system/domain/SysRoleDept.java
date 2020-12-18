package com.ruoyi.system.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 角色和部门关联 sys_role_dept
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ApiModel()
@TableName(value = "sys_role_dept")
public class SysRoleDept
{
    @TableId
    @ApiModelProperty(value = "序号ID")
    private Long id;

    /** 角色ID */
    @ApiModelProperty(value = "角色ID")
    private Long roleId;

    /** 部门ID */
    @ApiModelProperty(value = "部门ID")
    private Long deptId;
}
