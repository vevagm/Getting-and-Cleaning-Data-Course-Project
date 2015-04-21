---
title: "CodeBook"
output: html_document
---

# Code Book

## Study Design

The data was collected from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. It represents data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

## Transformations
1. The training and the test sets were merged to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Activities were changes from a numeric factor ranging from 1:6 to descriptive labels
4. Column names were made more descriptive by removing special characters, chainging 't' and 'f' to time and frequency respectively and changing appreviations to longer verions.


## Data Dictionary

1. "subject"  identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.                            
2. "activity"  factor of (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)                         
3. "timeBodyAccelMeanX"                  standard gravity units 'g'
4. "timeBodyAccelMeanY"                 standard gravity units 'g'
5. "timeBodyAccelMeanZ"                  standard gravity units 'g'
6. "timeBodyAccelStdDevX"               standard gravity units 'g'
7. "timeBodyAccelStdDevY"                standard gravity units 'g'
8. "timeBodyAccelStdDevZ"               standard gravity units 'g'
9. "timeGravityAccelMeanX"               standard gravity units 'g'
10. "timeGravityAccelMeanY"              standard gravity units 'g'
11. "timeGravityAccelMeanZ"               standard gravity units 'g'
12. "timeGravityAccelStdDevX"            standard gravity units 'g'
13. "timeGravityAccelStdDevY"             standard gravity units 'g'
14. "timeGravityAccelStdDevZ"            standard gravity units 'g'
15. "timeBodyAccelJerkMeanX"              standard gravity units 'g'
16. "timeBodyAccelJerkMeanY"             standard gravity units 'g'
17. "timeBodyAccelJerkMeanZ"              standard gravity units 'g'
18. "timeBodyAccelJerkStdDevX"           standard gravity units 'g'
19. "timeBodyAccelJerkStdDevY"            standard gravity units 'g'
20. "timeBodyAccelJerkStdDevZ"           standard gravity units 'g'
21. "timeBodyGyroMeanX"        The units are radians/second           
22. "timeBodyGyroMeanY"         The units are radians/second         
23. "timeBodyGyroMeanZ"            The units are radians/second       
24. "timeBodyGyroStdDevX"                The units are radians/second
25. "timeBodyGyroStdDevY"                 The units are radians/second
26. "timeBodyGyroStdDevZ"                The units are radians/second
27. "timeBodyGyroJerkMeanX"               The units are radians/second
28. "timeBodyGyroJerkMeanY"              The units are radians/second
29. "timeBodyGyroJerkMeanZ"               The units are radians/second
30. "timeBodyGyroJerkStdDevX"            The units are radians/second
31. "timeBodyGyroJerkStdDevY"             The units are radians/second
32. "timeBodyGyroJerkStdDevZ"            The units are radians/second
33. "timeBodyAccelMagMean"                standard gravity units 'g'
34. "timeBodyAccelMagStdDev"             standard gravity units 'g'
35. "timeGravityAccelMagMean"             standard gravity units 'g'
36. "timeGravityAccelMagStdDev"          standard gravity units 'g'
37. "timeBodyAccelJerkMagMean"            standard gravity units 'g'
38. "timeBodyAccelJerkMagStdDev"         standard gravity units 'g'
39. "timeBodyGyroMagMean"        The units are radians/second         
40. "timeBodyGyroMagStdDev"              The units are radians/second
41. "timeBodyGyroJerkMagMean"             The units are radians/second
42. "timeBodyGyroJerkMagStdDev"          The units are radians/second
43. "frequencyBodyAccelMeanX"             The units are meters/Hz
44. "frequencyBodyAccelMeanY"            The units are meters/Hz
45. "frequencyBodyAccelMeanZ"             The units are meters/Hz
46. "frequencyBodyAccelStdDevX"          The units are meters/Hz
47. "frequencyBodyAccelStdDevY"           The units are meters/Hz
48. "frequencyBodyAccelStdDevZ"          The units are meters/Hz
49. "frequencyBodyAccelJerkMeanX"         The units are meters/Hz
50. "frequencyBodyAccelJerkMeanY"        The units are meters/Hz
51. "frequencyBodyAccelJerkMeanZ"         The units are meters/Hz
52. "frequencyBodyAccelJerkStdDevX"      The units are meters/Hz
53. "frequencyBodyAccelJerkStdDevY"       The units are meters/Hz
54. "frequencyBodyAccelJerkStdDevZ"      The units are meters/Hz
55. "frequencyBodyGyroMeanX"              The units are radians/Hz
56. "frequencyBodyGyroMeanY"             The units are radians/Hz
57. "frequencyBodyGyroMeanZ"              The units are radians/Hz
58. "frequencyBodyGyroStdDevX"           The units are radians/Hz
59. "frequencyBodyGyroStdDevY"            The units are radians/Hz
60. "frequencyBodyGyroStdDevZ"           The units are radians/Hz
61. "frequencyBodyAccelMagMean"          The units are meters/Hz 
62. "frequencyBodyAccelMagStdDev"        The units are meters/Hz
63. "frequencyBodyAccelJerkMagMean"   The units are meters/Hz
64. "frequencyBodyAccelJerkMagStdDev" The units are meters/Hz
65. "frequencyBodyGyroMagMean"        The units are radians/Hz
66. "frequencyBodyGyroMagStdDev"     The units are radians/Hz
67. "frequencyBodyGyroJerkMagMean"    The units are radians/Hz
68. "frequencyBodyGyroJerkMagStdDev" The units are radians/Hz
