testPath = "C:\agent\_work\1\s"
Dim objFSO
Set objFSO = CreateObject("Scripting.FileSystemObject")
DoesFolderExist = objFSO.FolderExists(testPath)
Set objFSO = Nothing
If DoesFolderExist Then
Dim qtApp
Dim qtTest
Dim qtResultsOpt
Set qtApp = CreateObject("QuickTest.Application")
qtApp.Launch
qtApp.Visible = False
qtApp.Open testPath, False
Set qtTest = qtApp.Test
Set qtResultsOpt = CreateObject("QuickTest.RunResultsOptions")
qtResultsOpt.ResultsLocation = "C:\agent\_work\1\s\Reports"
qtTest.Run qtResultsOpt,True
qtTest.Run
qtTest.Close
qtApp.Quit
Else
Wscript.Echo "Test is not found at"&testPath 
End If