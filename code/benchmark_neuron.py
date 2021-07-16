import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import os
Current_PATH = os.getcwd()
FILE_PATH = os.path.dirname(os.getcwd())
DATA_PATH = os.path.join(FILE_PATH, 'data')
file_name = 'power_consumption.csv'
current_vdd = pd.read_csv(os.path.join(DATA_PATH, file_name), sep=' ')


print('ciao')