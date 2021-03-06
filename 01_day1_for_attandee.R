#### .=========.####
#### | [[ Day 1 ]] ####
#### .=========.####

#### 1. 데이터 과학과 R ####
#### __ [01] 데이터 과학의 개요 ####
#### _____ ● 데이터 과학이란? ####

#### _____ ● 데이터 과학의 구체적 사례 ####
# 국가별 경제 수준과 의료 수준 동향

# 주택 가격 예측

# 두 수면제의 효과 비교

# 웹사이트 개선을 위한 A/B 테스트

#### _____ ● 데이터 분석 프로세스 ####

#### _____ ● 데이터 과학자에게 필요한 역량 ####

#### __ [02] 데이터 분석 환경 구성 ####
#### _____ ● R과 RStudio 설치 ####

#### _____ ● R의 장점 ####

#### _____ ● R의 단점 ####

#### _____ ● RStudio란? ####

#### _____ ● 특징 ####

#### _____ ● RStudio 화면 구성 ####

#### _____ ● 테마 변경 ####

#### _____ ● 단축키 ####
# 실행: [Ctrl] + [Enter]
# 새 파일 열기: [Ctrl] + [o]
# 스크립트 저장: [Ctrl] + [s]
# 주석 처리: [Ctrl] + [Shift] + [c]
# 스크립트창 이동: [Ctrl] + [1]
# 콘솔창 이동: [Ctrl] + [2]
# 콘솔창 클리어: [Ctrl] + [l]
# 문서 개요 확인: [Ctrl] + [Shift] + [o]

#### _____ ● 자동완성 ####

#### _____ ● 섹션 분할 ####

#### _____ ● 데이터 확인 ####

#### _____ ● 명령어 입력 ####

#### _____ ● 명령어 실행 ####

#### _____ ● 패키지(Package) ####

#### _____ ● 패키지 설치(인터넷 O) ####

#### _____ ● 패키지 설치(인터넷 X) ####

#### _____ ● 패키지 설치(인터넷 X) Plan B ####

#### _____ ● 패키지 불러오기 ####

#### _____ ● 유용한 패키지 ####
# ▶ 데이터 조작 및 처리: dplyr, reshape2, data.table
# ▶ 그래프 등 시각화 관련: ggplot2, ggmap, ggvis, lattice, plotly
# ▶ 데이터 분석 등 기계학습 관련: CART, e1071, C50, DMwR
# ▶ 시계열 데이터 처리: lubridate, xtm
# ▶ 텍스트 처리: splitstackshape, KoNLP

#### _____ ● 재미난 패키지 ####

#### _____ ● 작업폴더(working directory) ####

#### _____ ● 작업폴더 확인과 설정 ####


#### 2. 데이터의 취득과 전처리 ####
#### __ [01] 데이터 과학 학습용 데이터 ####
#### _____ ● R Datasets ####

#### _____ ● UCI 머신러닝 데이터 저장소 ####
# https://archive.ics.uci.edu/ml/index.php

#### _____ ● Kaggle ####
# https://www.kaggle.com/

#### __ [02] 파일 읽어들이기 #### 
#### _____ ● 데이터 가져오기 실습 - 특정 구분자 ####

#### _____ ● 데이터 가져오기 실습 - csv ####

#### _____ ● 데이터 가져오기 실습 - xlsx ####

#### _____ ● 데이터 가져오기 실습 - DB ####

#### _____ ● 다양한 데이터 불러오기 ####
# read.csv() 활용 

#### _____ ● 파일 저장하기 ####

#### __ [03] R의 데이터 구조 ####
#### _____ ● 원소 속성 ####


#### _____ ● 특수 유형 ####


#### _____ ● 객체 구조 ####
# 벡터 - c()

# 행렬 - matrix()

# 데이터 프레임 - data.frame()

# 리스트 - list()

#### __ [04] R의 연산 ####
#### _____ ● 할당 연산자 ####

#### _____ ● 산술 연산자 ####

#### _____ ● 논리 연산자 ####

#### _____ ● 산술 연산자 ####

#### _____ ● 논리 연산자 ####

#### _____ ● 산술 함수 ####
# 프롬프트(>)는 제외하고 입력합니다!
# 삼각함수

# 어림하기

# 펙토리얼


#### _____ ● 수열 생성 ####
# 특수기호(:)를 사용한 숫자 생성


# seq() 함수를 사용한 숫자 생성


# rep() 함수를 사용한 숫자 생성


#### _____ ● 데이터 가져오기 - 특정 구분자 ####

#### _____ ● 상/하단 행 확인 ####
# head()

# tail()

#### _____ ● 객체 구조 및 변수별 기술통계 확인 ####
# str()

# summary()

# nrow()

# ncol()

# dim()

# colnames()


#### _____ ● 행과 열 ####


#### _____ ● `$`를 사용한 데이터 추출 ####

#### _____ ● 벡터연산을 사용한 데이터 추출 - 행 ####
# 단일 숫자

# 연속

# 이산

