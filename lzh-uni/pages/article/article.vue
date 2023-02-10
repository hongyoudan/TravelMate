<template>
	<view class="article">
		<u-sticky>
			<u-subsection fontSize="15" :list="subsectionLists" :current="currentIndex" @change="sectionChange">
			</u-subsection>
		</u-sticky>
		<!-- 官方攻略 -->
		<view class="content" v-show="currentIndex===0">
			<view class="item" v-for="(item,index) in articleLists" :key="item.id" @click="clickItem(item.id)">
				<view class="left">
					<image :src="item.imgUrl" mode="widthFix"></image>
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
					<image :src="item.imgUrl" mode="widthFix"></image>
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
					<image :src="item.imgUrl" mode="widthFix"></image>
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
					<image :src="item.imgUrl" mode="widthFix"></image>
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
			this.getData(this.currentIndex)
		},
		methods: {
			sectionChange(index) {
				this.currentIndex = index;
				this.getData(this.currentIndex)
			},
			getData(type) {
				getArticleListsByType(type).then(res => {
					if (res.code === 200) {
						this.articleLists = res.data
					}
					console.log(res);
				})
			},
			clickItem(id) {
				console.log(id);
				uni.navigateTo({
					url: '/pages/article_detail/article_detail?id=' + id
				})
			}
		}
	}
</script>

<style lang="scss">
	.article {
		.content {
			.item {
				padding: 10px;
				display: flex;
				border-bottom: 1px solid #f4f4f5;

				.left {
					image {
						width: 150px;
						height: 100%;
					}
				}

				.right {
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
