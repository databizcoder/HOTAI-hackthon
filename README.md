# HOTAI-hackthon

## 研究目的
本研究主要針對和泰集團旗下的交通服務 — iRent 與 Yoxi，進行研究和提案，並透過分析外部資料（如：109 年民眾日常使用運具狀況調查資料）來佐證提案內容，以期提出更貼近使用者的交通服務解決方案，並達成如下目標：
  (一) 洞悉消費者於交通服務市場之需求
  (二) 透過和泰集團提供之數據，分析客戶消費行為，提出消費者與和泰集團雙贏的
       交通服務解決方案

## 資料來源
  (一) Yoxi 去識別化數據：
       此原始交易資料由和泰集團提供，一共有 312,678 筆及 15 個變數，變數包
       含行程資訊（起訖時間、上下車經緯度等）、乘客相關偏好及訂單明細（乘車
       金額、乘車小費等）。資料涵蓋期間為 2021/1/1 至 2021/6/30，共六個月。    
       
  (二) iRent 顧客租車交易資料：
       此原始交易資料由和泰集團提供，一共有 403,331 筆及 15 個變數，變數包
       含行程資訊（起訖時間、經緯度等）、客戶基本資訊（性別、居住地等）及訂
       單明細（租用車型、租用金額等）。資料涵蓋期間為 2021/1/31 至 2021/4/30 
       ，共三個月。
       
  (三) 109 年民眾日常使用運具狀況調查資料：
       此原始資料由政府資料開放平台下載，樣本來源為電話訪問所得，一共有 
         37,337 筆及 163 個變數，變數包含受訪民眾基本資訊（性別、年齡、居住地
       等）、行程資訊（時間、地點、目的等）及交通運具使用情形。資料涵蓋期間  
       為 2022 年，共一年。

## 分析結果
  (一)、RFM 模型：
      在 Yoxi 客戶乘車交易資料中，我們以 CustomerID 分組，藉由原始資料集的的變數行程開始時間轉換為以日期為單位的變量，並挑選最後一次乘車日期以此作為 Recency 值；此外，在資料集區間        內算出客戶搭乘 Yoxi 的總次數作為 Frequency 值；最終，統計各客戶的訂單總金額，作為 Monetary 值。考量到先前經業界人士建議，認為 Monetary 值是影響客群等級的最大因素，其次則為 Frequency 值，因此我們設定 RFM 模型的係數分別為 a = 0.15, b = 0.25, c= 0.60。
      
（二）、在 Yoxi 客戶乘車交易資料中，我們以 CustomerID 分組，並挑選資料集中較相關的三個變數：行駛分鐘數、乘客偏好代碼、乘車金額，作為 K-menas 演算法分群使用變數。由圖 1 可見，當 K 值為 3 時是拐點。因此，由手肘法挑選 K=3 作為分群群數。
