# Telluride21_TAC3
The repository for the project "**Neuromorphic tactile circuit design**" from
Telluride Workshop 2021, under the 
"**TAC21: Neuromorphic tactile sensing for physical interaction and understanding**" Topic

## Contents

* `test_vccs`
A first stab at controlled sources in xschem/ngspice

### sensormodels

* `b_source_magic`, `piezoresistor`  
A realization of a sensor resistance function that Ella Janotte shared:
![Sensor resistance plot](./graphR.jpg)
![Sensor equation](./eqnR.jpg)
* `PressureXferFunction`  
Attempts to fit the *conductance* instead of the resistance of the piezosensor, 
based on measurement data]  
![Measurement data](./sensormodels/GTacData.png)  
Except for low pressure, transconductance equations for a MOS differential pair
[in weak inversion](./sensormodels/PressureXferFunctionWeakInv.pdf) and [in strong inversion](./sensormodels/PressureXferFunctionStrongInv.pdf) fit the data reasonably well.

### circuits

* `1t1r_nmos`
* `Wheatstone`
* `AxionHillock`
* `DPI_neuron`

### playground

* `nfet_03v3_gmtest`  
Christoph Maier's [transistor g<sub>m</sub>/I<sub>d</sub> and g<sub>m</sub>/g<sub>o</sub> characterization simulation environment](https://bitbucket.org/cmucsd/circuitikz-demo/src/master/) (work in progress)
* `ToBias`  
[Constant g<sub>m</sub> bias circuit](DoNotLitter/biasgenSlides.pdf) with a startup circuit `ToBiasStartup` and test schematic `test_Bias`
* `OgueyAebischerBias`  
A bias circuit without external resistor, based on
[CMOS Current Reference Without Resistance](https://ieeexplore.ieee.org/abstract/document/597305)
with startup circuit `ToBiasStartup` and test schematic `test_OgueyAebischerBias`
* `dividerchain`  
[Current divider chain](DoNotLitter/biasgenSlides.pdf) with `divider` stage and test schematic `test_divider`






