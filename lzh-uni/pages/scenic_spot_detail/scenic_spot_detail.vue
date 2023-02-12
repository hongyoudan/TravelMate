<template>
	<view class="scenic_spot_detail">
		<view class="img">
			<image :src="scenicSpotDetailList.imgUrl" mode="widthFix"></image>
		</view>
		<view class="title">{{scenicSpotDetailList.name}}</view>
		<view class="address">地址：{{scenicSpotDetailList.address}}</view>
		<view class="introduction">简介：{{scenicSpotDetailList.introduction}}</view>
		<view class="city">城市：{{scenicSpotDetailList.city}}</view>

		<view class="details">
			<u-parse :content="scenicSpotDetailList.details"></u-parse>
		</view>
	</view>
</template>

<script>
	import {
		getScenicSpotDetailList
	} from '@/api/api.js'
	export default {
		data() {
			return {
				id: '',
				scenicSpotDetailList: {
					name: "",
					imgUrl: "",
					address: "",
					introduction: "",
					city: "",
					details: ""
				}
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
				getScenicSpotDetailList(id).then(res => {
					if (res.code === 200) {
						this.scenicSpotDetailList = res.data
					}
					console.log(this.scenicSpotDetailList);
				})
			}
		},
		/**
		 * 下拉刷新
		 */
		onPullDownRefresh() {
			// 获取数据
			setTimeout(() => {
				getScenicSpotDetailList(this.id).then(res => {
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
	.scenic_spot_detail {
		padding: 10px 10px 15px 10px;

		.img {

			image {
				width: 100%;
			}

		}

		.title {
			font-size: 25px;
			margin-top: 20px;
		}

		.address {
			margin-top: 20px;
		}

		.introduction {
			margin-top: 10px;
		}

		.city {
			margin-top: 10px;
		}

		.details {
			margin-top: 20px;
		}
	}
</style>
