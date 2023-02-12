<template>
	<view class="article_detail">
		<view class="title">{{articleList.title}}</view>
		<view class="create_time">{{articleList.createTime}}</view>
		<view class="content">
			<u-parse :content="articleList.content"></u-parse>
		</view>
	</view>
</template>

<script>
	import {
		getArticleListsById
	} from '@/api/api.js'
	export default {
		data() {
			return {
				articleList: {},
				id: ''
			};
		},
		onLoad(option) {
			this.id = option.id
			this.getData(option.id)
		},
		methods: {
			/**
			 * 获取数据
			 */
			getData(id) {
				getArticleListsById(id).then(res => {
					if (res.code === 200) {
						this.articleList = res.data
					}
					console.log(res);
				})
			}
		},
		/**
		 * 下拉刷新
		 */
		onPullDownRefresh() {
			// 获取数据
			setTimeout(() => {
				getArticleListsById(this.id).then(res => {
					uni.showToast({
						title: '加载成功！',
					});
					uni.stopPullDownRefresh()
					console.log('下拉刷新', res);
				})
			}, 1000)
		},
	}
</script>

<style lang="scss">
	.article_detail {
		padding: 10px 10px 15px 10px;

		.title {
			font-size: 25px;
			font-weight: bold;
		}

		.create_time {
			color: #909399;
			margin: 10px 5px 0 0;

		}

		.content {
			margin-top: 20px;
		}
	}
</style>
