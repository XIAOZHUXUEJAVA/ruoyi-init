import request from '@/utils/request'

// 查询公共资源列表
export function listResources(query) {
  return request({
    url: '/pubservice/resources/list',
    method: 'get',
    params: query
  })
}

// 查询公共资源详细
export function getResources(resourceId) {
  return request({
    url: '/pubservice/resources/' + resourceId,
    method: 'get'
  })
}

// 新增公共资源
export function addResources(data) {
  return request({
    url: '/pubservice/resources',
    method: 'post',
    data: data
  })
}

// 修改公共资源
export function updateResources(data) {
  return request({
    url: '/pubservice/resources',
    method: 'put',
    data: data
  })
}

// 删除公共资源
export function delResources(resourceId) {
  return request({
    url: '/pubservice/resources/' + resourceId,
    method: 'delete'
  })
}
