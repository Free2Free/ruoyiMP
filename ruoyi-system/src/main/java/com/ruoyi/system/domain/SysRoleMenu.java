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
 * 角色和菜单关联 sys_role_menu
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ApiModel()
@TableName(value = "sys_role_menu")
public class SysRoleMenu {
    @TableId
    @ApiModelProperty(value = "序号ID")
    private Long id;
    /**
     * 菜单ID
     */
    @ApiModelProperty(value = "菜单ID")
    private Long roleId;

    /**
     * 菜单ID
     */
    @ApiModelProperty(value = "菜单ID")
    private Long menuId;
}
