import request from '@/utils/request'

// 查询交通事件列表
export function listAccident(query) {
  return request({
    url: '/traffic/accident/list',
    method: 'get',
    params: query
  })
}

// 查询交通事件详细
export function getAccident(accidentId) {
  return request({
    url: '/traffic/accident/' + accidentId,
    method: 'get'
  })
}

// 新增交通事件
export function addAccident(data) {
  return request({
    url: '/traffic/accident',
    method: 'post',
    data: data
  })
}

// 修改交通事件
export function updateAccident(data) {
  return request({
    url: '/traffic/accident',
    method: 'put',
    data: data
  })
}

// 删除交通事件
export function delAccident(accidentId) {
  return request({
    url: '/traffic/accident/' + accidentId,
    method: 'delete'
  })
}
