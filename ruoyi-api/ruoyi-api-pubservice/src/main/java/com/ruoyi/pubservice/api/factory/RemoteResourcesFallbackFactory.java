package com.ruoyi.pubservice.api.factory;

import com.ruoyi.common.core.web.domain.AjaxResult;
import com.ruoyi.pubservice.api.RemoteResourcesService;
import org.slf4j.Logger;
import com.ruoyi.common.core.domain.R;
import org.slf4j.LoggerFactory;
import org.springframework.cloud.openfeign.FallbackFactory;
import org.springframework.stereotype.Component;

@Component
public class RemoteResourcesFallbackFactory implements FallbackFactory<RemoteResourcesService>
{
    private static final Logger log = LoggerFactory.getLogger(RemoteResourcesFallbackFactory.class);

    @Override
    public RemoteResourcesService create(Throwable throwable)
    {
        log.error("用户服务调用失败:{}", throwable.getMessage());
        return new RemoteResourcesService()
        {
            @Override
            public R<String> getResourcesRemote(Long id) {

                return R.fail("获取用户失败:" + throwable.getMessage());

            }

            @Override
            public AjaxResult getResourceInfoByIdRemote(Long resourceId) {

                return new AjaxResult(500, "获取");

            }

        };
    }
}

