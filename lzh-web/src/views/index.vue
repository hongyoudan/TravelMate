<template>
  <div class="app-container home">
    <el-row :gutter="20">
      <el-col>
        <h2>旅伴——旅游资讯后台管理系统</h2>
        <p>优质旅游门户网站，让您的旅途不止拍拍照</p>
      </el-col>
    </el-row>

    <el-row :gutter="20">
      <el-col>
        <h2>基于 SpringBoot 的旅游资讯小程序的设计与实现</h2>
        <p>后端：SpringBoot、Spring Security、MyBatis、MySQL<br>
          前端：Vue.js、Element UI、Axios、Vuex<br>
          移动端：uni-app、uView、微信小程序<br>
        </p>
      </el-col>
    </el-row>

<!--    <el-divider/>-->
  </div>
</template>

<script>
import { getData } from '@/api/dashboard'

export default {
  name: 'Index',
  data() {
    return {
      articleLists: {},
      scenicSpotLists: {},
      bannerLists: {}
    }
  },
  methods: {
    getData() {
      getData().then(res => {
        this.articleLists = res.data.articleLists
        this.scenicSpotLists = res.data.scenicSpotLists
        this.bannerLists = res.data.bannerLists
        console.log(res)
      })
    }
  },
  created() {
    this.getData()
  }
}
</script>

<style scoped lang="scss">
.home {
  blockquote {
    padding: 10px 20px;
    margin: 0 0 20px;
    font-size: 17.5px;
    border-left: 5px solid #eee;
  }

  hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
  }

  .col-item {
    margin-bottom: 20px;
  }

  ul {
    padding: 0;
    margin: 0;
  }

  font-family: "open sans", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-size: 13px;
  color: #676a6c;
  overflow-x: hidden;

  ul {
    list-style-type: none;
  }

  h4 {
    margin-top: 0px;
  }

  h2 {
    margin-top: 10px;
    font-size: 26px;
    font-weight: 100;
  }

  p {
    margin-top: 10px;

    b {
      font-weight: 700;
    }
  }


}
</style>

