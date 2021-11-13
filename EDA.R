#########
#Questions
#1.Will the ingredients of cosmetics affect the final result of customer’s rank?
#2.Will the ingredients of cosmetics affect the cosmetics price?


library(dplyr)
library(magrittr)
library(tidyverse)
library(ggplot2)
#------------------------------------------------------------------------------------------------------
#read data
distinct(cosmetics,Label)

distinct(cosmetics,Brand)

#------------------------------------------------------------------------------------------------------
#看一下每类化妆品的分布
Label<-cosmetics %>%
  group_by(Label) %>%
  summarise(count=n())

p_Label<-ggplot(Label,aes(x=Label,y=count))+
  geom_bar(color='lightblue',stat='identity',position='dodge',size=3)+
  labs(x='Cosmetics Label',y='Count of each label',title='The number of each label in the dataset')+
  theme(axis.title = element_text(size=15))+
  theme(axis.text = element_text(size=15))+
  theme(text=element_text(size=20,family="Times New Roman"))+
  theme(plot.title=element_text(hjust=0.5))
p_Label 
#------------------------------------------------------------------------------------------------------


#------------------------------------------------------------------------------------------------------
#每个品牌每类化妆品的数量情况,平均价格以及平均排名情况
Brand_Label<-cosmetics %>%
  group_by(Brand,Label) %>%
  summarise(count=n(),avg_price=mean(Price),avg_rank=mean(Rank))

Brand_Label$avg_price<-round(Brand_Label$avg_price,digits=2)
Brand_Label$avg_rank<-round(Brand_Label$avg_rank,digits=2)

可以看一下每个label里，价格和rank排名前十的化妆品是哪几个牌子

#------------------------------------------------------------------------------------------------------



#看一下每个品牌的产品均值
  
  
  
  
