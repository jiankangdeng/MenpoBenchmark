# MenpoBenchmark
Multi-pose 2D and 3D Face Alignment and Tracking

The face boxes and five facial landmarks within the annotation files are predicted by our face detector ([RetinaFace](https://github.com/deepinsight/insightface/tree/master/detection/retinaface)), which achieves state-of-the-art performance on the WiderFace dataset. 
We have released this face detector, thus the face alignment algorithms can be tested from scratch under in-the-wild environment.

# 2D Face Alignment 

## Dataset Download Links

Menpo2D [Google Drive](https://drive.google.com/file/d/1CUqs0n135lye6J6RM5FQXT_DIT45dKvP/view?usp=sharing)

300W [Google Drive](https://drive.google.com/file/d/1VGT24gi5nd2TnGRLbHRtJkAGQbclkcJi/view?usp=sharing)

COFW [Google Drive](https://drive.google.com/file/d/1mNVvmDlago54JwsqpP7aLoBP85Tuz5mA/view?usp=sharing)

MultiPIE [Google Drive](https://drive.google.com/file/d/18JFjBTAZqthpORmEf2LuT14IuMYNyD_h/view?usp=sharing)

XM2VTS [Google Drive](https://drive.google.com/file/d/1qdBlQhq9YEt5lzX1OGy5_AyjFL3vWxRs/view?usp=sharing)

FRGC [Google Drive](https://drive.google.com/file/d/1T2Ux0tjd5CxI9PWZb5sXThuGvWH-oM5p/view?usp=sharing)

## Landmark Configuration 

68/39 landmarks (The landmark configurations are from MultiPIE.)
![menpo2Dconfiguration](https://github.com/jiankangdeng/MenpoBenchmark/blob/master/menpo2D_landmarks.png)

## Image Training Datasets

(1) 300W/Train (68; 3702)

(2) **Menpo2D/Train/image/semifrontal (68; 6653)**

(3) Menpo2D/Train/image/profile (39; 2290)

## Image Test Datasets

(1) 300W/Validation (68; 135)

(2) COFW (68; 507) 

(3) 300W/Test (68; 600)

(4) **Menpo2D/Test/image/semifrontal (68; 5335)**

(5) Menpo2D/Test/image/profile (39; 1946)

## Video Training Datasets

(1) 300VW

## Video Test Datasets

(1) 300VW

# 3D Face Alignment 

## Landmark Configuration

84 landmarks
![menpo3Dconfiguration](https://github.com/jiankangdeng/MenpoBenchmark/blob/master/menpo3D_landmarks.png)

## Image Training Datasets

## Image Test Datasets

## Video Training Datasets

## Video Test Datasets

# Citation

IBUG just provides the landmark annotations, but some face images are from other works. Please cite the original papers first and follow their data license.


```

@inproceedings{deng2020retinaface,
  title={Retinaface: Single-shot multi-level face localisation in the wild},
  author={Deng, Jiankang and Guo, Jia and Ververas, Evangelos and Kotsia, Irene and Zafeiriou, Stefanos},
  booktitle={Computer Vision and Pattern Recognition (CVPR)},
  year={2020}
}

@article{deng2019menpo,
  title={The menpo benchmark for multi-pose 2d and 3d facial landmark localisation and tracking},
  author={Deng, Jiankang and Roussos, Anastasios and Chrysos, Grigorios and Ververas, Evangelos and Kotsia, Irene and Shen, Jie and Zafeiriou, Stefanos},
  journal={International Journal of Computer Vision},
  volume={127},
  number={6},
  pages={599--624},
  year={2019},
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

