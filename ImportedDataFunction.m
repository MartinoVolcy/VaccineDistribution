%Since the imported file is most likely going to be a combination of cell arrays and MATLAB is unable to manipulate cell arrays, this function turns the data into a 
%matrix so MATLAB can read and manipulate it. After using this, you just use the variable patienStats in the vaccineDistributionCode
%---------------------------------------------------------------------------------------------------------------------------------------------
function [patientStats] = importedDataFunction(File)
cellFile = readcell(File);
matrixFile = readmatrix(File);
[~,numCols,~] = size(cellFile);
for r = (5)
    for c = (1:1:numCols)                                                   %only copy and paste this
        matrixFile(r,c) = char(cellFile(r,c));                              %formats the file so matlab is able to read it
    end
end
patientStats = matrixFile;
end
%---------------------------------------------------------------------------------------------------------------------------------------
