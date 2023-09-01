import request from '@/utils/request'

// 查询Bims常用查询，必须是验证过的列表
export function listQuery(query) {
  return request({
    url: '/web/query/list',
    method: 'get',
    params: query
  })
}

// 查询Bims常用查询，必须是验证过的详细
export function getQuery(sqlQueryId) {
  return request({
    url: '/web/query/' + sqlQueryId,
    method: 'get'
  })
}

// 新增Bims常用查询，必须是验证过的
export function addQuery(data) {
  return request({
    url: '/web/query',
    method: 'post',
    data: data
  })
}

// 修改Bims常用查询，必须是验证过的
export function updateQuery(data) {
  return request({
    url: '/web/query',
    method: 'put',
    data: data
  })
}

// 删除Bims常用查询，必须是验证过的
export function delQuery(sqlQueryId) {
  return request({
    url: '/web/query/' + sqlQueryId,
    method: 'delete'
  })
}
  // 执行sql语句
export function execQuery(sqlQueryId) {
    return request({
      url: '/web/query/execQuery/' + sqlQueryId,
      method: 'get',
      timeout: 300000
    })

}
