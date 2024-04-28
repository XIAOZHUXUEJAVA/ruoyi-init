package com.ruoyi.pubservice.api;

import com.ruoyi.common.core.domain.R;
import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.pubservice.api.factory.RemoteResourcesFallbackFactory;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import com.ruoyi.common.core.constant.ServiceNameConstants;
import org.springframework.web.bind.annotation.PathVariable;
@FeignClient(contextId = "remoteResourcesService", value = ServiceNameConstants.PUBSERVICE_SERVICE, fallbackFactory = RemoteResourcesFallbackFactory.class)
public interface RemoteResourcesService {


    @GetMapping("/resources/get/{id}")
    public R<String> getResourcesRemote(@PathVariable("id") Long id);

    @GetMapping("/resources/test/{resourceId}")
    public AjaxResult getResourceInfoByIdRemote(@PathVariable("resourceId") Long resourceId);
}
