import pandas as pd

f1 = pd.read_csv('task2_en_test_participant.tsv', sep='\t')
# f2 = pd.read_csv('dev.tsv', sep='\t')
# file = [f1,f2]
# train = pd.concat(file)
f1.to_csv("test" + ".csv", index=0)
