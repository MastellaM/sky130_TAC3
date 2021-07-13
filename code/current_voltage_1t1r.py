import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import os
def FromCSVtoAER(csv_file,thr = 1, idx = 0):
    import scipy.signal
    peaks = scipy.signal.find_peaks(csv_file[csv_file.columns[7]])
    spikes_t = csv_file.iloc[peaks[0], 5]
    spikes_v = csv_file.iloc[peaks[0], 7]
    test = np.where(spikes_v > thr)
    spikes_t_clean = np.array(spikes_t.iloc[test])
    spikes_i_clean = np.array(spikes_v.iloc[test])*0+idx
    return spikes_t_clean,spikes_i_clean



Current_PATH = os.getcwd()
FILE_PATH = os.path.dirname(os.getcwd())
DATA_PATH = os.path.join(FILE_PATH, 'data')
file_current = '1t1r_current_transdiode_vdd0v2.csv'
file_voltage = 'voltage_piezo.csv'
file_current = 'current_reference.csv'
file_voltage_ref = 'voltage_reference.csv'
file_measured = 'GTac_data.xlsx'
input_analog = pd.read_excel(os.path.join(DATA_PATH, file_measured),header = 1)
data = pd.read_csv(os.path.join(DATA_PATH, file_voltage), sep=' ')
data_ref = pd.read_csv(os.path.join(DATA_PATH, file_voltage_ref), sep=' ')
fig1,axis1 = plt.subplots(nrows = 1, ncols = 1)
axis1.semilogy(input_analog[input_analog.columns[0]],input_analog[input_analog.columns[1]],color = 'r',linewidth=5, label = 'Pressure')
axis1.set_ylabel('Resistance(Ohm)')

axis2 = axis1.twinx()
axis2.plot(time[0:new_signal[0]-1],voltage[0:new_signal[0]-1],'.',color = 'c',linewidth=5, label = 'Vg=0.3')
axis2.plot(time[new_signal[0]:new_signal[1]-1],voltage[new_signal[0]:new_signal[1]-1],'.',color = 'm',linewidth=5, label = 'Vg=0.6')
axis2.plot(time[new_signal[1]-1:],voltage[new_signal[1]-1:],'.',color = 'y',linewidth=5, label = 'Vg=0.9')
axis2.set_ylabel('Voltage(V)')
axis1.set_xlabel('Pressure(kPa)')
axis1.set_title('1T1R')

fig1.legend()
plt.show()
print('ciao')