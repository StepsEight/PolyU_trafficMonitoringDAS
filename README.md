# TrafficMoritoringDAS
### An Open-source data for traffic monitoring using distributed acoustic sensing (DAS) in metropolitan environment

This repository is the usage page of the TrafficMonitoringDAS dataset. Based on optical fiber cables in exiting telecommunication infrastructure, the phase-sensitive Optical Time-Domain Reflectometry (Phi-OTDR) technique is applied into traffic monitoring applications to achieve vehicle detection, tracking and even classification. However, these traffic monitoring studies are mainly carried out under the relatively sparse traffic environments such as rural areas, university campuses, national highways or expressways. In busy traffic environments, the vibration signals caused by dense vehicles form complex patterns, which makes it difficult to well separate the vehicle trajectories. To develop algorithms under high traffic conditions will advance the application of this technology in ensuring the safety of transportation assets in busy urban areas in the future. **In short, TrafficMonitoringDAS dataset poses a special focus on developing DAS traffic monitoring applications in busy traffic environment.**

Key words: **Distributed Acoustic Sensing**, **Traffic Monitoring**, **Busy Traffic Environmnet**

<p align="center">
  <img width="712pix" src="images/The heavy traffic of the experimental site.png">
  <figcaption align="center">
    <strong>Fig. 1 </strong>The heavy traffic of the experimental site.
  </figcaption>
</p>

**Important Notes**: 
  - **About access to DAS mat file of PolyU dataset**: The traffic monitoring data collected by DAS is provided as mat files and each file contains 5 minutes data.
  - **About access to video reference file of PolyU dataset**: The ground truth of vehicles is recorded in a video.
  - **About access to Quick Start of PolyU dataset**: Some basic codes (dataset reading, preprocessing, block normalization algorithm) are provided in Quick Start folder.
  - **Algorithm validation and contribution**: Researches are welcomed to share their traffic sensor dataset by DAS, traffic monitoring source code to the TrafficMonitoringDAS dataset after a review process, e,g, code for vehicle detection or tracking, etc.

## 🚀 Overview
- [Objective](#-objective-of-the-dataset)
- [The traffic dataset in Hong Kong from PolyU](#-the-traffic-dataset-in-hong-kong-from-polyu)
- [Acknowledgements](#-acknowledgements)
- [Copyright](#%EF%B8%8F-copyright)

## 📑 Objective of the Dataset
- Open-sourcing traffic sensor data in busy traffic environment, including the traffic dataset in Hong Kong;

- Raising the awareness of the traffic monitoring using DAS in busy traffic environment, especially in metropolitan environment;

- Providing an integrated online platform for data sharing to facilitate the development of traffic monitoring solutions of the research community; and 

- Benchmarking traffic monitoring algorithms based on the open-sourcing data.

**Contact Authors (corresponding to issues and maintenance of the currently available the Hong Kong dataset)**: [Yinghuan Li]([ying-huan.li@connect.polyu.hk]),  The Hong Kong Polytechnique University

## 🌟 The traffic dataset in Hong Kong from PolyU
### Experimental setup
The shared sensor data is collected from a road which is a 1.86-kilometer two-way two-lane road. The optical fiber cable contains over 100 co-routed fibers (some with live communication traffic) and as shown in **Fig. 2**, the cable is deployed in the trench on one side of the road. Therefore, the collected DAS data mainly captures the vibrations induced by vehicles coming from one direction, but in the low-frequency range, the signals from the opposite direction can also be detected. In this experiment, we used a typical single-frequency optical pulses DAS with a gauge length of 3.75m and sampling interval of 1.25m to collect 15-minute strain rate data with 2kHz temporal sampling rate. The speeds of the collected vehicles are generally within the range of 50 to 60 kilometers per hour. The sensor data from are saved as mat files. To ensure the integrity of the downloaded files, each file records traffic vibration signals for 5 minutes. The high-resolution sensing performance ensures the separability of vehicle trajectories in this high-traffic scenario, making it suitable for verifying the performance of vehicle detection and tracking algorithms. In addition, a camera was set on a nearby overpass bridge, and the corresponding video footage is also available for the matching/verifications between vehicles and DAS vibration traces, which will be a good benchmark to characterize the performance of various algorithms for vehicle detection, tracking, classifications and speed estimation etc.

<p align="center">
  <img width="712pix" src="images/DAS traffic monitoring.png">
  <figcaption align="center">
    <strong>Fig. 2 </strong>The schematic diagram of vehicle monitoring based on DAS.
  </figcaption>
</p>

### Example Use Case - Signal enhancement for weak vehicle signals

In urban traffic scenarios, there are various types of vehicles. Vehicles with greater mass generate vibration signals of larger amplitude, which can easily mask the signals of smaller vehicles. As shown in **Fig. 3 (a)**, the distinct vehicle trajectories collected are caused by the double-decker buses, while the signals of the middle small vehicles are masked. To clear the weak vehicle signals, we proposed the **block normalization algorithm**.The $M \times N$ input image is partitioned into non-overlapping rectangular blocks of size $k \times l$,indexed by $i = \lfloor M/k \rfloor$ along the rows and $j = \lfloor N/l \rfloor$ along the columns. Each block is normalized independently as:

$$
B_{i,j}^{"}(m,n) = \frac{B_{i,j}^{'}(m,n) - \min(B_{i,j}^{'})}{\max(B_{i,j}^{'}) - \min(B_{i,j}^{'}) + \epsilon}
$$

where $B_{i,j}^{’}$ is the absolute value expression of each block $B_{i,j}$, $m \in [0,k-1]$ and $n \in [0,l-1]$ denote the local coordinates within the block, $\epsilon$ is a small constant for preventing division by zero.

Given that vehicle strain rate signals persist for approximately 2 seconds, the block size is reduced to [1.5s 12m] and the original signal is block-normalized as shown in **Fig. 3 (b)**, thereby avoiding the coverage of high-amplitude signals and enables the visibility of weak vehicle trajectories.

<p align="center">
  <img width="712pix" src="images/The result of the block-normalized algorithm.png">
  <figcaption align="center">
    <strong>Fig. 3 </strong>The performance of the block-normalized algorithm. (a) Original traffic waterfall. (b) The result with block size of [1.5s 12m].
  </figcaption>
</p>

### Quick Start
In order to build your algorithm more quickly on this dataset, we have provided some basic code (dataset reading, preprocessing, block normalization algorithm) in Quick Start folder to help you get started quickly.

## 🙌 Acknowledgements
We acknowledge the help from **Jingming Zhang** and **Jipeng Liu**.
If you use the open-source dataset from PolyU in your research, please cite the following paper:
<br>
> **Y. Li, J. Zhang, Y. Yan and A. P. T. Lau, “Traffic Monitoring using Optical Fiber Distributed Acoustic Sensing for Metropolitan Environments”, Journal of Lightwave Technology, pp. 1–17, 2025, doi: 10.1109/jlt.2025.3642924.**

## ©️ Copyright
This open-source dataset is owned and managed by **the Photonics Research Institute of The Hong Kong Polytechnic University**. These data are exclusively for academic research and non-commercial use. For any commercial or technical issues, please contact Yinghuan Li via email ying-huan.li@connect.polyu.hk
