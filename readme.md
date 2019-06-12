# NMF for Cardiac Ultrasound 
Identifying frames in a cardiac ultrasound video associated with left ventricular chamber end-systolic (ES, contraction) and end-diastolic (ED, expansion) phases of the cardiac cycle via a simple application of non-negative matrix factorization (NMF).

This Matlab package is developed for the following paper:
```
@inproceedings{yuan2017machine,
  title={Machine learning for cardiac ultrasound time series data},
  author={Yuan, Baichuan and Chitturi, Sathya R and Iyer, Geoffrey and Li, Nuoyu and Xu, Xiaochuan and Zhan, Ruohan and Llerena, Rafael and Yen, Jesse T and Bertozzi, Andrea L},
  booktitle={Medical Imaging 2017: Biomedical Applications in Molecular, Structural, and Functional Imaging},
  volume={10137},
  pages={101372D},
  year={2017},
  organization={International Society for Optics and Photonics}
}
```

## Usage
1. NMF decomposition on the video as as a linear combination of two end-members: ES and ED.

```
[end1,end2,H] = NMF(videoname) 
```
2. Find end-member(ES,ED) frames using NMF results.

```
[e1,e2]=findendmember(H)
```

Other function is for fast rank-2 NMF but one can also use the default NMF function in MatLab.
