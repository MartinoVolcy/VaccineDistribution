%To create random test cases I wrote this script. It can be used to see if the program is 
%running properly because it uses all aspect of the program
%----------------------------------------------------------------------------------------------------------------------
largeTestCase = zeros(5,100000);
idNumber = [4637,6474,7339,8384];
phase = [1, 2, 3, 4, 5];
numVax = [0, 1, 2];
daysSince = [-1,15:1:50];
regions = ['N','C','S'];
[~,cols,~] = size(largeTestCase);
for c = (1:1:cols)
    largeTestCase(5,c) = regions(randi(numel(regions)));
    largeTestCase(2,c) = phase(randi(numel(phase)));
    largeTestCase(3,c) = numVax(randi(numel(numVax)));                                                %only copy and paste this
    largeTestCase(4,c) = daysSince(randi(numel(daysSince)));
    largeTestCase(1,c) = idNumber(randi(numel(idNumber)));
    if largeTestCase(3,c) == 0
        largeTestCase(4,c) = -1;
    elseif largeTestCase(4,c) == -1
        largeTestCase(3,c) = 0;
    end
end
%-------------------------------------------------------------------------------------------------------------------------

