function [factor1,factor2,H] = NMF(videoname)

video = VideoReader(videoname);
h = video.Height;
w = video.Width;
N = video.NumberofFrames;
M = zeros(h*w,N);

video = VideoReader(videoname);

ii = 1;
while hasFrame(video)
    img = readFrame(video);
    img = rgb2gray(img);
    M(:,ii) = img(:);
    ii = ii+1;
end

W = rand(h*w,2);
H = rand(2,N);
[W,H,~,~] = nmfsh_comb_rank2(M,W,H);

factor1 = reshape(W(:,1),[h,w]);
factor2 = reshape(W(:,2),[h,w]);

end

