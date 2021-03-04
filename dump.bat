@echo off
SETLOCAL
	set source_dir=//d/scratch/clarion
	set scripts_dir=//d/scratch/clarion/scripts
	set data_dir=//d/scratch/clarion/data

	docker run -it --rm -v %source_dir%:/source -v %scripts_dir%:/scripts -v %data_dir%:/data clarion-dump 
ENDLOCAL
@echo on