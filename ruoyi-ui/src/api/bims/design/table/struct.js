import request from '@/utils/request'

// 查询【请填写功能名称】列表
export function listStruct(query) {
  return request({
    url: '/system/struct/list',
    method: 'get',
    params: query
  })
}

// 查询【请填写功能名称】详细
export function getStruct(columnId) {
  return request({
    url: '/system/struct/' + columnId,
    method: 'get'
  })
}

// 新增【请填写功能名称】
export function addStruct(data) {
  return request({
    url: '/system/struct',
    method: 'post',
    data: data
  })
}

// 修改【请填写功能名称】
export function updateStruct(data) {
  return request({
    url: '/system/struct',
    method: 'put',
    data: data
  })
}

// 删除【请填写功能名称】
export function delStruct(columnId) {
  return request({
    url: '/system/struct/' + columnId,
    method: 'delete'
  })
}
