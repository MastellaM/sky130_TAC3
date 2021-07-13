import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import os
def FromCSVtoAER(csv_file,thr = 1, idx = 0, columns=[5,7]):
    import scipy.signal
    peaks = scipy.signal.find_peaks(csv_file[csv_file.columns[columns[1]]])
    spikes_t = csv_file.iloc[peaks[0], columns[0]]
    spikes_v = csv_file.iloc[peaks[0], columns[1]]
    test = np.where(spikes_v > thr)
    spikes_t_clean = np.array(spikes_t.iloc[test])
    spikes_i_clean = np.array(spikes_v.iloc[test])*0+idx
    return spikes_t_clean,spikes_i_clean



Current_PATH = os.getcwd()
FILE_PATH = os.path.dirname(os.getcwd())
DATA_PATH = os.path.join(FILE_PATH, 'data')
file_spikes = 'spikes_DPI.csv'
file_pressure = 'pressure_in.csv'
spikes = pd.read_csv(os.path.join(DATA_PATH, file_spikes), sep=' ', nrows=50000)
pressure = pd.read_csv(os.path.join(DATA_PATH, file_pressure), sep=' ')
pressure_value = [0,10,20,30,40]
fig1,axis1 = plt.subplots(nrows=1,ncols = 1)
axis2 = axis1.twinx()
fig3,axis3 = plt.subplots(nrows=1,ncols = 1)
colors = plt.cm.jet(np.linspace(0,1,5))
isi_mean = []
for i in range(5):
    axis3.plot(spikes[spikes.columns[5+4*i]],spikes[spikes.columns[7+4*i]]+1.5*i)
    spikes_t,spikes_i = FromCSVtoAER(spikes, columns = [5+4*i,7+4*i])
    # plt.plot(spikes_t,spikes_i+i,'.')
    isi = np.diff(spikes_t+5*i)

    isi_plausible_ix =isi>1e-3
    isi_plausible = isi[isi_plausible_ix]
    isi_mean.append(np.mean(isi_plausible))
    if i == 4:
        axis1.plot(spikes_t[:-1][isi_plausible_ix] + 5 * i, 1 / isi_plausible, linewidth=2, color='r', label = 'Inst. Rate')
        axis1.plot(spikes_t[:-1][isi_plausible_ix] + 5 * i, 1 / isi_plausible, 'o', color='r')

        axis2.plot([5 * (i), 5 * (1 + i)], [pressure_value[i], pressure_value[i]], '--', linewidth=5, color='b', label = 'Pressure')
    else:
        axis1.plot(spikes_t[:-1][isi_plausible_ix] + 5 * i, 1 / isi_plausible, linewidth=2, color='r')
        axis1.plot(spikes_t[:-1][isi_plausible_ix] + 5 * i, 1 / isi_plausible, 'o', color='r')

        axis2.plot([5 * (i), 5 * (1 + i)], [pressure_value[i], pressure_value[i]], '--', linewidth=5, color='b')
plt.figure()
plt.plot(pressure_value,1/np.array(isi_mean))
fig1.legend()
axis1.set_ylabel('Inst Rate (Hz)')
axis2.set_ylabel('Pressure (kPa)')
axis1.set_xlabel('Time (s)')
axis1.set_title('Interspike interval vs Pressure')
plt.show()

plt.figure()
plt.plot(pressure[pressure.columns[5]],pressure[pressure.columns[7]])
plt.figure()
plt.plot(spikes_t,spikes_i,'.')
print('ciao')