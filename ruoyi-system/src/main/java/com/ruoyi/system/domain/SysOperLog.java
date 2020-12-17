package com.ruoyi.system.domain;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.annotation.Excel.ColumnType;
import com.ruoyi.common.core.domain.BaseEntity;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 操作日志记录表 oper_log
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
@ApiModel()
@TableName(value = "sys_oper_log")
public class SysOperLog extends BaseEntity {
    private static final long serialVersionUID = 1L;

    /**
     * 日志主键
     */
    @Excel(name = "操作序号", cellType = ColumnType.NUMERIC)
    @TableId
    @ApiModelProperty(value = "日志主键")
    private Long operId;

    /**
     * 操作模块
     */
    @Excel(name = "操作模块")
    @ApiModelProperty(value = "操作模块标题")
    private String title;

    /**
     * 业务类型（0其它 1新增 2修改 3删除）
     */
    @Excel(name = "业务类型", readConverterExp = "0=其它,1=新增,2=修改,3=删除,4=授权,5=导出,6=导入,7=强退,8=生成代码,9=清空数据")
    @ApiModelProperty(value = "业务类型")
    private Integer businessType;

    /**
     * 业务类型数组
     */
    @ApiModelProperty(value = "业务类型数组")
    @TableField(exist = false)
    private Integer[] businessTypes;

    /**
     * 请求方法
     */
    @Excel(name = "请求方法")
    @ApiModelProperty(value = "请求方法")
    private String method;

    /**
     * 请求方式
     */
    @Excel(name = "请求方式")
    @ApiModelProperty(value = "请求方式")
    private String requestMethod;

    /**
     * 操作类别（0其它 1后台用户 2手机端用户）
     */
    @Excel(name = "操作类别", readConverterExp = "0=其它,1=后台用户,2=手机端用户")
    @ApiModelProperty(value = "操作类别")
    private Integer operatorType;

    /**
     * 操作人员
     */
    @Excel(name = "操作人员")
    @ApiModelProperty(value = "操作人员")
    private String operName;

    /**
     * 部门名称
     */
    @Excel(name = "部门名称")
    @ApiModelProperty(value = "部门名称")
    private String deptName;

    /**
     * 请求url
     */
    @Excel(name = "请求地址")
    @ApiModelProperty(value = "请求地址")
    private String operUrl;

    /**
     * 操作地址
     */
    @Excel(name = "操作地址")
    @ApiModelProperty(value = "操作IP地址")
    private String operIp;

    /**
     * 操作地点
     */
    @Excel(name = "操作地点")
    @ApiModelProperty(value = "操作地点")
    private String operLocation;

    /**
     * 请求参数
     */
    @Excel(name = "请求参数")
    @ApiModelProperty(value = "请求参数")
    private String operParam;

    /**
     * 返回参数
     */
    @Excel(name = "返回参数")
    @ApiModelProperty(value = "返回参数")
    private String jsonResult;

    /**
     * 操作状态（0正常 1异常）
     */
    @Excel(name = "状态", readConverterExp = "0=正常,1=异常")
    @ApiModelProperty(value = "状态")
    private Integer status;

    /**
     * 错误消息
     */
    @Excel(name = "错误消息")
    @ApiModelProperty(value = "错误消息")
    private String errorMsg;

    /**
     * 操作时间
     */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Excel(name = "操作时间", width = 30, dateFormat = "yyyy-MM-dd HH:mm:ss")
    @ApiModelProperty(value = "操作时间")
    private Date operTime;
}
