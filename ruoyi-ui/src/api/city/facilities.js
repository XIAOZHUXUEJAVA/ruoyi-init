import request from '@/utils/request'

// 查询城市设施管理列表
export function listFacilities(query) {
  return request({
    url: '/city/facilities/list',
    method: 'get',
    params: query
  })
}

// 查询城市设施管理详细
export function getFacilities(facilityId) {
  return request({
    url: '/city/facilities/' + facilityId,
    method: 'get'
  })
}

// 新增城市设施管理
export function addFacilities(data) {
  return request({
    url: '/city/facilities',
    method: 'post',
    data: data
  })
}

// 修改城市设施管理
export function updateFacilities(data) {
  return request({
    url: '/city/facilities',
    method: 'put',
    data: data
  })
}

// 删除城市设施管理
export function delFacilities(facilityId) {
  return request({
    url: '/city/facilities/' + facilityId,
    method: 'delete'
  })
}
