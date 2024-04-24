import request from '@/utils/request'

// 查询资源类别列表
export function listCategory(query) {
  return request({
    url: '/pubservice/category/list',
    method: 'get',
    params: query
  })
}

// 查询资源类别详细
export function getCategory(categoryId) {
  return request({
    url: '/pubservice/category/' + categoryId,
    method: 'get'
  })
}

// 新增资源类别
export function addCategory(data) {
  return request({
    url: '/pubservice/category',
    method: 'post',
    data: data
  })
}

// 修改资源类别
export function updateCategory(data) {
  return request({
    url: '/pubservice/category',
    method: 'put',
    data: data
  })
}

// 删除资源类别
export function delCategory(categoryId) {
  return request({
    url: '/pubservice/category/' + categoryId,
    method: 'delete'
  })
}
