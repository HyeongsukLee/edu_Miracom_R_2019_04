#### .=========.####
#### | [[ Day 2 ]] ####
#### .=========.####

#### 2. 데이터 취득과 전처리 ####
#### __ [05] 다양한 함수의 활용 ####
#### _____ ● Pivoting ####
#### _____ ● 데이터 & 패키지 준비 ####

#### _____ ● melt() ####

#### _____ ● cast() ####

#### _____ ● t() ####

#### _____ ● 반복문 대체 ####

#### _____ ● ifelse() ####

#### _____ ● ifelse() 예제 ####

#### _____ ● apply() ####

#### _____ ● apply() 예제 ####

#### _____ ● sapply() ####

#### _____ ● Join ####

#### _____ ● 데이터 준비 ####
source("data_generator_join.R", encoding = "UTF-8")

#### _____ ● 내장 함수 ####
# Left Join

# Inner Join

#### _____ ● SQL 문법 ####
# Left Join

# Inner Join

#### _____ ● dplyr 패키지 ####
# Left Join

# Inner Join

#### _____ ● magrittr 패키지 ####

#### _____ ● 파이프 연산자 실습 ####

#### 3. 통계 ####

#### __ [01] 들어가며 ####
#### ____ ● 통계? ####

#### ____ ● 표본 ####

#### ____ ● 사건 ####

#### ____ ● 확률 ####

#### ____ ● 확률 ####

#### __ [02] 통계량 ####
#### ____ ● 통계량의 정의 ####


#### ____ ● 평균 - mean() ####
# 산술 평균


# 기하 평균


# 결측치가 포함되어 있는 값의 평균 계산


# na.rm 파라미터 추가


# 글자가 포함되어 있는 값의 평균 계산


# na.rm 파라미터 추가


#### ____ ● 중앙값 - median() ####


