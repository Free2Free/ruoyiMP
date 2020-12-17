package com.ruoyi.system.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.ruoyi.common.core.domain.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

/**
 * 通知公告表 sys_notice
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ApiModel()
@TableName(value = "sys_notice")
public class SysNotice extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 公告ID
     */
    @TableId
    @ApiModelProperty(value = "公告ID")
    private Long noticeId;

    /**
     * 公告标题
     */
    @NotBlank(message = "公告标题不能为空")
    @Size(min = 0, max = 50, message = "公告标题不能超过50个字符")
    @ApiModelProperty(value = "公告标题")
    private String noticeTitle;

    /**
     * 公告类型（1通知 2公告）
     */
    @ApiModelProperty(value = "公告类型")
    private String noticeType;

    /**
     * 公告内容
     */
    @ApiModelProperty(value = "公告内容")
    private String noticeContent;

    /**
     * 公告状态（0正常 1关闭）
     */
    @ApiModelProperty(value = "公告状态")
    private String status;
}
