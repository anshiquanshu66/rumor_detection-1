import pandas as pd


exa = pd.read_csv('train.csv')

exa = exa[['label']]
print("label", exa['label'].value_counts())


exa = pd.read_csv('dev.csv')

exa = exa[['label']]
print("label", exa['label'].value_counts())