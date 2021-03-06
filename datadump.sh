#!/bin/bash

# expression to remove source folder from filename
exp="s/source\///g"

for filename in source/*.DAT; do
        # avoid issues when folder is empty
        if [[ ! -e $filename ]]; then continue; fi
        
        echo "Processing" $filename
        # removes source folder from filename to output data and script
        output=$(echo "$filename" | sed -e "$exp")
        # generates mssql-server table script
        cldump -Ss $filename > scripts/$output$SCRIPT_POS
        # generates mssql-server data script only for active records
        cldump -Sd $filename > data/$output$DATA_POS
done
