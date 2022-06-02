function [distributionPlan,numReceivers,remainingVaccines,remainingEligiblePatients,northPercentage,centralPercentage,southPercentage] = VaccineDistribution(patientStats, numVaccines)
%--------------------------------------------------------------------------------------------------------------------------------------------------
[~, patientStatsCols] = size (patientStats);
secondLvlPatientStats = patientStats;
distributionPlan = zeros(3,patientStatsCols);                                     %Pre allocating
eligiblePatients = 0;
receiverPosition = 1;
%---------------------------------------------------------------------------------------------------------------------------------------------------     
    for r = (4)
        for c = (1:1:patientStatsCols)
            if (patientStats(r,c) >= 0 && patientStats(r,c) < 21 )
                secondLvlPatientStats(:,c) = 'x';                          %this section finds the last time a patient recieved a shot                                                                          %and determines if they are eligible for one at the moment
            elseif patientStats(r,c) > 21 || patientStats(r,c) == -1
                secondLvlPatientStats(r,c) = patientStats(r,c);
            end
        end
    end
 %----------------------------------------------------------------------------------------------------------------------------------------------------
                for r = (3)
                    for c = (1:1:patientStatsCols)                        
                        if (patientStats(r,c) == 2)
                             secondLvlPatientStats(:,c) = 'x';             %this section determines if the patient recieved less than 2 shots                                                                            %and determines if they are eligible for one at the moment
                        end           
                    end
                end
%--------------------------------------------------------------------------------------------------------------------------------------------------------                    
for r = (1)
    for c = (1:1:patientStatsCols)
        if secondLvlPatientStats(r,c) ~= 'x'
            eligiblePatients = eligiblePatients + 1;                        %finds the number of eligible patients
        end
    end
end
%--------------------------------------------------------------------------------------------------------------------------------------------------------
numReceivers = 0;
dose = 0;
phase = 1;
        while numVaccines > 0
            if eligiblePatients == 0
                break
            end
            for r = (2)
                for c = (1:1:patientStatsCols)                    
                    if secondLvlPatientStats(r,c) == phase && secondLvlPatientStats(r+1,c) == dose && numVaccines > 0
                        numVaccines = numVaccines - 1;
                        distributionPlan(r,c) = secondLvlPatientStats(1,c);
                        distributionPlan(1,c) = receiverPosition;
                        receiverPosition = receiverPosition + 1;
                        distributionPlan(3,c) = secondLvlPatientStats(5,c);
                        eligiblePatients = eligiblePatients - 1;
                        numReceivers = numReceivers + 1;
                        secondLvlPatientStats(:,c) = 'x';
                    end                      
                    if dose == 1 && c == patientStatsCols && numVaccines > 0              %this section creates the distribution plan
                        phase = phase +1;
                        dose = 0;
                    elseif dose == 0 && c == patientStatsCols && numVaccines > 0
                        dose = dose + 1;
                    end
               end
           end  
        end 
remainingVaccines = numVaccines;
remainingEligiblePatients = secondLvlPatientStats;
%------------------------------------------------------------------------------------------------------------------------------------------------------------------                     
newJersey = uint8(zeros(95,170,3));
[numRows,numCols,~] = size(newJersey);
for i = (1:3)
    newJersey(1,50,i) = 255;
    newJersey(1,49,i) = 255;                %Top Line
    newJersey(1,48,i) = 255;
end
for r = (1)
    for c = (50)
        for i = (1:1:15)
            newJersey(r+i,c+i,1) = 255;
            newJersey(r+i,c+i,2) = 255;
            newJersey(r+i,c+i,3) = 255;
        end
    end
end                                             %layers of 1
for r = (2)                                     %negative Slope
    for c = (50)
        for i = (1:1:15)
            newJersey(r+i,c+i,1) = 255;
            newJersey(r+i,c+i,2) = 255;
            newJersey(r+i,c+i,3) = 255;
        end
    end
end
for r = (16:1:30)
    for c = (66)
        newJersey(r+1,c,1) = 255;
        newJersey(r+1,c,2) = 255;             %layer of 2
        newJersey(r+1,c,3) = 255;             %vertical Line
    end
end
for r = (31)
    for c = (66)
        for i = (1:1:5)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 3
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (30)
    for c = (66)
        for i = (1:1:5)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 3
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (36:1:39)
    for c = (60)
        newJersey(r+1,c,1) = 255;
        newJersey(r+1,c,2) = 255;             %layer of 4
        newJersey(r+1,c,3) = 255;             %vertical Line
    end
end
for r = (40)
    for c = (60)
        for i = (1:1:5)
            newJersey(r+i,c+i,1) = 255;
            newJersey(r+i,c+i,2) = 255;
            newJersey(r+i,c+i,3) = 255;
        end
    end
end                                             %layers of 5
for r = (40)                                     %negative Slope
    for c = (60)
        for i = (1:1:5)
            newJersey(r+i,c+i,1) = 255;
            newJersey(r+i,c+i,2) = 255;
            newJersey(r+i,c+i,3) = 255;
        end
    end
