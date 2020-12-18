package com.ruoyi.common.core.domain;

import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ruoyi.common.utils.StringUtils;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.Serializable;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Entity基类
 *
 * @author ruoyi
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class BaseEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    @TableField(exist = false)
    @ApiModelProperty(value = "搜索值")
    private String searchValue;

    @ApiModelProperty(value = "创建者")
    @TableField(value = "create_by")
    private String createBy;

    @ApiModelProperty(value = "创建时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField(value = "create_time")
    private Date createTime;

    @ApiModelProperty(value = "更新者")
    @TableField(value = "update_by")
    private String updateBy;

    @ApiModelProperty(value = "更新时间")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @TableField(value = "update_time")
    private Date updateTime;

    @ApiModelProperty(value = "备注")
    private String remark;

//    @TableField(exist = false,select = false,whereStrategy = FieldStrategy.NEVER)
//    @ApiModelProperty(value = "请求参数")
//    @JsonIgnore
//    private Map<String, Object> params;

    /**
     * 将当前对象转化为Map
     *
     * @return
     */
    public Map<String, Object> toMap() {
        Map<String, Object> map = new HashMap<>();
        try {
            // 获取javaBean属性
            BeanInfo beanInfo = Introspector.getBeanInfo(this.getClass());

            PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
            if (propertyDescriptors != null && propertyDescriptors.length > 0) {
                String propertyName = null; // javaBean属性名
                Object propertyValue = null; // javaBean属性值
                for (PropertyDescriptor pd : propertyDescriptors) {
                    propertyName = pd.getName().trim();

                    if (!propertyName.equals("class") && !propertyName.equals("admin")) {
                        System.out.println("propertyName = " + propertyName);
                        Method readMethod = pd.getReadMethod();
                        propertyValue = readMethod.invoke(this, new Object[0]);
                        if (StringUtils.isNotBlank(propertyValue.toString())) {
                            map.put(camelToUnderline(propertyName), propertyValue);
                        }
                    }
                }
            }
        } catch (Exception e) {

        }
        return map;
    }

    /**
     * 驼峰转下划线
     *
     * @param param
     * @return
     */
    private String camelToUnderline(String param) {
        if (param != null) {
            int len = param.length();
            StringBuilder sb = new StringBuilder(len);
            for (int i = 0; i < len; i++) {
                char c = param.charAt(i);
                if (Character.isUpperCase(c)) {
                    sb.append("_");
                }
                sb.append(Character.toLowerCase(c));  //统一都转小写
            }
            return sb.toString();
        }
        return param;
    }
}
