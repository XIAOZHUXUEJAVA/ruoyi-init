import request from '@/utils/request'

// 查询事故类别列表
export function listCategory(query) {
  return request({
    url: '/emergency/category/list',
    method: 'get',
    params: query
  })
}

// 查询事故类别详细
export function getCategory(categoryId) {
  return request({
    url: '/emergency/category/' + categoryId,
    method: 'get'
  })
}

// 新增事故类别
export function addCategory(data) {
  return request({
    url: '/emergency/category',
    method: 'post',
    data: data
  })
}

// 修改事故类别
export function updateCategory(data) {
  return request({
    url: '/emergency/category',
    method: 'put',
    data: data
  })
}

// 删除事故类别
export function delCategory(categoryId) {
  return request({
    url: '/emergency/category/' + categoryId,
    method: 'delete'
  })
}
