import request from '@/utils/request'


export function queryUserInfo(userName) {
    return request({
      url: '/bims/user/info',
      method: 'post',
      data: userName,
      timeout:100000
    })

}
export function queryUserMessage(userName) {
  return request({
    url: '/bims/user/message',
    method: 'post',
    data: userName
  })

}
