import request from '@/utils/request'

// 查询资源调度列表
export function listDispatch(query) {
  return request({
    url: '/emergency/dispatch/list',
    method: 'get',
    params: query
  })
}

// 查询资源调度详细
export function getDispatch(dispatchId) {
  return request({
    url: '/emergency/dispatch/' + dispatchId,
    method: 'get'
  })
}

// 新增资源调度
export function addDispatch(data) {
  return request({
    url: '/emergency/dispatch',
    method: 'post',
    data: data
  })
}

// 修改资源调度
export function updateDispatch(data) {
  return request({
    url: '/emergency/dispatch',
    method: 'put',
    data: data
  })
}

// 删除资源调度
export function delDispatch(dispatchId) {
  return request({
    url: '/emergency/dispatch/' + dispatchId,
    method: 'delete'
  })
}