#### _____ ● 벡터연산을 사용한 데이터 추출 - 열 ####
# 단일 숫자

# 연속

# 이산

# 단일 문자

# 복수 문자


#### _____ ● 벡터연산을 사용한 데이터 추출 - 행열 ####
# 숫자

# 복수

#### _____ ● 벡터연산을 사용한 데이터 치환 ####
# ※ 순서대로 입력하세요.


#### _____ ● 벡터연산을 사용한 데이터 삽입 ####


# Q. column 명을 바꿔봅시다.

#### _____ ● bind 함수를 사용한 데이터 병합 ####
aaa = aws[10:13, 3:4]
bbb = aws[20:23, 3:4]

# cbind()

# rbind()


#### _____ ● 함수 정리 ####
# ▶ 각종 함수를 활용하여 주어진 자료를 요약
# ▶ str(): 객체 구조 확인
# ▶ summary(): (2차원) 객체의 변수별 기술통계량 확인
# ▶ length(): 1차원 객체의 길이 계산
# ▶ unique(): 1차원 객체의 고유 원소 추출
# ▶ quantile(): 1차원 객체의 분위수 계산
# ▶ nrow(): 2차원 객체의 row 개수 계산
# ▶ ncol(): 2차원 객체의 column 개수 계산
# ▶ table(): 객체의 고유 원소 개수 계산
# ▶ aggregate(): 조건에 따른 요약 정보 계산
# ▶ apply(): (2차원) 객체의 row 또는 column 기준 일괄 계산

#### _____ ● table() 함수를 사용한 표 만들기 ####
# install.packages("ggplot2")

#### _____ ● 함수의 활용 ####
data("airquality")


# unique()

# quantile()


#### _____ ● 문자열 처리 ####
# 데이터 준비
sample = data.frame(aa = c("abc_sdfsdf", "abc_KKdfsfsfs", "ccd"),
                    bb = 1:3,
                    stringsAsFactors = FALSE)
sample

# 문자 개수 세기

# 특정 문자 위치 확인

# 대소문자 변환

# install.packages("splitstackshape")

# 문자열 분리
# cSplit <- S 대문자 입니다.


# 문자 결합


# 특정 위치 문자 추출


#### _____ ● 정규표현식 ####
# 실습 데이터 만들기
text1 = "1234 asdfASDF  ㄱㄴㄷㄹㅏㅑㅓㅕ가나다라   .!@#"
text2 = "<a> <ab> <abc> <abcd>"
text3 = c("aaa", "bbb", "ccc", "abc")

# 활용 함수 
# ▶ gsub(): 패턴 치환
# ▶ grep(): 패턴 매칭
# ▶ grepl(): 패턴 매칭 결과를 논리값(TRUE/FALSE)으로 반환

# 숫자 치환

# 영문 치환
# __ 소문자 치환

# __ 대문자 치환

# 한글 치환
# __ 자음 치환

# __ 모음 치환

# __ 완성형 치환

# 띄어쓰기 치환

# 응용
# __ 숫자가 아닌 모든 문자 치환

# __ 영문자가 아닌 모든 문자 치환

# __ 한글이 아닌 모든 문자 치환

# __ 숫자와 영문 대문자가 아닌 모든 문자 치환

# __ 숫자 2, 3만 치환

# __ 숫자 2, 3, 4, 7, 8, 9 치환

# __ '.'의 치환

# __ 두 칸 띄어쓰기와 세 칸 띄어쓰기의 치환

# __ "asdf"와 "가나다라" 치환


# __ 1, 3 치환

# __ 1~3, 7~9 치환

# 특수문자내 문자 처리
# __ 모든 경우의 수 치환

# __ 내부 문자 1개 치환

# __ 내부 문자 2~4개 치환


# 텍스트 조건
# __ "a"를 포함하는 원소 추출

# __ "b"를 포함하는 원소 추출

# __ "b"로 시작하는 원소 추출

# __ "a"로 끝나는 원소 추출

# __ "a"또는 "b"를 포함하는 원소 추출

# grepl() 함수의 활용

# gregexpr() 함수의 이해

#### _____ ● 반복문 - for() ####
# for() 함수


# 데이터 준비
df_1 = data.frame(aa = c("a", "b", "c", "d"),
                  bb = 1:4)
df_1

# 응용


#### _____ ● 조건문 - if() ####
# if() 함수

# 데이터 준비
df_1 = data.frame(aa = c("a", "b", "c", "d"),
                  bb = 1:4)
df_1

# 응용

#### _____ ● 조건 연산자 ####
# 데이터 준비
df_1 = data.frame(aa = c("a", "b", "c", "d"),
                  bb = 1:4)

# 실습


#### _____ ● 속성 확인 ####

#### _____ ● 속성 확인 예제 - 원소 ####


#### _____ ● 속성 확인 예제 - 객체 ####


#### _____ ● 속성 변환 ####

#### _____ ● 속성 변환 예제 - 원소 ####

#### _____ ● 속성 변환 예제 - 객체 ####

#### _____ ● 속성 변환 예제 - table ####
