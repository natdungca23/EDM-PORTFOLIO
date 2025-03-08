# Applied Steps
let
    Source = Csv.Document(File.Contents("C:\Users\Computer LAB\Downloads\Bootstrap-Jquery\Uncleaned_DS_jobs.csv"),[Delimiter=",", Columns=15, Encoding=1252, QuoteStyle=QuoteStyle.Csv]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"index", Int64.Type}, {"Job Title", type text}, {"Salary Estimate", type text}, {"Job Description", type text}, {"Rating", type number}, {"Company Name", type text}, {"Location", type text}, {"Headquarters", type text}, {"Size", type text}, {"Founded", Int64.Type}, {"Type of ownership", type text}, {"Industry", type text}, {"Sector", type text}, {"Revenue", type text}, {"Competitors", type text}}),
    #"Sorted Rows" = Table.Sort(#"Changed Type",{{"Salary Estimate", Order.Ascending}}),
    #"Extracted Text Before Delimiter" = Table.TransformColumns(#"Sorted Rows", {{"Salary Estimate", each Text.BeforeDelimiter(_, "("), type text}}),
    #"Inserted Text Between Delimiters" = Table.AddColumn(#"Extracted Text Before Delimiter", "Text Between Delimiters", each Text.BetweenDelimiters([Salary Estimate], "$", "K"), type text),
    #"Renamed Columns" = Table.RenameColumns(#"Inserted Text Between Delimiters",{{"Text Between Delimiters", "Min Sal"}}),
    #"Reordered Columns" = Table.ReorderColumns(#"Renamed Columns",{"index", "Job Title", "Min Sal", "Salary Estimate", "Job Description", "Rating", "Company Name", "Location", "Headquarters", "Size", "Founded", "Type of ownership", "Industry", "Sector", "Revenue", "Competitors"}),
    #"Inserted Text Between Delimiters1" = Table.AddColumn(#"Reordered Columns", "Text Between Delimiters", each Text.BetweenDelimiters([Salary Estimate], "$", "K", 1, 0), type text),
    #"Renamed Columns1" = Table.RenameColumns(#"Inserted Text Between Delimiters1",{{"Text Between Delimiters", "Max Sal"}}),
    #"Reordered Columns1" = Table.ReorderColumns(#"Renamed Columns1",{"index", "Job Title", "Min Sal", "Max Sal", "Salary Estimate", "Job Description", "Rating", "Company Name", "Location", "Headquarters", "Size", "Founded", "Type of ownership", "Industry", "Sector", "Revenue", "Competitors"}),
    #"Added Custom" = Table.AddColumn(#"Reordered Columns1", "Role Type", each if Text.Contains([Job Title], "Data Scientist") then
"Data Scientist"
else if Text.Contains([Job Title], "Data Analyst") then
"Data Analyst"
else if Text.Contains([Job Title], "Data Engineer") then
"Data Engineer"
else if Text.Contains([Job Title], "Machine Learning") then
"Machine Learning Engineer"
else
"other"),
    #"Changed Type1" = Table.TransformColumnTypes(#"Added Custom",{{"Role Type", type text}}),
    #"Added Custom1" = Table.AddColumn(#"Changed Type1", "Custom", each if [Location]= "New Jersey" then ", NJ"
