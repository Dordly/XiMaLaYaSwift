### 仿喜马拉雅Swift版
##### 2018-8-20 框架搭建
##### 2018-8-21 使用MVVM架构搭建基本框架
##### 2018-8-23 新增UI界面图
##### 2018-8-23 搭建首页UI框架
###### 喜马拉雅页面分析：
* 首页
   * navigationBar
       * 消息中心（UITableView）
           * 聊天
           * 通知
       * 搜索
       * 播放历史
       * 下载
   * headerScrollView
       * 分类
       * 推荐（默认）
       * VIP
       * 直播
       * 小说
       * 广播
       * 儿童
       * 精品
       * 段子
       * 音乐
       * 相声
       * 历史
       * 人文
       * 情感
       * 英语
   * bottomScrollView
       * 滚动播放栏（scrollView）
       * 经典必听，每日必听，一键听，付费精品，听成都-应该是设置了定位功能，来设置是哪个区域（button）
       * 听头条（滚动label）
       * 猜你喜欢，精品，情感生活，音乐好时光，（广告-View），懒人电台，人文，直播，听成都（UICollectionView），旅游，商业财经，精品听单，综艺娱乐，为你推荐（UITableView）
* 我听
* 播放器
* 发现
* 我的
