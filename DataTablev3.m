n = 50;
r = rand(n,1);
plot(r)

groupedd = grpstats(A,'campaignid')
load('hospital')
Data =[x3,campaignid]

A = [1 2;3 4; nan 5];
A(~any(isnan(A),2),:)
load('fisheriris')
ds = mat2dataset(meas);
X = meas;

data
ds = dataset(X);
A = dataset('xlsfile','analyst_sample_data (1).xlsx')

% Creating dataset and Using Groupby % Reading from Excel
% Undertanding the two methods and the different - one create matrix and
% other dataset

dataxlsread = xlsread('analyst_sample_datav2.xlsx')
A = dataset('xlsfile','analyst_sample_datav2.xlsx');

% Play with time
A(:,10)
A.startdate
%A.startdate = datetime(A.startdate,'ConvertFrom','excel1904');
%n = datenum(A.startdate, 'dd-mmm-yyyy')

% this worked as we are not tampering with Table
% Had to google around and with some intuition found the solution

try
   newdate = datenum(datestr(A.startdate, 'dd-mmm-yyyy'));
catch exception
   display('something bad happened')
end


for n = 1:66410
  try
    newdate(n) = datenum(datestr(A.startdate(n), 'dd-mmm-yyyy HH:MM:SS')); 
  catch exception
      n
end

newdate = datenum(datestr(A.startdate, 'dd-mmm-yyyy HH:MM:SS'))
x= A.startdate
y= datestr(x, 'dd-mmm-yyyy HH:MM:SS')

y= date(x, 'dd-mmm-yyyy HH:MM:SS')
length(x)

%A.startdate() %A.startdate(1) %format compact %summary(A)
% Skipping for loop because i have more faster way to do the same using
% colum operations
dataxlsread(isnan(dataxlsread))=0;
dataxlsread(:,11) = dataxlsread(:,11).*(dataxlsread(:,11)<10);

% Create Data table from a Matrix - 
% The advantage of matrix - you can matrix operations flipping -
% transpose
datatable = dataset({dataxlsread(:,1),'id'},{dataxlsread(:,11),'campaignid'});

grpdata = grpstats(datatable,'campaignid')

diff_t_e= A.tippingpoint - A.endcost

datatabletpe = dataset({diff_t_e,'diff_t_e'},{dataxlsread(:,11),'campaignid'});
%Taking Difference of Columns

datatable = dataset({dataxlsread(:,1),'id'},{dataxlsread(:,11),'campaignid'});

grpdatatpe = grpstats(datatabletpe,'campaignid')

diff= um(:,6) - um(:,5)
