import request from '@/utils/request'

// 查询城市规划列表
export function listPlans(query) {
  return request({
    url: '/city/plans/list',
    method: 'get',
    params: query
  })
}

// 查询城市规划详细
export function getPlans(planId) {
  return request({
    url: '/city/plans/' + planId,
    method: 'get'
  })
}

// 新增城市规划
export function addPlans(data) {
  return request({
    url: '/city/plans',
    method: 'post',
    data: data
  })
}

// 修改城市规划
export function updatePlans(data) {
  return request({
    url: '/city/plans',
    method: 'put',
    data: data
  })
}

// 删除城市规划
export function delPlans(planId) {
  return request({
    url: '/city/plans/' + planId,
    method: 'delete'
  })
}
