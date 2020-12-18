package com.ruoyi.common.core.page;

import com.ruoyi.common.utils.StringUtils;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * 分页数据
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class PageDomain {
    /**
     * 当前记录起始索引
     */
    @ApiModelProperty(value = "当前记录起始索引")
    private Integer pageNum = 1;

    /**
     * 每页显示记录数
     */
    @ApiModelProperty(value = "每页显示记录数")
    private Integer pageSize = 10;

    /**
     * 排序列
     */
    @ApiModelProperty(value = "排序列")
    private String orderByColumn;

    /**
     * 排序的方向desc或者asc
     */
    @ApiModelProperty(value = "排序方向")
    private String isAsc = "asc";

    public String getOrderBy() {
        if (StringUtils.isEmpty(orderByColumn)) {
            return "";
        }
        return StringUtils.toUnderScoreCase(orderByColumn) + " " + isAsc;
    }
}
