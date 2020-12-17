package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.domain.entity.SysDictData;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.system.service.ISysDictDataService;
import com.ruoyi.system.service.ISysDictTypeService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * 数据字典信息
 * 
 * @author ruoyi
 */
@RestController
@RequestMapping("/system/dict/data")
public class SysDictDataController extends BaseController
{
    @Autowired
    private ISysDictDataService dictDataService;

    @Autowired
    private ISysDictTypeService dictTypeService;

    @PreAuthorize("@ss.hasPermi('system:dict:list')")
    @GetMapping("/list")
    @ApiOperation("查询数据字典数据列表")
    public TableDataInfo list(SysDictData dictData)
    {
        startPage();
//        List<SysDictData> list = dictDataService.selectDictDataList(dictData);
        List<SysDictData> list = dictDataService.listByMap(dictData.toMap());
        return getDataTable(list);
    }

    @Log(title = "字典数据", businessType = BusinessType.EXPORT)
    @PreAuthorize("@ss.hasPermi('system:dict:export')")
    @GetMapping("/export")
    @ApiOperation("导出数据字典数据列表")
    public AjaxResult export(SysDictData dictData)
    {
        List<SysDictData> list = dictDataService.listByMap(dictData.toMap());
        ExcelUtil<SysDictData> util = new ExcelUtil<SysDictData>(SysDictData.class);
        return util.exportExcel(list, "字典数据");
    }

    /**
     * 查询字典数据详细
     */
    @PreAuthorize("@ss.hasPermi('system:dict:query')")
    @GetMapping(value = "/{dictCode}")
    @ApiOperation("查询字典数据详细")
    public AjaxResult getInfo(@PathVariable Long dictCode)
    {
//        return AjaxResult.success(dictDataService.selectDictDataById(dictCode));
        return AjaxResult.success(dictDataService.getById(dictCode));
    }

    /**
     * 根据字典类型查询字典数据信息
     */
    @GetMapping(value = "/type/{dictType}")
    @ApiOperation("根据字典类型查询字典数据信息")
    public AjaxResult dictType(@PathVariable String dictType)
    {
        List<SysDictData> data = dictTypeService.selectDictDataByType(dictType);
        if (StringUtils.isNull(data))
        {
            data = new ArrayList<SysDictData>();
        }
        return AjaxResult.success(data);
    }

    /**
     * 新增字典类型
     */
    @PreAuthorize("@ss.hasPermi('system:dict:add')")
    @Log(title = "字典数据", businessType = BusinessType.INSERT)
    @PostMapping
    @ApiOperation("新增字典数据")
    public AjaxResult add(@Validated @RequestBody SysDictData dict)
    {
        dict.setCreateBy(SecurityUtils.getUsername());
//        return toAjax(dictDataService.insertDictData(dict));
        return toAjax(dictDataService.save(dict));
    }

    /**
     * 修改保存字典类型
     */
    @PreAuthorize("@ss.hasPermi('system:dict:edit')")
    @Log(title = "字典数据", businessType = BusinessType.UPDATE)
    @PutMapping
    @ApiOperation("修改字典数据")
    public AjaxResult edit(@Validated @RequestBody SysDictData dict)
    {
        dict.setUpdateBy(SecurityUtils.getUsername());
//        return toAjax(dictDataService.updateDictData(dict));
        return toAjax(dictDataService.updateById(dict));
    }

    /**
     * 删除字典类型
     */
    @PreAuthorize("@ss.hasPermi('system:dict:remove')")
    @Log(title = "字典类型", businessType = BusinessType.DELETE)
    @DeleteMapping("/{dictCodes}")
    @ApiOperation("删除字典类型")
    public AjaxResult remove(@PathVariable Long[] dictCodes)
    {
//        return toAjax(dictDataService.deleteDictDataByIds(dictCodes));
        return toAjax(dictDataService.removeByIds(Arrays.asList(dictCodes)));
    }
}
