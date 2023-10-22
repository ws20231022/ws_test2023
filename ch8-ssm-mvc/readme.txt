ch8-ssm-mvc   ssm整合开发     一个项目中使用多个框架，用框架解决不同的问题，只用一个mvc容器

springmvc + spring + mybatis

springmvc    接收用户的请求，调用service,显示处理结果，是视图层的框架。
         主要管理controller,视图等对象，数据来自service

spring       使用IOC管理对象,dao,service,工具类等

mybatis      访问数据库


用户的请求处理流程：
    用户发起请求 ---> Springmvc的Controller ---> Service ---> Dao ---> DB数据库


SSM步骤：
1.建表
2.新建maven   web
3.加入依赖
4.修改web.xml
    1)注册springmvc的中央调度器，读取springmvc的配置文件，创建文件中的处理器对象
    2)注册字符集过滤器，解决post请求乱码
5.建立包     实体类包，service包，dao包等
6.编写多个配置文件
    1)springmvc的配置文件
    2)mybatis的主配置文件
    3)数据库的属性配置文件
7.编写代码，定义实体类，dao接口和sql映射文件，service接口和实现类，controller类
8.定义视图部分，各种jsp