end
for r = (44:1:64)
    for c = (66)
        newJersey(r+1,c,1) = 255;
        newJersey(r+1,c,2) = 255;             %layer of 6
        newJersey(r+1,c,3) = 255;             %vertical Line
    end
end
for r = (64)
    for c = (66)
        for i = (1:1:13)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 7
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (63)
    for c = (66)
        for i = (1:1:14)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 7
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (77)
    for c = (54)
        for i = (1:1:3)
            newJersey(r,c-i,1) = 255;
            newJersey(r,c-i,2) = 255;      %layer of 8
            newJersey(r,c-i,3) = 255;      %Horizontal Line
        end
    end
end
for r = (76)
    for c = (51)
        for i = (1:1:4)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 9
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (76)
    for c = (52)
        for i = (1:1:5)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 9
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (81)
    for c = (47)
        for i = (1:1:9)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 10
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (81)
    for c = (48)
        for i = (1:1:10)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 10
            newJersey(r+i,c-i,3) = 255;      %positive slope                                      %New Jersey Map
        end
    end
end
for r = (91)
    for c = (38)
        for i = (1:1:5)
            newJersey(r,c-i,1) = 255;
            newJersey(r,c-i,2) = 255;      %layer of 11
            newJersey(r,c-i,3) = 255;      %Horizontal Line
        end
    end
end 
for r = (82)
    for c = (40)
        for i = (1:1:8)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 12
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (82)
    for c = (41)
        for i = (1:1:9)
            newJersey(r+i,c-i,1) = 255;
            newJersey(r+i,c-i,2) = 255;      %layer of 12
            newJersey(r+i,c-i,3) = 255;      %positive slope
        end
    end
end
for r = (82)
    for c = (40)
        for i = (1:1:6)
            newJersey(r,c-i,1) = 255;
            newJersey(r,c-i,2) = 255;      %layer of 13
            newJersey(r,c-i,3) = 255;      %Horizontal Line
        end
    end
end 
for r = (82)
    for c = (34)
        for i = (1:1:7)
            newJersey(r-i,c-i,1) = 255;
            newJersey(r-i,c-i,2) = 255;         %layers of 14
            newJersey(r-i,c-i,3) = 255;          %negative Slope
        end
    end
end                                            
for r = (82)                                     
    for c = (35)
        for i = (1:1:8)
            newJersey(r-i,c-i,1) = 255;
            newJersey(r-i,c-i,2) = 255;         %layers of 14
            newJersey(r-i,c-i,3) = 255;          %negative Slope
        end
    end
end
for r = (67:1:74)
    for c = (27)
        newJersey(r-1,c,1) = 255;
        newJersey(r-1,c,2) = 255;             %layer of 15
        newJersey(r-1,c,3) = 255;             %vertical Line
    end
end
for r = (66)
    for c = (27)
        for i = (1:1:19)
            newJersey(r-i,c+i,1) = 255;
            newJersey(r-i,c+i,2) = 255;      %layer of 16
            newJersey(r-i,c+i,3) = 255;      %positive slope
        end
    end
end
for r = (66)
    for c = (28)
        for i = (1:1:19)
            newJersey(r-i,c+i,1) = 255;
            newJersey(r-i,c+i,2) = 255;      %layer of 16
            newJersey(r-i,c+i,3) = 255;      %positive slope
        end
    end
end
for r = (67)
    for c = (28)
        for i = (1:1:20)
            newJersey(r-i,c+i,1) = 255;
            newJersey(r-i,c+i,2) = 255;      %layer of 16
            newJersey(r-i,c+i,3) = 255;      %positive slope
        end
    end
end
for r = (47)
    for c = (45)
        for i = (1:1:8)
            newJersey(r,c+i,1) = 255;
            newJersey(r,c+i,2) = 255;      %layer of 17
            newJersey(r,c+i,3) = 255;      %Horizontal Line
        end
    end
end 
for r = (47)
    for c = (53)
        for i = (1:1:19)
            newJersey(r-i,c-i,1) = 255;
            newJersey(r-i,c-i,2) = 255;         %layers of 18
            newJersey(r-i,c-i,3) = 255;          %negative Slope
        end
    end
end                                            
for r = (47)                                     
    for c = (54)
        for i = (1:1:20)
            newJersey(r-i,c-i,1) = 255;
            newJersey(r-i,c-i,2) = 255;         %layers of 18
            newJersey(r-i,c-i,3) = 255;          %negative Slope
        end
    end
end
for r = (15:1:30)
    for c = (34)
        newJersey(r-1,c,1) = 255;
        newJersey(r-1,c,2) = 255;             %layer of 19
        newJersey(r-1,c,3) = 255;             %vertical Line
    end
end
for r = (14)
    for c = (33)
        for i = (1:1:12)
            newJersey(r-i,c+i,1) = 255;
            newJersey(r-i,c+i,2) = 255;      %layer of 20
            newJersey(r-i,c+i,3) = 255;      %positive slope
        end
    end
