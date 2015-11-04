%% Connecting to IB TWS
% Turn on TWS, enable API connections in global config

clc; clear
ib = ibtws('',7496);

%% Retrieve historical data
% Set up empty contract structure
ibContract = ib.Handle.createContract;

% Specify the contract properties.
ibContract.symbol = 'AAPL';
ibContract.secType = 'STK';
ibContract.exchange = 'SMART';
ibContract.currency = 'USD';

% Specify the period for which we need data
bizDayConvention = 13; % BUS/252
startDate = 736264; % October 28 2015, in other words we should get financial toolbox LOL
endDate = 736272; % Nov 4 2015

% Call the 'history' function and plot a candlestick chart.
histTradeData = history(ib, ibContract, startDate, endDate);

