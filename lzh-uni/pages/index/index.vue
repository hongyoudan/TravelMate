<template>
	<view class="index">
		<!-- 轮播图 -->
		<view class="banner">
			<u-swiper height="180" :list="bannerLists" keyName="imgUrl" showTitle :autoplay="true" circular></u-swiper>
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
					<image :src="item.imgUrl" mode="aspectFill" @click="clickImg(item.id)"></image>
					<text>{{item.name}}</text>
				</view>
			</view>
		</view>
		<!-- 官方攻略 -->
		<view class="list" v-show="guidelineLists.length>0">
			<view class="title">
				<view class="title-1">官方攻略</view>
				<view class="title-2">让你的旅行，不止拍拍照就离开</view>
			</view>
			<view class="content">
				<view class="item" v-for="(item,index) in guidelineLists" :key="item.id" @click="clickItem(item.id)">
					<view class="left">
						<image :src="item.imgUrl" mode="aspectFill"></image>
					</view>
					<view class=" right">
						<view class="title">
							{{item.title}}
						</view>
						<view class="introduction">
							{{item.introduction}}
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 热门活动 -->
		<view class="list" v-show="popularActivityLists.length>0">
			<view class="title">
				<view class="title-1">热门活动</view>
				<view class="title-2">让你的旅行，不止拍拍照就离开</view>
			</view>
			<view class="content">
				<view class="item" v-for="(item,index) in popularActivityLists" :key="item.id"
					@click="clickItem(item.id)">
					<view class="left">
						<image :src="item.imgUrl" mode="aspectFill"></image>
					</view>
					<view class=" right">
						<view class="title">
							{{item.title}}
						</view>
						<view class="introduction">
							{{item.introduction}}
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 头条资讯 -->
		<view class="list" v-show="headlineNewsLists.length>0">
			<view class="title">
				<view class="title-1">头条资讯</view>
				<view class="title-2">让你的旅行，不止拍拍照就离开</view>
			</view>
			<view class="content">
				<view class="item" v-for="(item,index) in headlineNewsLists" :key="item.id" @click="clickItem(item.id)">
					<view class="left">
						<image :src="item.imgUrl" mode="aspectFill"></image>
					</view>
					<view class=" right">
						<view class="title">
							{{item.title}}
						</view>
						<view class="introduction">
							{{item.introduction}}
						</view>
					</view>
				</view>
			</view>
		</view>
		<!-- 热门资讯 -->
		<view class="list" v-show="hotNewsLists.length>0">
			<view class="title">
				<view class="title-1">热门资讯</view>
				<view class="title-2">让你的旅行，不止拍拍照就离开</view>
			</view>
			<view class="content">
				<view class="item" v-for="(item,index) in hotNewsLists" :key="item.id" @click="clickItem(item.id)">
					<view class="left">
						<image :src="item.imgUrl" mode="aspectFill"></image>
					</view>
					<view class=" right">
						<view class="title">
							{{item.title}}
						</view>
						<view class="introduction">
							{{item.introduction}}
						</view>
					</view>
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
				// 轮播图
				bannerLists: [],
				// 要闻
				newsList: [],
				// 热门景点
				hotScenicSpotLists: [],
				// 官方攻略
				guidelineLists: [],
				// 热门活动
				popularActivityLists: [],
				// 头条资讯
				headlineNewsLists: [],
				// 热门资讯
				hotNewsLists: []
			}
		},
		onLoad() {
			/**
			 * 页面加载时获取数据
			 */
			this.getData()
		},
		methods: {
			/**
			 * 获取数据
			 */
			getData() {
				getIndexLists().then(res => {
					if (res.code === 200) {
						this.bannerLists = res.data.bannerLists
						this.newsList = res.data.newsList[0]
						this.hotScenicSpotLists = res.data.hotScenicSpotLists
						this.guidelineLists = res.data.guidelineLists
						this.popularActivityLists = res.data.popularActivityLists
						this.headlineNewsLists = res.data.headlineNewsLists
						this.hotNewsLists = res.data.hotNewsLists
					}
					console.log('首页数据', res);
				})
			},
			/**
			 * 点击图片跳转到景点详情页
			 */
			clickImg(id) {
				uni.navigateTo({
					url: '/pages/scenic_spot_detail/scenic_spot_detail?id=' + id
				})
			},
			/**
			 * 点击图片跳转到景点详情页
			 */
			clickItem(id) {
				uni.navigateTo({
					url: '/pages/article_detail/article_detail?id=' + id
				})
			}
		},
		/**
		 * 下拉刷新
		 */
		onPullDownRefresh() {
			// 获取数据
			setTimeout(() => {
				getIndexLists().then(res => {
					uni.showToast({
						title: '加载成功！',
					});
					uni.stopPullDownRefresh()
					console.log('下拉刷新', res);
				})
			}, 1000)
		}
	}
</script>

<style lang="scss">
	.index {
		margin-bottom: 10px;

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
					height: 150px;
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

		.list {
			margin-top: 50px;

			.title {
				text-align: center;
				margin-bottom: 10px;

				.title-1 {
					font-size: 25px;
				}

				.title-2 {
					font-size: 14px;
					color: #909399;
				}
			}

			.content {
				.item {
					padding: 10px 10px 10px 10px;
					display: flex;
					border-bottom: 1px solid #f4f4f5;
					height: 100px;

					.left {
						width: 450px;
						height: 100%;

						image {
							width: 100%;
							height: 100%;
						}
					}

					.right {
						width: 700px;
						padding: 0 0 10px 10px;

						.title {
							font-size: 18px;
							font-weight: bold;
							overflow: hidden;
							text-overflow: ellipsis;
							-webkit-line-clamp: 1;
							display: -webkit-box;
							-webkit-box-orient: vertical;
						}

						.introduction {
							font-size: 14px;
							// margin-top: 8px;
							overflow: hidden;
							text-overflow: ellipsis;
							-webkit-line-clamp: 3;
							display: -webkit-box;
							-webkit-box-orient: vertical;
						}
					}
				}
			}
		}
	}
</style>
