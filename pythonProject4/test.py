from selenium import webdriver as wb
import time
import pandas as pd

driver=wb.Chrome('chromedriver')
driver.get("https://money2.daishin.com/e5/mboard/ptype_basic/HTS_Plus_Helper/DW_Basic_List_Page.aspx?boardseq=284&m=9508&p=8839&v=8642")
list1 = []
while True:
    try:
        postList = driver.find_elements_by_css_selector('#container > div.contents > div > div.newsView > div.boardListArea > table > tbody > tr > td.subject > div > a')
        time.sleep(0.3)

        for post in range(len(postList)):
            postList = driver.find_elements_by_css_selector(
                '#container > div.contents > div > div.newsView > div.boardListArea > table > tbody > tr > td.subject > div > a')
            postList[post].click()
            time.sleep(0.3)
            title = driver.find_element_by_css_selector('#container > div.contents > div > div.newsView > div.boardViewArea > p')
            t1 = title.text
            describe = driver.find_element_by_css_selector('#container > div.contents > div > div.newsView > div.boardViewArea > div.viewBox.common')
            t2 = describe.text
            data = [t1,t2]
            list1.append(data)
            time.sleep(0.3)
            driver.back()
            time.sleep(0.3)

        next = driver.find_element_by_css_selector('#ContentPlaceHolder1_uc_page_lbtn_nextPage')
        next.click()
        time.sleep(0.3)
    # finally:
    #     print('끝')
    except:
        print("다음 페이지 없음")
        df = pd.DataFrame(list1)
        df.to_csv('목록_new.csv', encoding="")
        break











