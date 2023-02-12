<template>
	<view class="article">
		<u-sticky>
			<u-subsection customStyle="height: 40px;" activeColor="#F07D7D" bgColor="#fff" fontSize="15"
				:list="subsectionLists" :current="currentIndex" @change="sectionChange">
			</u-subsection>
		</u-sticky>
		<!-- 官方攻略 -->
		<view class="content" v-show="currentIndex===0">
			<view class="item" v-for="(item,index) in articleLists" :key="item.id" @click="clickItem(item.id)">
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
					<view class="create_time">
						{{item.createTime}}
					</view>
				</view>
			</view>
		</view>

		<!-- 热门活动 -->
		<view class="content" v-show="currentIndex===1">
			<view class="item" v-for="(item,index) in articleLists" :key="item.id" @click="clickItem(item.id)">
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
					<view class="create_time">
						{{item.createTime}}
					</view>
				</view>
			</view>
		</view>

		<!-- 头条资讯 -->
		<view class="content" v-show="currentIndex===2">
			<view class="item" v-for="(item,index) in articleLists" :key="item.id" @click="clickItem(item.id)">
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
					<view class="create_time">
						{{item.createTime}}
					</view>
				</view>
			</view>
		</view>

		<!-- 热门资讯 -->
		<view class="content" v-show="currentIndex===3">
			<view class="item" v-for="(item,index) in articleLists" :key="item.id" @click="clickItem(item.id)">
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
					<view class="create_time">
						{{item.createTime}}
					</view>
				</view>
			</view>
		</view>
	</view>
</template>

<script>
	import {
		getArticleListsByType
	} from '@/api/api.js'
	export default {
		data() {
			return {
				subsectionLists: ['官方攻略', '热门活动', '头条资讯', '热门资讯'],
				currentIndex: 0,
				articleLists: []
			};
		},
		onLoad() {
			/**
			 * 页面加载时获取数据
			 */
			this.getData(this.currentIndex)
		},
		methods: {
			sectionChange(index) {
				this.currentIndex = index;
				this.getData(this.currentIndex)
			},
			/**
			 * 获取数据
			 */
			getData(type) {
				getArticleListsByType(type).then(res => {
					if (res.code === 200) {
						this.articleLists = res.data
					}
					console.log('首页数据', res);
				})
			},
			/**
			 * 点击图片跳转到景点详情页
			 */
			clickItem(id) {
				console.log(id);
				uni.navigateTo({
					url: '/pages/article_detail/article_detail?id=' + id
				})
			},
			/**
			 * 下拉刷新
			 */
			onPullDownRefresh() {
				// 获取首页数据
				setTimeout(() => {
					getArticleListsByType(this.currentIndex).then(res => {
						this.articleLists = res.data
						uni.showToast({
							title: '加载成功！',
						});
						uni.stopPullDownRefresh()
						console.log('下拉刷新', res);
					})
				}, 1000)
			},
		}
	}
</script>

<style lang="scss">
	.article {
		.content {
			.item {
				padding: 10px 10px 5px 10px;
				display: flex;
				border-bottom: 1px solid #f4f4f5;
				height: 120px;

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
						margin-top: 8px;
						overflow: hidden;
						text-overflow: ellipsis;
						-webkit-line-clamp: 3;
						display: -webkit-box;
						-webkit-box-orient: vertical;
					}

					.create_time {
						font-size: 14px;
						color: #909399;
						margin: 5px 5px 0 0;
					}
				}
			}
		}
	}
</style>
