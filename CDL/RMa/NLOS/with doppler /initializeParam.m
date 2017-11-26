function [Param] =  initializeParam(d2D,fc)

%32,66,301 at 28Ghz,  27,55,293 at 60 Ghz and 26,53,291 at >=70Ghz 
%DsShort = 32e-9;  %median LOS
%DsLong = 301e-9;  % 90 percentile Nlos

cLight = 3e8;
ueVel = 15/18;
hUT = 1.5;
hBS = 35;
DsNormal = 66e-9;
ulgZSD = 0.3;
uZSDOffset = atan((35-5)/ d2D )- atan((35-1.5)/d2D ); 

Param = struct(...
    'fc', 28e9,...
    'cLight', 3e8,...
    'ueVel', 0,...
    'maxDopShift',ueVel*fc/cLight,...
    'hUT', 1.5,...
    'hBS', 10,...
    'DsShort', 32e-9,...
    'DsNormal', 66e-9,...
    'DsLong', 301e-9,...
    'uDs', -7.43,...
    'uASD', 0.95,...
    'uASA', 1.52,...
    'uZSA', 0.88,...
    'ulgZSD', 0.3,...
    'uZSDOffset',atan((35-5)/ d2D )- atan((35-1.5)/d2D ),...
    'uZSD', ulgZSD + uZSDOffset,...
    'cASD', 2,...
    'cASA', 3,...
    'cZSD', (3/8)*10^(ulgZSD),...
    'cZSA', 3,...
    'DsDesired', DsNormal);

end 
