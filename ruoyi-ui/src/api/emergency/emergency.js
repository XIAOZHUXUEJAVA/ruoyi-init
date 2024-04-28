import request from '@/utils/request'

// 查询交通事件列表
export function listEmergency(query) {
  return request({
    url: '/emergency/emergency/list',
    method: 'get',
    params: query
  })
}

// 查询交通事件详细
export function getEmergency(emergencyId) {
  return request({
    url: '/emergency/emergency/' + emergencyId,
    method: 'get'
  })
}

// 新增交通事件
export function addEmergency(data) {
  return request({
    url: '/emergency/emergency',
    method: 'post',
    data: data
  })
}

// 修改交通事件
export function updateEmergency(data) {
  return request({
    url: '/emergency/emergency',
    method: 'put',
    data: data
  })
}

// 删除交通事件
export function delEmergency(emergencyId) {
  return request({
    url: '/emergency/emergency/' + emergencyId,
    method: 'delete'
  })
}
