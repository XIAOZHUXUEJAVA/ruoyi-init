import request from '@/utils/request'

// 查询城市环境质量列表
export function listQuality(query) {
  return request({
    url: '/city-data/quality/list',
    method: 'get',
    params: query
  })
}

// 查询城市环境质量详细
export function getQuality(envId) {
  return request({
    url: '/city-data/quality/' + envId,
    method: 'get'
  })
}

// 新增城市环境质量
export function addQuality(data) {
  return request({
    url: '/city-data/quality',
    method: 'post',
    data: data
  })
}

// 修改城市环境质量
export function updateQuality(data) {
  return request({
    url: '/city-data/quality',
    method: 'put',
    data: data
  })
}

// 删除城市环境质量
export function delQuality(envId) {
  return request({
    url: '/city-data/quality/' + envId,
    method: 'delete'
  })
}
