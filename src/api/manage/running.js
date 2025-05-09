import request from '@/utils/request'

// 查询出货流水列表
export function listRunning(query) {
  return request({
    url: '/manage/running/list',
    method: 'get',
    params: query
  })
}

// 查询出货流水详细
export function getRunning(id) {
  return request({
    url: '/manage/running/' + id,
    method: 'get'
  })
}

// 新增出货流水
export function addRunning(data) {
  return request({
    url: '/manage/running',
    method: 'post',
    data: data
  })
}

// 修改出货流水
export function updateRunning(data) {
  return request({
    url: '/manage/running',
    method: 'put',
    data: data
  })
}

// 删除出货流水
export function delRunning(id) {
  return request({
    url: '/manage/running/' + id,
    method: 'delete'
  })
}
