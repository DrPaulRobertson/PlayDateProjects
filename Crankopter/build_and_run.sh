compilerPath='/home/jinjo/Dev/PlaydateSDK/bin/pdc'
simulatorPath='/home/jinjo/Dev/PlaydateSDK/bin/PlaydateSimulator'
sourcePath='./Source'
outputPath='./Builds'

# pdc [sourcepath]    [outputpath]

echo "Compiler path: $compilerPath"
echo "Simulator path: $simulatorPath"
echo "Source path: $sourcePath"
echo "outputPath: $outputPath"

echo "Compile source ..."
$compilerPath $sourcePath $outputPath

echo "Opening simulator..."
#$simulatorPath $outputPath