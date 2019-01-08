# MenpoBenchmark
Multi-pose 2D and 3D Face Alignment and Tracking

# 2D Face Alignment

## Landmark Configuration

68/39 landmarks
![menpo2Dconfiguration](https://github.com/jiankangdeng/MenpoBenchmark/blob/master/menpo2D_landmarks.png)

## Image Training Datasets

(1) 300W (68, 3148)

(2) **Menpo2D-Train-Semifrontal (68, 5658)**

(3) Menpo2D-Train-Profile (39, 1906)

## Image Test Datasets

(1) 300W-Challenge* (68, 135) 

(2) 300W-Common (68, 554)

(3) 300W-Indoor+Outdoor* (68, 600）

(4) COFW* (68, 507) 

(5) **Menpo2D-Test-Semifrontal* (68, 5335)**

(6) Menpo2D-Test-Profile (39, 5335)

## Video Training Datasets

(1) 300VW

## Video Test Datasets

(1) 300VW

# 3D Face Alignment 

## Landmark Configuration

84 landmarks
![menpo3Dconfiguration](https://github.com/jiankangdeng/MenpoBenchmark/blob/master/menpo3D_landmarks.png)

## Training Datasets

## Image Test Datasets

## Video Test Datasets

# Citation

```
@article{deng2018menpo,
  title={The Menpo benchmark for multi-pose 2D and 3D facial landmark localisation and tracking},
  author={Deng, Jiankang and Roussos, Anastasios and Chrysos, Grigorios and Ververas, Evangelos and Kotsia, Irene and Shen, Jie and Zafeiriou, Stefanos},
  journal={International Journal of Computer Vision},
  pages={1--26},
  year={2018},
  publisher={Springer}
}

@inproceedings{zafeiriou2017menpo2d,
  title={The menpo facial landmark localisation challenge: A step towards the solution},
  author={Zafeiriou, Stefanos and Trigeorgis, George and Chrysos, Grigorios and Deng, Jiankang and Shen, Jie},
  booktitle={Computer Vision and Pattern Recognition (CVPR) Workshops},
  year={2017}
}

@inproceedings{zafeiriou2017menpo3d,
  title={The 3d menpo facial landmark tracking challenge},
  author={Zafeiriou, Stefanos and Chrysos, Grigorios and Roussos, Anastasios and Ververas, Evangelos and Deng, Jiankang and Trigeorgis, George},
  booktitle={International Conference on Computer Vision (ICCV) Workshops},
  year={2017}
}

```

