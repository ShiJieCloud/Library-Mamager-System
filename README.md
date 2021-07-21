

# Library Manager System





## 项目背景



这是一个简单的 SSM 项目，实现了图书管理的基本功能，由于一个人构建整个项目，所以需要浪费一些时间去网上找一些如 html 页面、前端插件库、图片等资源。

总之，这个项目非常的简单，大家可以继续去完善，再添加一些其他的功能，源文件下载地址已挂在最后。



------



## 项目简介

> 开发环境

- IDEA
- JDK 1.8
- MySQL 5.7.19
- Tomcat 9
- Maven 3.6
- Windows

> 技术点

- 基础框架：SSM（Spring+SpringMVC+MyBatis）
- Web 框架：[BootStrap](https://www.bootcss.com/)
- Web 技术：HTML、CSS、JavaScript、JSP、jQuery、AJAX、JSON
- 请求URI采用 RESTFUL 风格[^2]URI

> 功能点

1. 前端分页
2. 前端通知框：使用了 jQuery 的 Toast 插件
3. 前端弹窗：使用了 [SweetAlert2](https://sweetalert.bootcss.com/) 插件
4. AJAX 局部刷新
5. CRUD[^1]



------



## 项目展示



### 首页

![首页](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/首页.gif)



### 图书管理系统

![图书管理系统界面](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/图书管理系统界面.gif)



#### 添加书籍

![添加书籍](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/添加书籍.gif)

#### 编辑书籍

![编辑书籍](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/编辑书籍.gif)



#### 删除书籍

![删除书籍](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/删除书籍.gif)

#### 全部书籍

![全部书籍](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/全部书籍.gif)

#### 搜索

![搜索](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/搜索.gif)

### 联系

![联系](https://gitee.com/suitbaby/MarkDownPicMyself/raw/master/img/联系.gif)





------



## 项目构建



### 准备工作

1. [Java 开发环境的搭建](https://blog.csdn.net/qq_20185737/article/details/107499266)
2. [了解项目依赖管理工具 Maven](https://blog.csdn.net/qq_20185737/article/details/118554104)
3. [了解持久层框架 MyBatis](https://blog.csdn.net/qq_20185737/article/details/118549260)
4. [了解插件 LomBok 的使用](https://blog.csdn.net/qq_20185737/article/details/118490837)
5. [部署服务器 Tomccat](https://blog.csdn.net/qq_20185737/article/details/116421320)
6. [了解数据库的连接 JDBC](https://blog.csdn.net/qq_20185737/article/details/115599307)

准备工作准备好之后就可以着手开发了



### 项目开发



[《搭建 SSM 框架》](https://blog.csdn.net/qq_20185737/article/details/118971141)





[^1]:增加(Create)、检索(Retrieve)、更新(Update)和删除(Delete)
[^2]:RESTFUL ：客户端使用GET、POST、PUT、DELETE 4个表示操作方式的动词对服务端资源进行操作

