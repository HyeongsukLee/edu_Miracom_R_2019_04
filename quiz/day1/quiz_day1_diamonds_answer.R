# 1. "ggplot2" 패키지의 diamonds 데이터를 불러와서
#    df 객체에 저장하시오.
data("diamonds", package = "ggplot2")
df = diamonds
head(df)

# 2. df 객체의 row 개수는 몇 개인가?
nrow(df)

# 3. df 객체의 column 개수는 몇 개인가?
ncol(df)

# 4. df 객체의 데이터에는 색상[color]이 몇 종류 기록되어있는가?
unique(df$color)
length(unique(df$color))

# 5. df 객체의 데이터에는 투명도[clarity]가 몇 종류 기록되어있는가?
length(unique(df$clarity))

# 6. 가장 비싼 다이아몬드의 가격은 얼마인가?
max(df$price)

# 7. 색상[color]이 "E"이면서 가격[price]이 4000이 넘는 다이아몬드는 몇 개인가?
# 1)
nrow(df[(df$color == "E") & (df$price > 4000),])

# 2)
length(which((df$color == "E") & (df$price > 4000)))

# 3)
sum((df$color == "E") & (df$price > 4000))

# 참고
TRUE + TRUE
TRUE + FALSE
FALSE + FALSE 
sum(c(TRUE, FALSE, FALSE))


# 8. 세공[cut]이 "Ideal" 이면서 색상[color]이 "E"인 다이아몬드의 가격 평균은 얼마인가?
# (반올림하여 소수점 둘 째 자리까지 표기하시오)
price_mean = mean(df[(df$cut == "Ideal") & (df$color == "E"), "price"])
round(price_mean, 2)

# 9. 색상[color]에 따른 가격[price]의 평균을 구해보시오.
# 1)
unique(df$color) # E I J H F G D
mean(df[df$color == "E", "price"])
mean(df[df$color == "I", "price"])

# 2)
for(n in unique(df$color)){
  print(paste0(n, ": ", mean(df[df$color == n, "price"])))
}

# 3)
aggregate(data = df, price ~ color, FUN = "mean")

# 참고
aggregate(data = df, price ~ clarity, FUN = "mean")
aggregate(data = df, price ~ clarity, FUN = "max")
df_agg = aggregate(data = df, price ~ color + clarity, FUN = "mean")
df_agg[order(df_agg$color), ]

# 10. 세공[cut]이 "Good"이거나 "Premium"이면서 색상[color]이 "E"인
# 데이터를 추출하여 df_sub 객체에 저장하시오.
# 1)
df1 = df[(df$cut == "Good") & (df$color == "E"),]
df2 = df[(df$cut == "Premium") & (df$color == "E"),]
df_sub = rbind(df1, df2)
table(df_sub$cut, df_sub$color)

# 2) 
df_sub = df[(df$cut == "Good") | (df$cut == "Premium"),]
df_sub = df_sub[df_sub$color == "E", ]

# 3)
df_sub = df[((df$cut == "Good") | (df$cut == "Premium")) & (df$color == "E"),]

# 4)
df_sub = df[(df$cut %in% c("Good", "Premium")) & (df$color == "E"),]

# 11. df_sub 객체의 가격 평균은 얼마인가?
mean(df_sub$price)

# 12. df_sub 객체의 투명도[clarity] 변수에 있는 원소의 비중을 확인하시오. 가장 비중이 높은 것은 무엇인가?
# (정답 예시: SI2, 10.12%)
table(df_sub$clarity)
prop.table(table(df_sub$clarity))
round(prop.table(table(df_sub$clarity)) * 100, 2)
max(round(prop.table(table(df_sub$clarity)) * 100, 2))

tb = round(prop.table(table(df_sub$clarity)) * 100, 2)
tb_sub = tb[tb == max(tb)] # 1
tb_sub = tb[which.max(tb)] # 2
paste0(names(tb_sub), ", ", tb_sub, "%")

# 참고
tb = table(df_sub$clarity)
names(tb)
as.numeric(tb)
class(tb)

c(1, 2, 3)
c("aa" = 1, "bb" = 2, "cc" = 3)
vec = c(1, 2, 3)
names(vec) = c("a", "b", "c")
