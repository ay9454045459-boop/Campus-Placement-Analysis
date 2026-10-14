// Power Query M starter example.
// Import student_data_raw.csv using Get Data > Text/CSV.
// Adjust the file path if using this script in Advanced Editor.
// Review duplicate removal and null handling before applying to real data.
let
    Source = Csv.Document(
        File.Contents("C:\YOUR_PATH\Campus-Placement-Analysis\Dataset\student_data_raw.csv"),
        [Delimiter=",", Encoding=65001, QuoteStyle=QuoteStyle.Csv]
    ),
    PromotedHeaders = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    TrimmedText = Table.TransformColumns(
        PromotedHeaders,
        {
            {"Student_ID", each Text.Trim(Text.Clean(_)), type text},
            {"Gender", each Text.Proper(Text.Trim(Text.Clean(_))), type text},
            {"Degree", each Text.Trim(Text.Clean(_)), type text},
            {"Specialisation", each Text.Proper(Text.Trim(Text.Clean(_))), type text},
            {"Work_Experience", each Text.Proper(Text.Trim(Text.Clean(_))), type text},
            {"Placement_Status", each Text.Proper(Text.Trim(Text.Clean(_))), type text}
        }
    ),
    ChangedTypes = Table.TransformColumnTypes(
        TrimmedText,
        {
            {"CGPA", type number},
            {"Internships", Int64.Type},
            {"Aptitude_Score", Int64.Type},
            {"Communication_Score", Int64.Type},
            {"Salary_LPA", type number}
        }
    ),
    RemovedDuplicateIDs = Table.Distinct(ChangedTypes, {"Student_ID"})
in
    RemovedDuplicateIDs
