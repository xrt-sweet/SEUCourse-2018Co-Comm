 function outputA = Method_TLI(inputA,k1,k2,K)
% % ����ȶ���
% Es = 1;
% SNRdB = 4:2:14;
% EsN0dB = SNRdB - 10*log10(nTx);
% % EsN0dB = SNRdB - 10*log10(nTx);
% %Eb = Es/k;
% %EbN0dB = EsN0dB - 10*log10(k);
% %EbN0 = 10.^(EbN0dB/10);
% EsN0 = 10.^(EsN0dB/10);
% N0 = Es./EsN0;
% cH =  newchennel(256,64,0.2,0,0,1);
% cG = cH'*cH;
% cW = cG + eye(64)*N0(4);
% inputA=cW;
% k1=8;
% k2=10;
% K=2;
% % bl=1;

%˫�����

dimA=size(inputA);
dimD1bl=dimA(1,1)/K;%��һ������Ӿ���ά��

% %��С�ֿ���������Ĵ洢
% bln=dimA(1,1)/bl;%��С�ֿ������Ŀ
% D2bl=cell(1,bln);%�洢��С�ֿ����
% for i=1:bln
%     D2bl{1,i}=inputA(bl*(i-1)+1:bl*i,bl*(i-1)+1:bl*i);%����ֵ
% end
% D2blinv=cell(1,bln);%�洢��С�ֿ����������
% for i=1:bln
%     D2blinv{1,i}=D2bl{1,i}^(-1);%bl�׾�������
% end

D3=cell(1,K);
for i=1:K
    D3{1,i}=inputA((i-1)*dimD1bl+1:i*dimD1bl,(i-1)*dimD1bl+1:i*dimD1bl);
end

% D3bl=cell(1,K);
% for i=1:K
%     D3bl{1,i}=blkdiag(D2bl{1,(i-1)*bln/K+1:i*bln/K});
% end
% 
% D3blinv=cell(1,K);
% for i=1:K
%     D3blinv{1,i}=blkdiag(D2blinv{1,(i-1)*bln/K+1:i*bln/K});
% end

D3inv=cell(1,K);
for i=1:K
    D3inv{1,i}=zeros(dimD1bl);
end
%�ڶ������
for i=1:K
    D3inv{1,i}=Method_Neumann(D3{1,i},k2);
%     for ia1=0:k2-1
%         D3inv{1,i}=D3inv{1,i}+(-D3blinv{1,i}*(D3{1,i}-D3bl{1,i}))^(ia1)*D3blinv{1,i};
%     end
end

D1=inputA;
D1bl=blkdiag(D3{1,1:K});
D1blinv=blkdiag(D3inv{1,1:K});
D1inv=zeros(dimA);
%��һ�����
for ia1=0:k1-1
    D1inv=D1inv+(-D1blinv*(D1-D1bl))^(ia1)*D1blinv;
end

outputA=D1inv;