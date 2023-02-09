import request from '@/utils/request'

// 查询景点信息列表
export function listScenic_spot(query) {
  return request({
    url: '/system/scenic_spot/list',
    method: 'get',
    params: query
  })
}

// 查询景点信息详细
export function getScenic_spot(id) {
  return request({
    url: '/system/scenic_spot/' + id,
    method: 'get'
  })
}

// 新增景点信息
export function addScenic_spot(data) {
  return request({
    url: '/system/scenic_spot',
    method: 'post',
    data: data
  })
}

// 修改景点信息
export function updateScenic_spot(data) {
  return request({
    url: '/system/scenic_spot',
    method: 'put',
    data: data
  })
}

// 删除景点信息
export function delScenic_spot(id) {
  return request({
    url: '/system/scenic_spot/' + id,
    method: 'delete'
  })
}
