import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import numpy as np

from sklearn.preprocessing import MinMaxScaler

from sklearn.model_selection import train_test_split

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense
from tensorflow.keras.callbacks import EarlyStopping, ModelCheckpoint
from tensorflow.keras.layers import LSTM

def jonkmokPredict(jonkmokname):
    df_price = pd.read_csv('../pyth onProject4/주가 데이터 5년_학습용/ARIRANG 200선물레버리지_수정주가.csv', encoding='euc-kr', index_col = 0)
    df_price['날짜'] = pd.to_datetime(df_price['날짜'], format='%Y%m%d')
    df_price['연도'] =df_price['날짜'].dt.year
    df_price['월'] =df_price['날짜'].dt.month
    df_price['일'] =df_price['날짜'].dt.day
    # print(df_price.describe())
    # print(df_price.head())

    df = df_price.loc[df_price['연도']>=1990]

    # plt.figure(figsize=(16, 9))
    # sns.lineplot(y=df['종가'], x=df['날짜'])
    # plt.xlabel('time')
    # plt.ylabel('price')
    # plt.show()

    scaler = MinMaxScaler()
    scale_cols = ['시가', '고가', '저가', '종가', '거래량']
    df_scaled = scaler.fit_transform(df[scale_cols])

    df_scaled = pd.DataFrame(df_scaled)
    df_scaled.columns = scale_cols

    # print(df_scaled)

    TEST_SIZE = 200

    train = df_scaled[:-TEST_SIZE]
    test = df_scaled[-TEST_SIZE:]

    def make_dataset(data, label, window_size=30):
        feature_list = []
        label_list = []
        for i in range(len(data) - window_size):
            feature_list.append(np.array(data.iloc[i:i+window_size]))
            label_list.append(np.array(label.iloc[i+window_size]))
        return np.array(feature_list), np.array(label_list)

    feature_cols = ['시가', '고가', '저가', '거래량']
    label_cols = ['종가']

    train_feature = train[feature_cols]
    train_label = train[label_cols]

    test_feature = test[feature_cols]
    test_label = test[label_cols]

    # train dataset
    train_feature, train_label = make_dataset(train_feature, train_label, 20)

    # train, validation set 생성

    x_train, x_valid, y_train, y_valid = train_test_split(train_feature, train_label, test_size=0.2)

    x_train.shape, x_valid.shape
    # ((6086, 20, 4), (1522, 20, 4))

    # test dataset (실제 예측 해볼 데이터)
    test_feature, test_label = make_dataset(test_feature, test_label, 20)
    test_feature.shape, test_label.shape
    # ((180, 20, 4), (180, 1))

    model = Sequential()
    model.add(LSTM(16,
                   input_shape=(train_feature.shape[1], train_feature.shape[2]),
                   activation='relu',
                   return_sequences=False)
              )
    model.add(Dense(1))

    model.compile(loss='mean_squared_error', optimizer='adam')
    early_stop = EarlyStopping(monitor='val_loss', patience=5)
    filename = '{}_checkpoint.h5'.format(jonkmokname)
    checkpoint = ModelCheckpoint(filename, monitor='val_loss', verbose=1, save_best_only=True, mode='auto')

    history = model.fit(x_train, y_train,
                        epochs=200,
                        batch_size=16,
                        validation_data=(x_valid, y_valid),
                        callbacks=[early_stop, checkpoint])

    model.load_weights(filename)

    # 예측
    pred = model.predict(test_feature)

    # plt.figure(figsize=(12, 9))
    # plt.plot(test_label, label='actual')
    # plt.plot(pred, label='prediction')
    # plt.legend()
    # plt.show()

    return filename, pred[-1]
