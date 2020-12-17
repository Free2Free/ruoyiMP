package com.ruoyi.web.controller.system;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.SecurityUtils;
import com.ruoyi.system.domain.SysNotice;
import com.ruoyi.system.service.ISysNoticeService;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

/**
 * 公告 信息操作处理
 * 
 * @author ruoyi
 */
@RestController
@RequestMapping("/system/notice")
public class SysNoticeController extends BaseController
{
    @Autowired
    private ISysNoticeService noticeService;

    /**
     * 获取通知公告列表
     */
    @PreAuthorize("@ss.hasPermi('system:notice:list')")
    @GetMapping("/list")
    @ApiOperation("获取通知公告列表")
    public TableDataInfo list(SysNotice notice)
    {
        startPage();
//        List<SysNotice> list = noticeService.selectNoticeList(notice);
        List<SysNotice> list = noticeService.listByMap(notice.toMap());
        return getDataTable(list);
    }

    /**
     * 根据通知公告编号获取详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:notice:query')")
    @GetMapping(value = "/{noticeId}")
    @ApiOperation("根据通知公告编号获取详细信息")
    public AjaxResult getInfo(@PathVariable Long noticeId)
    {
//        return AjaxResult.success(noticeService.selectNoticeById(noticeId));
        return AjaxResult.success(noticeService.removeByIds(Arrays.asList(noticeId)));
    }

    /**
     * 新增通知公告
     */
    @PreAuthorize("@ss.hasPermi('system:notice:add')")
    @Log(title = "通知公告", businessType = BusinessType.INSERT)
    @PostMapping
    @ApiOperation("新增通知公告")
    public AjaxResult add(@Validated @RequestBody SysNotice notice)
    {
        notice.setCreateBy(SecurityUtils.getUsername());
//        return toAjax(noticeService.insertNotice(notice));
        return toAjax(noticeService.save(notice));
    }

    /**
     * 修改通知公告
     */
    @PreAuthorize("@ss.hasPermi('system:notice:edit')")
    @Log(title = "通知公告", businessType = BusinessType.UPDATE)
    @PutMapping
    @ApiOperation("修改通知公告")
    public AjaxResult edit(@Validated @RequestBody SysNotice notice)
    {
        notice.setUpdateBy(SecurityUtils.getUsername());
//        return toAjax(noticeService.updateNotice(notice));
        return toAjax(noticeService.updateById(notice));
    }

    /**
     * 删除通知公告
     */
    @PreAuthorize("@ss.hasPermi('system:notice:remove')")
    @Log(title = "通知公告", businessType = BusinessType.DELETE)
    @DeleteMapping("/{noticeIds}")
    @ApiOperation("删除通知公告")
    public AjaxResult remove(@PathVariable Long[] noticeIds)
    {
//        return toAjax(noticeService.deleteNoticeByIds(noticeIds));
        return toAjax(noticeService.removeByIds(Arrays.asList(noticeIds)));
    }
}
