# VaccineDistribution
Utilized MATLAB to design a program that processes matrices of data about vaccine supply and patient information in New Jersey that then creates multiple files which include a distribution plan, a matrix of the unvaccinated eligible patients for future use and a topographical map that displays the most to least vaccinated regions in New Jersey

The intent of the Vaccine Distribution project was to allow companies, governments and individuals to keep track of where and to whom the vaccines or, with slight modification to the program, products are being given out to. In the code provided, the program outputs a CSV file for the distribution plan for all the qualifying patients who received a vaccine and a matrix of the unvaccinated eligible patients for future use. In the command window it also outputs  the number of recipients,  the remaining number of vaccines and the percentage of recipients from North New Jersey, the percentage of recipients from Central New Jersey (YES IT DOES EXIST) and the percentage of recipients from South New Jersey. Based on those percentages, the program displaces and creates a file of a topographical map that shows light green for the least vaccinated region, regular green for the median of the vaccinated region and dark green for the most vaccinated region. 

The data that is imported should be formatted into a 5xN matrix. Row 1 is the patient's ID number, Row 2 is the phase they are in(1-5), Row 3 is how many doses they have received, Row 4 is how many days it has been since their last dose. Those who haven’t had any vaccine doses will have a -1 in this row, Row 5 is where the patient is located. The program prioritizes lower phase numbers for receiving a vaccine. and first doses over second doses for people in the same phase. It also doesn’t give vaccines to individuals who have received 2 or more doses and individuals who have received a vaccine dose within the last 21 days. The phases go from Urgent to whenever.Phase 1 represents patients who are in urgent need of a vaccine for medical reasons or other life threatning reasons and phase 5 represents patients who dont have to be prioritized at all

Attached in this reposotory is the code for the program, imported data function that manipulates the entered file so MATLAB can read it if the entered data is not a number only 2D matrix, and a script that creates random test cases. Ive also attached all the output files for a random testcase so you can have an idea of what its supposed to look like
