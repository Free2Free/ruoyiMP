package com.ruoyi.common.core.page;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;

/**
 * 表格分页数据对象
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class TableDataInfo implements Serializable {
    private static final long serialVersionUID = 1L;

    /**
     * 总记录数
     */
    @ApiModelProperty(value = "总记录数")
    private long total;

    /**
     * 列表数据
     */
    @ApiModelProperty(value = "列表数据")
    private List<?> rows;

    /**
     * 消息状态码
     */
    @ApiModelProperty(value = "消息状态码")
    private int code;

    /**
     * 消息内容
     */
    @ApiModelProperty(value = "消息内容")
    private String msg;

    /**
     * 分页
     *
     * @param list  列表数据
     * @param total 总记录数
     */
    public TableDataInfo(List<?> list, int total) {
        this.rows = list;
        this.total = total;
    }
}
