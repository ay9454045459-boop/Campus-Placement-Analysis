# Build Guide: Campus Placement Analysis

## 1. Import data
Recommended easiest option: use `Dataset/student_data_cleaned.csv` with **Home → Get Data → Text/CSV**. Choose Load, then rename the table to `Student_Data`.

If you want to practise cleaning, import `student_data_raw.csv` and use Power Query. A starter M query is provided in `PowerBI/Power_Query_Cleaning_Starter.m`; update the file path before using it.

## 2. Verify data types
- Text: Student_ID, Gender, Degree, Specialisation, Work_Experience, Placement_Status
- Decimal: CGPA, Salary_LPA
- Whole number: Internships, Aptitude_Score, Communication_Score

## 3. Add measures
Open `PowerBI/DAX_Measures.dax`. Add each measure separately via **Modeling → New measure**. If Power BI reports a formula error, check the table name and column names.

## 4. Add visuals
- Four Card visuals for Total Students, Placed Students, Placement Rate, Average Salary (LPA).
- Donut: Placement_Status in Legend; Total Students in Values.
- Clustered bar: Specialisation on Y-axis; Placed Students on X-axis.
- Clustered column: Degree on X-axis; Average Salary (LPA) on Y-axis.
- Scatter: CGPA on X-axis; Aptitude_Score on Y-axis; Placement_Status in Legend; Student_ID in Details if available.
- Slicers: Degree, Specialisation, Gender, Work_Experience.

## 5. Finish and save
Use a clean navy/blue theme, align visuals, add readable titles, and test every slicer. Save as `Campus_Placement_Analysis.pbix`. Capture a screenshot of the actual report and add it to the Screenshots folder.

## 6. Present honestly
The data is synthetic practice data. Describe only the patterns visible in your generated report and do not claim these are real university placement results. This starter does not implement machine-learning prediction.
