# NMF for Cardiac Ultrasound 
Identifying frames in a cardiac ultrasound video associated with left ventricular chamber end-systolic (ES, contraction) and end-diastolic (ED, expansion) phases of the cardiac cycle via a simple application of non-negative matrix factorization (NMF).

This Matlab package is developed for the following paper:
```
Baichuan Yuan, Sathya R Chitturi, Geoffrey Iyer, Nuoyu Li, Xiaochuan Xu, Ruohan Zhan, Rafael Llerena, Jesse T Yen, Andrea L Bertozzi, Machine Learning for Cardiac Ultrasound Time Series Data, Proc. SPIE 10137, Medical Imaging 2017. 
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
