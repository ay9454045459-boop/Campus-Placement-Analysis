# Campus Recruitment & Placement Analysis — Power BI

**Beginner-friendly Business Analytics portfolio project**

> **Data transparency:** All student records in this repository are synthetic practice data. They are not real placement records from BBD University or any other institution. Do not present these results as actual university statistics.

## Project objective
Explore campus recruitment outcomes and analyse how placement status varies with degree, specialisation, CGPA, internships, aptitude scores, communication scores, and work experience.

## Repository contents
```text
Campus-Placement-Analysis/
├── Dataset/
│   ├── student_data_raw.csv
│   ├── student_data_cleaned.csv
│   └── Campus_Placement_Practice_Workbook.xlsx
├── PowerBI/
│   ├── DAX_Measures.dax
│   └── Power_Query_Cleaning_Starter.m
├── Screenshots/
│   └── dashboard-preview.png
├── Documentation/
│   └── build-guide.md
└── README.md
```

## Tools
- Power BI Desktop
- Power Query
- DAX
- Excel / CSV
- GitHub

## Dataset fields
`Student_ID`, `Gender`, `Degree`, `Specialisation`, `CGPA`, `Internships`, `Aptitude_Score`, `Communication_Score`, `Work_Experience`, `Placement_Status`, `Salary_LPA`.

The raw workbook includes a data dictionary and notes. Some intentional quality issues are included for cleaning practice. The cleaned CSV standardises labels and removes duplicate IDs. Missing scores are retained as blanks. Salary is blank for students marked Not Placed.

## Dashboard pages and visuals
Build a page titled **Campus Placement Overview** with:
1. KPI cards: Total Students, Placed Students, Placement Rate, Average Salary (LPA).
2. Donut chart: Placement Status.
3. Clustered bar chart: Placed Students by Specialisation.
4. Clustered column chart: Average Salary by Degree.
5. Scatter chart: CGPA vs Aptitude Score, legend by Placement Status.
6. Slicers: Degree, Specialisation, Gender, Work Experience.

A visual layout reference is saved in `Screenshots/dashboard-preview.png`. It is a design preview, not a screenshot of a live Power BI report.

## Build instructions
1. Open Power BI Desktop.
2. Select **Home → Get Data → Text/CSV** and import `Dataset/student_data_cleaned.csv` (or import the Excel workbook and clean it in Power Query).
3. Rename the imported table to `Student_Data`.
4. Review the column data types. Set scores and CGPA to numeric; category fields to text.
5. Open `PowerBI/DAX_Measures.dax`, copy each measure into **Modeling → New measure**, and create the measures one by one.
6. Add the visuals and slicers described above.
7. Format Placement Rate as Percentage and Average Salary (LPA) as a decimal number with an LPA label.
8. Save your Power BI report as `PowerBI/Campus_Placement_Analysis.pbix`.
9. Export or capture a screenshot of your actual report and save it as `Screenshots/dashboard-overview.png`.
10. Upload the `.pbix` file and actual screenshot to GitHub after creating them.

## Main DAX measures
See `PowerBI/DAX_Measures.dax` for all measures. The key calculations are:
- **Total Students:** distinct student count.
- **Placed Students:** distinct count filtered to Placed.
- **Placement Rate:** placed students divided by total students.
- **Average Salary (LPA):** average salary for placed students only.

## Interpretation guidance
Use the visuals to describe patterns in this synthetic dataset only. Associations in this practice data do not establish cause and effect. Actual recruitment decisions should use verified data and fair, job-relevant criteria.

## Limitations
This repository contains a Power BI build starter and dataset, not a completed `.pbix` report. A real Power BI report must be created and saved in Power BI Desktop. It is a descriptive analytics project and does not contain a trained machine-learning prediction model.

## Future improvements
- Replace synthetic data with an authorised real dataset.
- Add a separate, validated machine-learning model if prediction is required.
- Add time/year comparisons if reliable historical data becomes available.
- Publish dashboard findings with clear notes on data source and limitations.

## Author
Aditya Kumar Yadav  
BBA Business Analytics
