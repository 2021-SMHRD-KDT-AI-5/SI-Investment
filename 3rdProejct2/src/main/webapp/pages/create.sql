drop table member_table CASCADE CONSTRAINT;
drop table JONGMOK_LIST_TABLE CASCADE CONSTRAINT;
drop table SOARING_TABLE CASCADE CONSTRAINT;
drop table STOCKBEST_TABLE CASCADE CONSTRAINT;
drop table STOCKTERMS CASCADE CONSTRAINT;
drop table USERPREDICT CASCADE CONSTRAINT;
drop table VOLUME_TABLE CASCADE CONSTRAINT;

drop table member_table CASCADE CONSTRAINT;
drop table jugadata CASCADE CONSTRAINT;
drop table statdata CASCADE CONSTRAINT;
drop table snsdata CASCADE CONSTRAINT;
drop table boujongmok CASCADE CONSTRAINT;
drop table StockTerms CASCADE CONSTRAINT;
drop table custom CASCADE CONSTRAINT;

create table member_table
(name varchar2(20) NOT NULL,
email varchar2(50) NOT NULL,
pw varchar2(20) NOT NULL,
tel varchar2(20) NOT NULL,
constraint member_table_id_pk primary key(email)
);

create table jugadata
(jongmokCode varchar2(20) NOT NULL,
stockTime DATE NOT NULL,
firstPrice NUMBER(8) NOT NULL,
closePrice NUMBER(8) NOT NULL,
highPrice NUMBER(8) NOT NULL,
lowPrice NUMBER(8) NOT NULL,
kos NUMBER(8),
totalvolume NUMBER(10) NOT NULL,
personalvolume NUMBER(10) NOT NULL,
agencyvolume NUMBER(10) NOT NULL,
foreignervolume NUMBER(10) NOT NULL,
perdictrate FLOAT(10) NOT NULL,
constraint  jugadata_jongmokCode_pk primary key(jongmokCode)
);

create table statdata
(jongmokCode varchar2(50) NOT NULL,
jongmokName varchar2(100) NOT NULL,
typecode NUMBER(5) NOT NULL,
predict NUMBER(1) NOT NULL,
constraint statdata_jongmokCode_pk primary key(jongmokCode)
);

create table snsdata
(jongmokCode varchar2(50) NOT NULL,
emotion varchar2(20) NOT NULL,
platForm varchar2(30),
content varchar2(500),
constraint snsdata_jongmokCode_pk primary key(jongmokCode)
);

create table boujongmok
(email varchar2(30) NOT NULL,
jongmokName varchar2(100) NOT NULL,
bouJu number(10),
stockC_Price number(8),
purchasePrice number(8),
stockC_Date Date,
constraint boujongmok_email_fk foreign key(email) references member_table(email),
CONSTRAINT boujongmok_UN UNIQUE(email,jongmokName)
);

create table StockTerms
(term VARCHAR2(60) NOT NULL,
 commentary VARCHAR2(1000),
altrnTerm VARCHAR2(60),
 constraint StockTerms_term_pk primary key(term)
 );
 
create table custom
(email VARCHAR2(30) NOT NULL,
changeVar VARCHAR2(30),
changeContent VARCHAR2(30),
 constraint custom_email_pk primary key(email)
 );


