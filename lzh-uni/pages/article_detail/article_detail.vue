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
				articleList: {}
			};
		},
		onLoad(option) {
			this.getData(option.id)
		},
		methods: {
			getData(id) {
				getArticleListsById(id).then(res => {
					if (res.code === 200) {
						this.articleList = res.data
					}
					console.log(res);
				})
			}
		}
	}
</script>

<style lang="scss">
	.article_detail {
		padding: 10px 10px 0 10px;

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
