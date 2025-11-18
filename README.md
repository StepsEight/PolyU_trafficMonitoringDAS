# TrafficMoritoringDAS
### An Open-source data for traffic monitoring using distributed acoustic sensing (DAS) in metropolitan environment

This repository is the usage page of the TrafficMonitoringDAS dataset. Based on optical fiber cables in exiting telecommunication infrastructure, the phase-sensitive Optical Time-Domain Reflectometry (Phi-OTDR) technique is applied into traffic monitoring applications to achieve vehicle detection, tracking and even classification. However, these traffic monitoring studies are mainly carried out under the relatively sparse traffic environments such as rural areas, university campuses, national highways or expressways. In busy traffic environments, the vibration signals caused by dense vehicles form complex patterns, which makes it difficult to well separate the vehicle trajectories. To develop algorithms under high traffic conditions will advance the application of this technology in ensuring the safety of transportation assets in busy urban areas in the future. **In short, TrafficMonitoringDAS dataset poses a special focus on developing DAS traffic monitoring applications in busy traffic environment.**

Key words: **Distributed Acoustic Sensing**, **Traffic Monitoring**, **Busy Traffic Environmnet**

<p align="center">
  <img width="712pix" src="images/The heavy traffic in the experimental site.png">
  <figcaption align="center">
    <strong>Fig. 1 </strong>The heavy traffic in the experimental site.
  </figcaption>
</p>

**Important Notes**: 
  - **About access to DAS mat file of PolyU dataset**: The traffic monitoring data collected by DAS is provided as mat files and each file contains 5 minutes data. And the matlab file provides the code for reading data into the workspace.
  - **About access to vedio reference file PolyU dataset**: The ground truth of vehicles is recorded in a video.
  - **Algorithm validation and contribution**: Researches are welcomed to share their traffic sensor dataset by DAS, traffic monitoring source code to the TrafficMonitoringDAS dataset after a review process, e,g, code for vehicle detection or tracking, etc.

## Overview
- [Objective](#objective-of-the-dataset)
- [The traffic dataset in Hong Kong from PolyU](#the-dataset-of-the-cross-harbour-tunnel-from-polyu)
- [Acknowledgements](#acknowledgements)
- [License](#license)

## Objective of the Dataset
- Open-sourcing traffic sensor data in busy traffic environment, including the traffic dataset in Hong Kong;

- Raising the awareness of the traffic monitoring using DAS in busy traffic environment, especially in metropolitan environment;

- Providing an integrated online platform for data sharing to facilitate the development of traffic monitoring solutions of the research community; and 

- Benchmarking traffic monitoring algorithms based on the open-sourcing data.

**Contact Authors (corresponding to issues and maintenance of the currently available the Hong Kong dataset)**: [Yinghuan Li]([ying-huan.li@connect.polyu.hk]),  The Hong Kong Polytechnique University

## The traffic dataset in Hong Kong from PolyU
The shared sensor data is collected at night, which is a 1.8-kilometer two-way two-lane road. As shown in Fig. 2, the experimental optical fiber cable deployed in the trench on the right side of the road and the cable has a tube diameter of approximately 24 mm and contains over 100 co-routed fibers (some with live communication traffic). When a vehicle passes over a road, it generates the mechanical waves in the Earth’s near surface, among which Rayleigh waves concentrate their energy in the road. These waves can be effectively detected through optical fibers buried a few meters deep. Due to the traffic flow in the direction of departure is far from the optical fiber, the vibration waves caused by the vehicles experience significant attenuation. Therefore, the collected sensor data mainly represent the vibrations of the incoming vehicles, but in the low-frequency range, the signals from the opposite direction are also mixed in. In this experiment, we use a typical single-frequency optical pulses DAS with a gauge length of 3.75m and sampling interval of 1.25m to collect 15-minute strain rate data with 2kHz temporal sampling rate. We saved the sensor data from the entrance to the exit of the road as mat files. To ensure the integrity of the downloaded files, each file records traffic vibration signals for 5 minutes. The high-resolution sensing performance ensures the separability of vehicle trajectories in this high-traffic scenario, making it suitable for verifying the performance of vehicle detection and tracking algorithms. Meanwhile, we settled a camera on the overpass at the entrance of the road and save the corresponding reference recording for the verification of the performance of the subsequent algorithms. From the video footage, the types of vehicles include cars, SUVs, trucks and double-decker buses. This means that research on ML-based vehicle classification algorithms can be conducted on this dataset.

<p align="center">
  <img width="712pix" src="images/DAS traffic monitoring.png">
  <figcaption align="center">
    <strong>Fig. 2 </strong>The schematic diagram of vehicle monitoring based on DAS in the road.
  </figcaption>
</p>

## Acknowledgements
We acknowledge the help from Jingming Zhang and Jipeng Liu.

## License
For any technical issues, please contact Yinghuan Li via email ying-huan.li@connect.polyu.hk
