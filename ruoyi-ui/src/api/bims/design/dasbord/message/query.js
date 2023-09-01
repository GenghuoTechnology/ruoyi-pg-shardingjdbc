import request from '@/utils/request'

// 查询Bims常用查询，必须是验证过的列表
export function query(data) {
  return request({
    url: '/bims/message/query',
    method: 'post',
    data: data
  })
}
export function queryCount(data) {
  return request({
    url: '/bims/message/queryCount',
    method: 'post',
    data: data
  })
}
export function queryCountToday(data) {
  return request({
    url: '/bims/message/queryCountToday',
    method: 'post',
    data: data
  })
}
export function queryChart(data) {
  return request({
    url: '/bims/message/queryChart',
    method: 'post',
    data: data
  })
}