end
for r = (14)
    for c = (34)
        for i = (1:1:13)
            newJersey(r-i,c+i,1) = 255;
            newJersey(r-i,c+i,2) = 255;      %layer of 20
            newJersey(r-i,c+i,3) = 255;      %positive slope
        end
    end
end
%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
for r = (1:1:numRows)
    for c = (1:1:53)
        if newJersey(r,c,1) == 0 
            newJersey(r,c,1) = 131;                                                   
            newJersey(r,c,2) = 131;
            newJersey(r,c,3) = 131;   
        else  
            break                            
        end 
    end                                             %Gray Layer
end
for r = (1:1:numRows)
    for c = (numCols:-1:39)
        if newJersey(r,c,1) == 0
            newJersey(r,c,1) = 131;
            newJersey(r,c,2) = 131;
            newJersey(r,c,3) = 131;
        else
            break 
        end
    end
end
%---------------------------------------------------------------------------------------------------------------------------------------------------------------------
ml = imread('VaccineDistributionMapLegend.jpg');
mapLegend = imresize(ml,0.49);
newJersey(25:81,101:154,1) = mapLegend(5:61,1:54,1);
newJersey(25:81,101:154,2) = mapLegend(5:61,1:54,2);                        %Map Legend
newJersey(25:81,101:154,3) = mapLegend(5:61,1:54,3);
%---------------------------------------------------------------------------------------------------------------------------------------------------------------------
northCounter = 0;
centralCounter = 0;
southCounter = 0;
for r = (3)
    for c = (1:1:patientStatsCols)
        if distributionPlan(r,c) == 'N'
            northCounter = northCounter + 1;
        elseif distributionPlan(r,c) == 'C'
            centralCounter = centralCounter + 1;                            %This section checks where the receivers are from
        elseif distributionPlan(r,c) == 'S'                                        %and keeps count                             
            southCounter = southCounter + 1;
        end
    end
end
%-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
northPercentage = (northCounter/numReceivers)*100;
centralPercentage = (centralCounter/numReceivers)*100;                      %This section calculates the percentage of where people are from
southPercentage = (southCounter/numReceivers)*100;
percentageArray = [northPercentage,centralPercentage,southPercentage];
sortedPercentageArray = sort(percentageArray,'descend');
%-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if northPercentage == sortedPercentageArray(1)
    for r = (1:1:30)
        for c = (34:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 1;
                newJersey(r,c,2) = 50; %everything north = Dark Green
                newJersey(r,c,3) = 32;
            end
        end
    end
elseif northPercentage == sortedPercentageArray(2)
    for r = (1:1:30)
        for c = (34:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 3;
                newJersey(r,c,2) = 125; %everything north = Medium Green
                newJersey(r,c,3) = 80;
            end
        end
    end
elseif northPercentage == sortedPercentageArray(3)
    for r = (1:1:30)
        for c = (34:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 5;
                newJersey(r,c,2) = 200; %everything north = Light Green
                newJersey(r,c,3) = 128;
            end
        end
    end
end
if centralPercentage == sortedPercentageArray(1)
    for r = (31:1:47)
        for c = (34:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 1;
                newJersey(r,c,2) = 50; %everything north = Dark Green
                newJersey(r,c,3) = 32;
            end
        end
    end
elseif centralPercentage == sortedPercentageArray(2)
     for r = (31:1:47)
        for c = (34:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 3;
                newJersey(r,c,2) = 125; %everything north = Medium Green
                newJersey(r,c,3) = 80;
            end
        end
     end
elseif centralPercentage == sortedPercentageArray(3)
     for r = (31:1:47)
        for c = (34:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 5;
                newJersey(r,c,2) = 200; %everything north = Light Green
                newJersey(r,c,3) = 128;
            end
        end
     end
end
if southPercentage == sortedPercentageArray(1)
    for r = (47:1:numRows)
        for c = (27:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 1;
                newJersey(r,c,2) = 50; %everything north = Dark Green
                newJersey(r,c,3) = 32;
            end
        end
    end
elseif southPercentage == sortedPercentageArray(2)
    for r = (47:1:numRows)
        for c = (27:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 3;
                newJersey(r,c,2) = 125; %everything north = Medium Green
                newJersey(r,c,3) = 80;
            end
        end
    end
elseif southPercentage == sortedPercentageArray(3)
    for r = (47:1:numRows)
        for c = (27:1:66)
            if newJersey(r,c,1) == 0
                newJersey(r,c,1) = 5;
                newJersey(r,c,2) = 200; %everything north = Light Green
                newJersey(r,c,3) = 128;
            end
        end 
    end
end
imshow(newJersey)
title('New Jersey Vaccinated Regions')
writematrix(distributionPlan,'DistributionPlanFile.csv')
writematrix(remainingEligiblePatients,'RemainingEligliblePatientsFile.csv') %configures the data to files
imwrite(newJersey,'NewJerseyVaccinatedMap.png','png')
%writematrix(patientStats,'LargeTestCaseExample.csv');%for test case only
end
