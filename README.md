# ticcs

A docker-image to compile CodeComposer Projects.

## HowTo start with the image

```
# import to workspace
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.location FOLDER_WITH_CCS_PROJECT
# compile all imported projects
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectBuild -ccs.workspace     

# Project variables may still have to be adjusted during the import
eclipse -noSplash -data ~/ccs-workspace -application com.ti.ccstudio.apps.projectImport -ccs.definePathVariable VARIABLE_NAME VARIABLE_VALUE -ccs.location FOLDER_WITH_CCS_PROJECT
```


## Suported Processors

| Product family    | Description                                                           | latest | all |
|-------------------|-----------------------------------------------------------------------|--------|-----|
| PF_MSP430         | MSP430 ultra-low power MCUs                                           |        |  x  |
| PF_MSP432         | SimpleLink™ MSP432™ low power + performance MCUs                      |        | x   |
| PF_CC2X           | SimpleLink™ CC13xx and CC26xx Wireless MCUs                           |        | x   |
| PF_CC3X           | SimpleLink™ Wi-Fi® CC32xx Wireless MCUs                               |        | x   |
| PF_CC2538         | CC2538 IEEE 802.15.4 Wireless MCUs                                    |        | x   |
| PF_C28            | C2000 real-time MCUs                                                  | x      | x   |
| PF_TM4C           | TM4C12x ARM® Cortex®-M4F core-based MCUs                              | x      | x   |
| PF_PGA            | PGA Sensor Signal Conditioners                                        |        | x   |
| PF_HERCULES       | Hercules™ Safety MCUs                                                 |        | x   |
| PF_SITARA         | Sitara™ AMx Processors                                                |        | x   |
| PF_OMAPL          | OMAP-L1x DSP + ARM9® Processor                                        |        | x   |
| PF_DAVINCI        | DaVinci (DM) Video Processors                                         |        | x   |
| PF_OMAP           | OMAP Processors                                                       |        | x   |
| PF_TDA_DRA        | TDAx Driver Assistance SoCs & Jacinto DRAx Infotainment SoCs          |        | x   |
| PF_C55            | C55x ultra-low-power DSP                                              |        | x   |
| PF_C6000SC        | C6000 Power-Optimized DSP                                             |        | x   |
| PF_C66AK_KEYSTONE | 66AK2x multicore DSP + ARM® Processors & C66x KeyStone™ multicore DSP |        | x   |
| PF_MMWAVE         | mmWave Sensors                                                        |        | x   |
| PF_C64MC          | C64x multicore DSP                                                    |        | x   |
| PF_DIGITAL_POWER  | UCD Digital Power Controllers                                         |        | x   |


## References

[CCS10 Linux informations](https://software-dl.ti.com/ccs/esd/documents/ccsv10_linux_host_support.html)
[CCS cli installer](https://software-dl.ti.com/ccs/esd/documents/ccs_installer-cli.html)
