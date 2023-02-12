import request from '@/utils/request'
// 获取首页信息
export function getData() {
  return request({
    url: '/index',
    method: 'get'
  })
}