insert into StockTerms values('코스피와 코스닥','보통 사람들이 주식한다고 했을 때 거래하는 코피와 코스닥을 소개할려고 해요.
-코스피(KOSPI): 대기업 등 *우량주가 거래되는 시장을 말해요 그리고 주식 가격을 표시한 지수를 말하기도 해요.
-코스닥(KOSDAQ): IT,바이오,엔터테인먼트 등 코스피보다 중소, 벤처기업의 주식들이 주로 거래되는 시장을 말해요.
*우량주: 타 기업에 비해 수익성,안전성,성장성 등이 좋은 기업',null);
insert into StockTerms values('매수와 매도','매수와 매도의 사전적용어는 물건을 사고 파는 것을 의미해요. 그러면 주식에서 매수와 매도의 뜻을 소개할려고 해요.
매수:주식을 사는 것을 말해요 
매도:주식을 파는 것을 말해요',null);
insert into StockTerms values('시가,종가,고가,저가 ','시가: 아침에 증권시장에서 문을 열 때의 첫 번째 거래가격을 말해요
종가: 증권시장이 문을 닫을 때의 마지막 거래가격을 맬해요.
저가: 하루 중 가장 낮게 팔린 가격을 말해요
고가: 하루 중 가장 높게 팔린 가격을 말해요
',null);
insert into StockTerms values('거래량','하루 동안 사고 팔린 주식의 양을 말해요.',null);
insert into StockTerms values('호가','주식 거래를 위해 가격을 제시하는 것을 말해요. 즉 내가 팔거나 사고 싶은 가격에 주문을 넣어두는 것이에요.',null);
insert into StockTerms values('상한가와 하한가','한국 주식은 하루에 오르고내리는 것을 플러스마이너스30%로 제한하고 있어요. 상한가,하한가에 대해 알아볼까요?
상한가: 하루 중 주가 상승폭이 30%인 가격을 말해요.
하한가: 하루 중 주가 하락폭이 30%인 가격을 말해요.',null);
insert into StockTerms values('예수금','주식 거래를 위해 증권 계좌에 입금한 투자 금액을 말해요.',null);
insert into StockTerms values('체결과 미체결','체결: 매도(주식을 파는 행위),매수(주식을 사는 행위)거래를 성립한 것을 말해요.
미체결: 말 그대로 주식 주문체결이 안되었다는 것을 말해요. 
주식에서 미체결은 크게 두가지가 있어요.
첫 번째는 매수, 매도 가격 불일치에요.
1000원에 거래되는 주식이 있을 때 위 아래로 100원의 플러스 마이너스 상한선을 가지고 900원,1100원 식으로 물량이 남아있을 때 나는 1300원으로 거래를 하고 싶어 매도 주문을 냈을 때 주가가 1300원이 되기 전에는 매도주문이 체결되지 않아요.
매수의 경우도 같아요.
700원으로 매수예약을 넣어 높아도 주가가 200원대로 내려가지 않는 이상 미체결로 남게 되요.',null);
insert into StockTerms values('보통주와 우선주','관심있는 회사의 주식을 검색해보면 회사의 이름의 주식과 회사 이름 뒤에 ‘우’가 붙어 있는 주식 두 가지를 볼 수 있는데요. ‘우’가 붙지 않는 것이 보통주, ‘우’가 붙는 것이 우선주입니다. 보통주와 우선주를 알아보아요.
보통주: 기업이 발행하는 일반적인 형태의 주식을 말해요. 의결권을 가지고 있어 주주총회를 통해, 부분적으로 경영에 참여할 수 있어요.
우선주: 의결권이 없는 대신 보통주보다 먼저 *배당을 받을 수 있는 권리가 부여된 주식을 말해요.
*배당: 기업이 일정기간 영업활동으로 벌어들인 이익금 일부 또는 전부를 주주가 가져가는 것',null);
insert into StockTerms values('시가총액','그 기업 시장에서 얼마만큼의 가치를 인정받고 있는지를 말해요.
(시가총액 = 전체 주식 수 x 주가)',null);
insert into StockTerms values('증거금','주식을 사기 위한 매수주문 시점에 약정대금(체결된 수량에 가격을 곱한 금액)의 일정 비율(증거금률)의 금액이 먼저 인출되는데요. 이를 증거금이라고 해요. 일종의 거래 보증금이라고 할 수 있어요. 증권 계좌를 개설할 때 증거금을 설정할 수 있는데요, 보통은 증거금률이 40%로 적용되어 있어요. 증거금률이 40%라는 이야기는 100만원어치 주식을 살 때 40만 원만 가지고 있으면 거래가 성사된다는 뜻이에요. 나머지 60만원은 이틀 후에 입금하면 되죠. 만약 주식을 이제 막 시작했다면 증거금률을 100%로 설정해두는 게 좋아요.',null);
insert into StockTerms values('EPS(Earning Per Share)','EPS는 주당 순이익을 말하는데요, 기업이 일정 기간 벌어들인 순이익을 말하는 것으로 매출에서 각종 비용을 뺀 것을 말해요.
EPS는 그 값이 클수록 기업의 가치가 높다고 할 수 있어요

*당기순이익:기업이 일정기간동한 얻은 모든 수익에서 지출한 모든 비용을 공제하고 순수하게 남은 이익',null);
insert into StockTerms values('ROE(Return On Equity)','자기자본이익률이라고 말해요.기업이 자기자본을 이용해서 얼만큼의 이익을 냈는지 알려주는 지표에요. 그래서 기업의 수익성을 라고 싶을 때 보는 대표적인 지표에요.
예를 들어 자본총액이 1억원인 회사가 천만원 이익을 냈다면 ROE는 10%가 되요 ',null);
insert into StockTerms values('PER(Price Earning Ratio)','주가수익비율이라고 말해요,주가가 그 기업의 1주당 수익의 몇 배가 되는지를 나타내는 지표에요.우리가 투자하고자 하는 기업이 시장에서 저평가되었는지, 고평가되었는지를 판단하는 기준이 돼요.
예를 들어 1주당 수익이 1,000원이고 현재 주가가 18,000원이라면‘ 현재 주가/1주당 순이익’공식을 대입하여 “18,000원/1000원”로 PER은 18배가 돼요. 즉 PER은 낮을수록 좋지만 경쟁사와 비교해야 해요.',null);
insert into StockTerms values('PBR','우리말로는 주가순자산비율이는 뜻이에요.주가가 그 기업의 순자산에 비해 1주당 몇배로 거래되고 있는지를 측정하는 지표에요. A기업의 총 주식이 10주인데, 2천 만원에 모두 샀어요. 그런데 회사 순자산이 4천만원이면 PBR은 0.5인 거죠. 그 만큼 사장에서 그 기업이 가치에 비해 저평가되었다는 뜻이에요.
수치가 낮으면 낮을수록 자산가치가 저평가되어 있다고 보면되요. 낮으면 낮을수록 좋다는 얘기에요.',null);
insert into StockTerms values('공모주','공모는 ‘공개 모집’의 줄임말로, 증권시장에 기업을 공개하기 이해 투자자를 모집하는 절차를 말해요. 공모주 투자는 주식시장에 상장(등록)을 준비하는 공모 주식에 투자함을 말해요. 일반 투자자는 이 주식을 받기 위해 *청약을 하고 주식을 *배정 받아요. 

*청약: 투자자가 공개된 기업의 주식을 사겠다고 신청하는 것
*배정:기업 공개 후 청약 사실에 따라 기업이 주식을 나누어 주는 것
',null);
insert into StockTerms values('이동평균선','매일 종가를 기준으로 이동평균치를 차트에 표시한 연장선으로 일정 기간의 주가 평균가격을 그어놓은 선이에요. 단기(5,20일),중기(60일), 장기(120,240일) 이동평균선으로 구분해요.',null);
insert into StockTerms values('추세선','가가 움직이는 방향을 이은 가상의 선 이에요. 즉 주가에는 일정한 흐름이 있고, 흐름을 추세라고 하고, 이것을 선으로 표시한 것을 추세선이라고 말해요',null);
insert into StockTerms values('테마주','정치적 사회적 이슈나 산업 트렌드를 따라가는 주식 종목들이에요.',null);
insert into StockTerms values('BPS','주당순자산을 말하는데요. 기업이 모든 활동을 중단하고 기업의 자산을 주주들에게 나눠줄 경우, 한 주당 얼마씩 돌아가는지 나타내는 지표에요. ',null);
insert into StockTerms values('변동성','변동성이란 말 그대로 바뀌는걸 의미해요. 주가가 일정하지 않고 10% 올랐다 10% 떨어졌다 이거를 짧은 시간에 반복한다면 변동성이 심하다고 볼 수 있겠죠? 일반적으론 대형주보다는 소형주가 변동성이 심해요.',null);
