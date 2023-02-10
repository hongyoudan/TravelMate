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
			this.getData(option.id)
		},
		methods: {
			getData(id) {
				getScenicSpotDetailList(id).then(res => {
					if (res.code === 200) {
						this.scenicSpotDetailList = res.data
					}
					console.log(this.scenicSpotDetailList);
				})
			}
		}
	}
</script>

<style lang="scss">
	.scenic_spot_detail {
		padding: 10px 10px 0 10px;

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