else if [Location] = "Remote" then ", other"
else if [Location]= "United States" then ", other"
else if [Location]= "Texas" then ", TX"
else if [Location]= "Patuxent" then ", MA"
else if [Location]= "California" then ", CA"
else if [Location]= "Utah" then ", UT"
else [Location]),
    #"Renamed Columns2" = Table.RenameColumns(#"Added Custom1",{{"Custom", "Location Correction"}}),
    #"Changed Type2" = Table.TransformColumnTypes(#"Renamed Columns2",{{"Location Correction", type text}}),
    #"Split Column by Delimiter" = Table.SplitColumn(#"Changed Type2", "Location Correction", Splitter.SplitTextByDelimiter(",", QuoteStyle.Csv), {"Location Correction.1", "Location Correction.2"}),
    #"Changed Type3" = Table.TransformColumnTypes(#"Split Column by Delimiter",{{"Location Correction.1", type text}, {"Location Correction.2", type text}}),
    #"Replaced Value" = Table.ReplaceValue(#"Changed Type3","Anne Rundell","MA",Replacer.ReplaceText,{"Location Correction.2"}),
    #"Replaced Value1" = Table.ReplaceValue(#"Replaced Value","employees","",Replacer.ReplaceText,{"Size"}),
    #"Inserted Text Before Delimiter" = Table.AddColumn(#"Replaced Value1", "Text Before Delimiter", each Text.BeforeDelimiter([Size], " "), type text),
    #"Renamed Columns3" = Table.RenameColumns(#"Inserted Text Before Delimiter",{{"Text Before Delimiter", "MinCompanySize"}}),
    #"Reordered Columns2" = Table.ReorderColumns(#"Renamed Columns3",{"index", "Job Title", "Min Sal", "Max Sal", "Salary Estimate", "Job Description", "Rating", "Company Name", "Location", "Headquarters", "MinCompanySize", "Size", "Founded", "Type of ownership", "Industry", "Sector", "Revenue", "Competitors", "Role Type", "Location Correction.1", "Location Correction.2"}),
    #"Inserted Text Between Delimiters2" = Table.AddColumn(#"Reordered Columns2", "Text Between Delimiters", each Text.BetweenDelimiters([Size], " ", " ", 1, 0), type text),
    #"Renamed Columns4" = Table.RenameColumns(#"Inserted Text Between Delimiters2",{{"Text Between Delimiters", "MaxCompanySize"}}),
    #"Reordered Columns3" = Table.ReorderColumns(#"Renamed Columns4",{"index", "Job Title", "Min Sal", "Max Sal", "Salary Estimate", "Job Description", "Rating", "Company Name", "Location Correction.1", "Location Correction.2", "Location", "Headquarters", "MinCompanySize", "MaxCompanySize", "Size", "Founded", "Type of ownership", "Industry", "Sector", "Revenue", "Competitors", "Role Type"}),
    #"Replaced Value2" = Table.ReplaceValue(#"Reordered Columns3","Anne Arundel","MA",Replacer.ReplaceText,{"Location Correction.2"}),
    #"Replaced Value3" = Table.ReplaceValue(#"Replaced Value2","-1","N/A",Replacer.ReplaceText,{"Competitors"}),
    #"Replaced Value4" = Table.ReplaceValue(#"Replaced Value3","negative","0",Replacer.ReplaceText,{"Revenue"}),
    #"Replaced Value5" = Table.ReplaceValue(#"Replaced Value4","-1","other",Replacer.ReplaceText,{"Industry"}),
    #"Reordered Columns4" = Table.ReorderColumns(#"Replaced Value5",{"index", "Role Type", "Job Title", "Min Sal", "Max Sal", "Salary Estimate", "Job Description", "Rating", "Company Name", "Location Correction.1", "Location Correction.2", "Location", "Headquarters", "MinCompanySize", "MaxCompanySize", "Size", "Founded", "Type of ownership", "Industry", "Sector", "Revenue", "Competitors"}),
    #"Removed Columns" = Table.RemoveColumns(#"Reordered Columns4",{"Location", "Salary Estimate", "Job Title", "Job Description", "Size"}),
    #"Replaced Value6" = Table.ReplaceValue(#"Removed Columns","4.1","",Replacer.ReplaceText,{"Company Name"}),
    #"Replaced Value7" = Table.ReplaceValue(#"Replaced Value6",".","",Replacer.ReplaceText,{"Company Name"}),
    #"Replaced Value8" = Table.ReplaceValue(#"Replaced Value7","numbers","",Replacer.ReplaceText,{"Company Name"}),
    #"Replaced Value9" = Table.ReplaceValue(#"Replaced Value8","39","",Replacer.ReplaceText,{"Company Name"}),
    #"Replaced Value10" = Table.ReplaceValue(#"Replaced Value9","44","",Replacer.ReplaceText,{"Company Name"}),
    #"Replaced Value11" = Table.ReplaceValue(#"Replaced Value10","45","",Replacer.ReplaceText,{"Company Name"})
in
    #"Replaced Value11"
let
    Source = Excel.Workbook(File.Contents("C:\Users\COMLAB\Downloads\RAW.xlsx"), null, true),
    Uncleaned_DS_jobs__2_Table = Source{[Item="Uncleaned_DS_jobs__2",Kind="Table"]}[Data],
    #"Changed Type" = Table.TransformColumnTypes(Uncleaned_DS_jobs__2_Table,{{"index", Int64.Type}, {"Role Type", type text}, {"Min Sal", Int64.Type}, {"Max Sal", Int64.Type}, {"Rating", type number}, {"Company Name", type text}, {"Location Correction.1", type text}, {"Location Correction.2", type text}, {"Headquarters", type text}, {"MinCompanySize", type text}, {"MaxCompanySize", Int64.Type}, {"Founded", Int64.Type}, {"Type of ownership", type text}, {"Industry", type text}, {"Sector", type text}, {"Revenue", type text}, {"Competitors", type text}}),
    #"Split Column by Position" = Table.SplitColumn(#"Changed Type", "Company Name", Splitter.SplitTextByPositions({0, 3}, true), {"Company Name.1", "Company Name.2"}),
    #"Changed Type1" = Table.TransformColumnTypes(#"Split Column by Position",{{"Company Name.1", type text}, {"Company Name.2", type text}})
in
    #"Changed Type1"

# UNDONE
(https://drive.google.com/file/d/14obgZnDLXqBo4GcEFfZETZVNtePURBHy/view?usp=classroom_web&authuser=0)
