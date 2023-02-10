<template>
	<view class="index">
		<!-- 轮播图 -->
		<view class="banner">
			<u-swiper height="200" :list="bannerLists" keyName="imgUrl" showTitle :autoplay="true" circular></u-swiper>
		</view>
		<!-- 要闻 -->
		<view class="news">
			<view class="title">{{newsList.name}}</view>
			<view class="content">{{newsList.content}}</view>
		</view>
		<!-- 热门景点 -->
		<view class="popular_scenic_spot">
			<view class="title">
				<view class="title-1">热门景点</view>
				<view class="title-2">让你的旅行，不止拍拍照就离开</view>
			</view>
			<view class="content">
				<view class="item" v-for="(item,index) in hotScenicSpotLists" :key="item.id">
					<image :src="item.imgUrl" mode="widthFix" @click="clickImg(item.id)"></image>
					<text>{{item.name}}</text>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getIndexLists
	} from '@/api/api.js'
	export default {
		data() {
			return {
				bannerLists: [],
				newsList: [],
				hotScenicSpotLists: []
			}
		},
		onLoad() {
			this.getData()
		},
		methods: {
			getData() {
				getIndexLists().then(res => {
					if (res.code === 200) {
						this.bannerLists = res.data.bannerLists
						this.newsList = res.data.newsList[0]
						this.hotScenicSpotLists = res.data.hotScenicSpotLists
					}
					console.log(res);
				})
			},
			clickImg(id) {
				uni.navigateTo({
					url: '/pages/scenic_spot_detail/scenic_spot_detail?id=' + id
				})
			}
		}
	}
</script>

<style lang="scss">
	.index {
		.banner {
			margin: 10px;
		}

		.news {
			margin: 50px 10px 0 10px;

			text-align: center;

			.title {
				font-size: 25px;
			}

			.content {
				font-size: 15px;
				color: #303133;
				margin-top: 20px;
				text-align: left;
				line-height: 25px;
			}

		}

		.popular_scenic_spot {
			margin-top: 50px;

			.title {
				text-align: center;

				.title-1 {
					font-size: 25px;
				}

				.title-2 {
					font-size: 14px;
					color: #909399;
				}
			}

			.content {
				display: flex;
				flex-wrap: wrap;
				// justify-content: center;
				margin-top: 10px;

				.item {
					width: 45%;
					height: 160px;
					display: flex;
					box-sizing: border-box;
					flex-direction: column;
					align-items: center;
					margin: 10px;

					image {
						border-radius: 5px;
						width: 100%;
					}

					text {
						margin: 5px;
					}
				}
			}
		}
	}
</style>
