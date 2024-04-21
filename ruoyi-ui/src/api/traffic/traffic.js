import request from '@/utils/request'

// 查询路况检测列表
export function listTraffic(query) {
  return request({
    url: '/traffic/traffic/list',
    method: 'get',
    params: query
  })
}

// 查询路况检测详细
export function getTraffic(cityId) {
  return request({
    url: '/traffic/traffic/' + cityId,
    method: 'get'
  })
}

// 新增路况检测
export function addTraffic(data) {
  return request({
    url: '/traffic/traffic',
    method: 'post',
    data: data
  })
}

// 修改路况检测
export function updateTraffic(data) {
  return request({
    url: '/traffic/traffic',
    method: 'put',
    data: data
  })
}

// 删除路况检测
export function delTraffic(cityId) {
  return request({
    url: '/traffic/traffic/' + cityId,
    method: 'delete'
  })
}
