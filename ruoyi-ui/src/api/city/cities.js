import request from '@/utils/request'

// 查询城市基础信息列表
export function listCities(query) {
  return request({
    url: '/city/cities/list',
    method: 'get',
    params: query
  })
}

// 查询城市基础信息详细
export function getCities(cityId) {
  return request({
    url: '/city/cities/' + cityId,
    method: 'get'
  })
}

// 新增城市基础信息
export function addCities(data) {
  return request({
    url: '/city/cities',
    method: 'post',
    data: data
  })
}

// 修改城市基础信息
export function updateCities(data) {
  return request({
    url: '/city/cities',
    method: 'put',
    data: data
  })
}

// 删除城市基础信息
export function delCities(cityId) {
  return request({
    url: '/city/cities/' + cityId,
    method: 'delete'
  })
}
