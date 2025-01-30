function r=plotmap(varargin)
%r=plotmap(linewidth)
if length(varargin)==1
    lw=varargin{1};
else
    lw=0.5;
end
load('m_coasts.mat');ind=find(ncst(:,1)<0);ncst(ind,1)=ncst(ind,1)+360;ind=find(ncst(:,1)>359);ncst(ind,1)=NaN;
hold on;plot(ncst(:,1),ncst(:,2),'k','linewidth',lw);
plot(ncst(:,1)-360,ncst(:,2),'k','linewidth',lw);
plot(ncst(:,1)+360,ncst(:,2),'k','linewidth',lw);
