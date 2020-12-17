package com.ruoyi.common.core.domain.entity;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.baomidou.mybatisplus.annotation.IdType;
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
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excel.ColumnType;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 字典类型表 sys_dict_type
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ApiModel()
@TableName(value = "sys_dict_type")
public class SysDictType extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 字典主键
     */
    @Excel(name = "字典主键", cellType = ColumnType.NUMERIC)
    @TableId(type = IdType.AUTO)
    @ApiModelProperty(value = "字典主键")
    private Long dictId;

    /**
     * 字典名称
     */
    @Excel(name = "字典名称")
    @ApiModelProperty(value = "字典名称")
    @NotBlank(message = "字典名称不能为空")
    @Size(min = 0, max = 100, message = "字典类型名称长度不能超过100个字符")
    private String dictName;

    /**
     * 字典类型
     */
    @ApiModelProperty(value = "字典类型")
    @Excel(name = "字典类型")
    @NotBlank(message = "字典类型不能为空")
    @Size(min = 0, max = 100, message = "字典类型类型长度不能超过100个字符")
    private String dictType;

    /**
     * 状态（0正常 1停用）
     */
    @Excel(name = "状态", readConverterExp = "0=正常,1=停用")
    @ApiModelProperty(value = "状态")
    private String status;
}
