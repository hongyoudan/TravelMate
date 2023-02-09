<template>
	<view class="index">
		<view class="banner">
			<u-swiper :list="bannerList" keyName="image" showTitle :autoplay="true" circular></u-swiper>
		</view>
		<view class="hot">
			<u-row justify="space-between" gutter="10">
				<u-col span="3">
					<view class="demo-layout bg-purple"></view>
				</u-col>
				<u-col span="3">
					<view class="demo-layout bg-purple-light"></view>
				</u-col>
				<u-col span="3">
					<view class="demo-layout bg-purple"></view>
				</u-col>
				<u-col span="3">
					<view class="demo-layout bg-purple-light"></view>
				</u-col>
			</u-row>
		</view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				bannerList: [{
					image: 'https://cdn.uviewui.com/uview/swiper/swiper2.png',
					title: '昨夜星辰昨夜风，画楼西畔桂堂东',
				}, {
					image: 'https://cdn.uviewui.com/uview/swiper/swiper1.png',
					title: '身无彩凤双飞翼，心有灵犀一点通'
				}, {
					image: 'https://cdn.uviewui.com/uview/swiper/swiper3.png',
					title: '谁念西风独自凉，萧萧黄叶闭疏窗，沉思往事立残阳'
				}]
			}
		},
		onLoad() {

		},
		methods: {

		}
	}
</script>

<style lang="scss">

</style>
