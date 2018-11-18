#!/bin/sh
#
# get all relevant files
#
theFiles=`ls *.aif`
#
# for each file, put the name of the file into eachFile
#
for eachFile in $theFiles
    do
    #
    # delete '.aiff' suffix and store result in v1
    #
    v1=${eachFile%*.aif}
    #
    # add new '.wav' suffix and store in newFile
    oldFile="$v1.aif"
    newFile="$v1.wav"
    echo oldFile $oldFile
    echo newFile $newFile
    sox $oldFile $newFile
done
