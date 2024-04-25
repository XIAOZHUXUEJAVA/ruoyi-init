import request from '@/utils/request'

// 查询服务类别列表
export function listServicecategory(query) {
  return request({
    url: '/pubservice/servicecategory/list',
    method: 'get',
    params: query
  })
}

// 查询服务类别详细
export function getServicecategory(categoryId) {
  return request({
    url: '/pubservice/servicecategory/' + categoryId,
    method: 'get'
  })
}

// 新增服务类别
export function addServicecategory(data) {
  return request({
    url: '/pubservice/servicecategory',
    method: 'post',
    data: data
  })
}

// 修改服务类别
export function updateServicecategory(data) {
  return request({
    url: '/pubservice/servicecategory',
    method: 'put',
    data: data
  })
}

// 删除服务类别
export function delServicecategory(categoryId) {
  return request({
    url: '/pubservice/servicecategory/' + categoryId,
    method: 'delete'
  })
}
