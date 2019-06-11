1.NMF decomposition on the video
[factor1,factor2,H] = NMF(videoname) 

2.Find end-member(ES,ED) frames using NMF results
[e1,e2]=findendmember(H)

Other function is for fast rank-2 NMF but one can also use the default NMF function.