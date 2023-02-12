import request from '@/utils/request.js'

export function getIndexLists() {
	return request({
		'url': '/uni/index'
	})
}

// 根据id查询景点信息详细
export function getScenicSpotDetailList(id) {
	return request({
		'url': '/uni/scenic_spot/' + id
	})
}

// 根据type获取文章列表
export function getArticleListsByType(type) {
	return request({
		'url': '/uni/article/list/' + type
	})
}

//根据id获取文章详情
export function getArticleListsById(id) {
	return request({
		'url': '/uni/article/' + id
	})
}
