import request from '@/utils/request'

// 查询城市天气列表
export function listWeather(query) {
  return request({
    url: '/city-data/weather/list',
    method: 'get',
    params: query
  })
}

// 查询城市天气详细
export function getWeather(recordId) {
  return request({
    url: '/city-data/weather/' + recordId,
    method: 'get'
  })
}

// 新增城市天气
export function addWeather(data) {
  return request({
    url: '/city-data/weather',
    method: 'post',
    data: data
  })
}

// 修改城市天气
export function updateWeather(data) {
  return request({
    url: '/city-data/weather',
    method: 'put',
    data: data
  })
}

// 删除城市天气
export function delWeather(recordId) {
  return request({
    url: '/city-data/weather/' + recordId,
    method: 'delete'
  })
}
