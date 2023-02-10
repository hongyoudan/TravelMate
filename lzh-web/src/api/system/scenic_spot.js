import request from '@/utils/request'

// 查询景点信息列表
export function listSpot(query) {
  return request({
    url: '/system/scenic_spot/list',
    method: 'get',
    params: query
  })
}

// 查询景点信息详细
export function getSpot(id) {
  return request({
    url: '/system/scenic_spot/' + id,
    method: 'get'
  })
}

// 新增景点信息
export function addSpot(data) {
  return request({
    url: '/system/scenic_spot',
    method: 'post',
    data: data
  })
}

// 修改景点信息
export function updateSpot(data) {
  return request({
    url: '/system/scenic_spot',
    method: 'put',
    data: data
  })
}

// 删除景点信息
export function delSpot(id) {
  return request({
    url: '/system/scenic_spot/' + id,
    method: 'delete'
  })
}
