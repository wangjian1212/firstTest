# 测试工程



### 实现功能

- 登陆、注销、注册 相关验证

- 自己反馈列表，全部反馈列表

- 发帖、查看问题反馈

- 导出excel未实现，想用bootstrap-table组件来实现的，有点问题，由于时间问题没有实现

### 开发环境

- jdk 1.8
- mysql 8.0
- Maven构建项目

### 开发使用技术

- SpringBoot框架 	

- 前端采用freemarker模板引擎,bootstrap,tinymce

- 数据库操作使用mybatis

  

### 项目结构说明

- 前端页面：templates/

- 后台类：com.sinosoft.exam

- 登陆、注册、注销：com.sinosoft.exam.authentication

- 问题反馈：com.sinosoft.exam.ques
- 初始化数据sql脚本: db/init.sql

### 项目启动

- cd exam	

- mvn clean install     

- mvn spring-boot:run   