#### ____ ● 최빈값 ####
mode = function(x){
  ux = unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

mode(c(1, 1, 1, 2, 3, 4, 4))


#### ____ ● 분산과 표준편차 - var(), sd() ####


#### ____ ● 통계량의 함정 ####
# https://github.com/stephlocke/datasauRus

library("ggplot2")
library("datasauRus")
ggplot(datasaurus_dozen) + 
  aes(x = x,
      y = y,
      color = dataset) + 
  geom_point() + 
  theme(legend.position = "none") + 
  facet_wrap( ~ dataset, nrow = 3)

#### __ [03] 가설 검정 Ⅰ ####
#### ____ ● 용어 정리 ####

#### ____ ● 가설검정 절차 ####

#### ____ ● 분할표와 오류 ####

#### ____ ● 분할표의 해석 ####
# 정확도

# 정밀도

# 재현율

#### ____ ● 분할표 ####

#### __[04] 추론 통계 ####
#### ____ ● 개념 ####

#### ____ ● 용어 정리 ####

#### ____ ● 점추정 ####

#### ____ ● 용어 정리 ####

#### ____ ● 예제 코드 ####

#### ____ ● 좋은 점 추정량의 조건 ####

#### ____ ● 구간 추정 ####

#### ____ ● 용어 정리 - 구간 추정 ####

#### ____ ● 정규분포 신뢰 구간 관련 코드 1 ####

#### ____ ● 정규분포 신뢰 구간 관련 코드 2 ####

#### ____ ● 모평균의 신뢰구간 ####

#### ____ ● 모비율의 신뢰구간 ####

#### __ [05] 표본 추출 ####
#### ____ ● 표본 추출의 정의 ####

#### ____ ● 표본 추출의 종류 ####

#### ____ ● 확률적 표본 추출의 정의 ####

#### ____ ● 단순 임의 추출의 정의 ####

#### ____ ● 단순 임의 추출의 특징 ####

#### ____ ● 단순 임의 추출 ####
# 복원 추출


# 비복원 추출


#### ____ ● 군집 표본 추출의 정의 ####


#### ____ ● 군집 표본 추출의 특징 ####


#### ____ ● 예시 ####
# 행정구역 기준 표본 추출


# 교육기관 기준 표본 추출


#### ____ ● 체계적 표본 추출의 정의 ####

#### ____ ● 체계적 표본 추출의 특징 ####




#### .==================. ####

#### __ ● 제품 및 브랜드 평가 ####
library("dplyr")
library("tidyr")
library("ggplot2")

df = read.csv("prods_scores.csv", stringsAsFactors = FALSE)
df[, "score_phrase"] = factor(df$score_phrase,
                              levels = c("Disaster", "Unbearable", "Painful", "Awful", "Bad",
                                         "Mediocre",
                                         "Okay", "Good", "Great", "Amazing", "Masterpiece"))

Microsoft = paste0("Xbox", c(" One", "", " 360"))
Sony = paste0("PlayStation", c(" Portable", " 4", " 2", " 3", " Vita", ""))
PC = c("Linux", "Macintosh", "SteamOS", "PC")
Nintendo = c(paste0("Nintendo ", c("3DS", 64, "64DD", "DS", "DSi")),
             "New Nintendo 3DS",
             paste0("Game Boy", c("", " Color", " Advance")),
             "Wii",
             "Wii U",
             "NES",
             "GameCube",
             "Super NES")

df[, "company"] = ifelse(df$platform %in% Microsoft, "Microsoft",
                         ifelse(df$platform %in% Sony, "Sony",
                                ifelse(df$platform %in% PC, "PC",
                                       ifelse(df$platform %in% Nintendo,
                                              "Nintendo", "Other"))))

my.palette = c("Sony"      = "#EDC951",
               "Nintendo"  = "#EB6841",
               "PC"        = "#CC2A36",
               "Microsoft" = "#4F372D",
               "Other"     = "#00A0B0")

ggplot(data = df, 
       aes(x = score_phrase,
           y = company,
           color = company)) +
  # geom_point(size = 12, 
  #            alpha = 0.02) +
  geom_jitter(alpha = 0.2) +
  scale_color_manual(values = my.palette) +
  labs(x = "Score category", y = NULL, title = "Reviews by Score categories") +
  theme_bw() +
  theme(legend.position = "none")


#### __ ● Nebraska 지역 기온 시각화 ####
library("lubridate")
library("viridis")
library("ggridges")

df_weather = read.csv("nebraska_2016.csv", stringsAsFactors = FALSE)
df_weather[, "Month"] = month(df_weather$CST)
df_weather[, "Month_order"] = factor(month.name[df_weather$Month],
                                     levels = month.name)

ggplot(df_weather, 
       aes(x = Mean.TemperatureF, 
           y = Month_order, 
           fill = ..x..)) +
  geom_density_ridges_gradient(scale = 3, 
                               rel_min_height = 0.01, 
                               gradient_lwd = 1) +
  scale_x_continuous(expand = c(0.01, 0.01)) +
  scale_y_discrete(  expand = c(0.01, 0.01)) +
  scale_fill_viridis(name = "Temp. [F]", option = "C") +
  labs(title = 'Temperatures in Lincoln NE') +
  theme_ridges(font_size = 13, grid = TRUE) + 
  theme(axis.title.y = element_blank())


#### __ ● 반응형 3D 그래프 ####
library("reshape2")
library("plotly")

x = seq(from = -4 * pi, to = 4 * pi, length.out = 100)
df = expand.grid(x = x, y = x)
df$r = sqrt(df$x^2 + df$y^2)
df$z = cos(df$r^2) * exp(-df$r/6)


#### __ ● 반응형 네트워크 그래프 ####
library("networkD3")
library("d3Network")

src = c(rep("A",4), rep("B", 2), rep("C", 2), "D")
target = c("B", "C", "D", "J", "E", "F", "G", "H", "I")

#### __ ● Sankey 다이어그램 ####
library("networkD3")
library("d3Network")
library("RCurl")
URL = "https://raw.githubusercontent.com/christophergandrud/networkD3/master/JSONdata/energy.json"
Energy = getURL(URL, ssl.verifypeer = FALSE)

EngLinks = JSONtoDF(jsonStr = Energy,
                    array = "links")
EngNodes = JSONtoDF(jsonStr = Energy,
                    array = "nodes")

sankeyNetwork(Links = EngLinks,
              Nodes = EngNodes,
              Source = "source",
              Target = "target",
              Value = "value",
              NodeID = "name",
              width = 700,
              nodeWidth = 30)

#### __ ● 병합 ####
library("ggExtra")
library("ggplot2")

set.seed(1234)
df = data.frame(x = c(rnorm(500, mean = -1), rnorm(500, mean = 1.5)),
                y = c(rnorm(500, mean = -1), rnorm(500, mean = 1.7)))

p = ggplot(df, aes(x, y)) +
  geom_point()

