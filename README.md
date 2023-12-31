# 桌面天气
## 设计背景
· 早在10年前，智能手机的桌面上已经能显示天气预报信息。当时一些手机甚至支持动态天气壁纸功能（如三星Note2)。 \
· 但目前，在电脑端鲜有类似的天气软件，即使是windows自带的天气软件，也不支持天气壁纸和展示更加详细的天气信息。 \
· 这款天气软件的目的就是将手机端的天气软件和天气壁纸功能移植到电脑上去，使PC用户能有更好的使用体验。 
## 概述
软件名称：天气（桌面天气） \
软件大小：约197.47M（含动态壁纸引擎和AI语音包） \
支持系统：Windows11及以上版本 \
软件版本：2.3.0 \
发布时间：2023.03.21 
## 具体功能
· 桌面（主界面）支持显示当前天气实况，7日天气预报 \
· 菜单支持显示当前天气实况，逐小时天气预报，15日天气预报 \
· 支持语音播报当前天气，天气恶劣时还有温馨提示语 \
· 支持动态天气壁纸，将天气实况转化为动图作为屏幕壁纸 \
· 可以查询包含全国近3000个县市的气象数据 \
· 分钟级气象数据更新
## 技术实现
IDE软件：Visual Basic 6.0精简版，IDLE (Python 3.10 64-bit) \
编程语言：Visual Basic（UI界面），Python（网络爬虫） \
数据来源：心知天气　\
体感温度及紫外线强度算法参考文献： \
[1]赵洁云，龙步菊，袁维颖，等． 基于气温和体感温度的中国南方地区供暖必要性分析［J］． 气象与环境学报，2021，37( 2) : 41 － 47． \
[2]薛龙天波 宋洪盛 滕修波  烟台市体感温度预报方法 山东气象 2000年第4期 \
[3]郜婧婧，吴昊，戴至修，等． 中国紫外线强度预报方法研究［J］． 气象与环境学报，2018，34( 4) : 139 － 144． \
[4]杨 青 叶龙媒 紫外线强度的计算及预报方法研究  新疆气象业务中心  新疆 乌鲁木齐 1002－0799（2000）01－0013－03 
## 设计流程
· 提出idea，寻找合适的技术栈 \
· Python爬虫编写 \
· UI界面设计 \
· 邀请同学参与测试 \
· 修改测试中产生的问题 \
· 产品上线 
## 创新性分析
· 可以直接在电脑桌面上查看天气信息，无需打开手机或浏览器查询 \
· 动态天气壁纸，生动形象展现天气实况，使用户仿佛置身于自然之中 \
· 菜单栏目可视化设计，清晰展示天气变化和气温走势 \
· 语音播报当前天气，满足用户感官体验 \
· 个性化的设置选项，满足用户个性化的使用需求 
## 困难解决
困难：服务器提供的体感温度和紫外线强度数据不准确。 \
解决：查阅相关文献，自己设计算法解决。 \
困难：向数据提供方购买的私钥有泄漏风险。 \
解决：采用RSA加密算法，使用只含有公钥的密文发送请求。 
## 展望未来
· 修复动态天气壁纸的bug \
· 增加更多的动态天气壁纸 \
· 支持同时添加多个城市 \
· 让桌面天气能被安装在C盘以外的其他盘 \
· 优化地点搜索算法，进一步提高运行效率 
# 此软件已停止维护！
