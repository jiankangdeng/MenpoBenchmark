# MenpoBenchmark
Multi-pose 2D and 3D Face Alignment and Tracking

The face boxes and five facial landmarks within the annotation files are predicted by our face detector ([RetinaFace](https://github.com/deepinsight/insightface/tree/master/RetinaFace)), which achieves state-of-the-art performance on the WiderFace dataset. We have released this face detector, thus the face alignment algorithms can be tested from scratch under in-the-wild environment.

# 2D Face Alignment 

## Dataset Download Links

300W [dropbox](https://www.dropbox.com/s/7p4gwooqb5duijy/300W.zip?dl=0)

COFW [dropbox](https://www.dropbox.com/s/4yuzt4namj6929d/COFW.zip?dl=0)

Menpo2D [dropbox](https://www.dropbox.com/s/utojl92tvmdhiy8/Menpo2D.zip?dl=0)

MultiPIE [dropbox](https://www.dropbox.com/s/w644zx4hljk6o1h/MultiPIE.zip?dl=0)
MultiPIE-3D [dropbox](https://www.dropbox.com/sh/fs03rwy4i67pr1h/AAB2y6XGHITeWMhgs6lyB3o0a?dl=0)

XM2VTS [dropbox](https://www.dropbox.com/s/fn38m40xurwe8fx/xm2vts.zip?dl=0)

FRGC [dropbox](https://www.dropbox.com/s/xswi4l9rpnf3ipr/frgc.zip?dl=0)

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

