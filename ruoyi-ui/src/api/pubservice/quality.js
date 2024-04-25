import request from '@/utils/request'

// 查询服务质量列表
export function listQuality(query) {
  return request({
    url: '/pubservice/quality/list',
    method: 'get',
    params: query
  })
}

// 查询服务质量详细
export function getQuality(serviceId) {
  return request({
    url: '/pubservice/quality/' + serviceId,
    method: 'get'
  })
}

// 新增服务质量
export function addQuality(data) {
  return request({
    url: '/pubservice/quality',
    method: 'post',
    data: data
  })
}

// 修改服务质量
export function updateQuality(data) {
  return request({
    url: '/pubservice/quality',
    method: 'put',
    data: data
  })
}

// 删除服务质量
export function delQuality(serviceId) {
  return request({
    url: '/pubservice/quality/' + serviceId,
    method: 'delete'
  })
}
