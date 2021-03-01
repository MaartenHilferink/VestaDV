REM GeoDmsRun.exe [/PProjName] [/LLogFileName] ConfigFileName ItemNames
REM [] betekent optioneel
REM Sluit GUI-variant(GeoDmsGui.exe) af bij aanroepen van GeoDmsRun.exe (indien dit dezelfde is)
REM Resultaten worden weggeschreven in: n:/LD/%confignaam%/results/...
REM Bij nogmaals runnen worden bestanden gewoon overschreven

Call path/set.bat

set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)
set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%
set SUBFILENAME=%CUR_YYYY%%CUR_MM%%CUR_DD%-%CUR_HH%%CUR_NN%%CUR_SS%

set STUDIEGEBIED=Havenstad
REM 'NL' 'Havenstad' 'Hengelo' 'GooienVechtstreek'

set FLIPSTATUS=FALSE
REM FALSE TRUE

set SCENARIO=1_AllesGas
REM	//SCENARIO SETTINGS:
REM		// Geen scenarios                'LosseStrategieen' 
REM		// Gooi en Vechtstreek scenarios '1_SA' '2_Check' '3_GeenGroenGas' '4_LabelB' 
REM		// Havenstad scenarios           '1_AllesGas' '2_AllesNaturel' '3_HavenstadAllElectric'
REM		// Hengelo scenarios             'Combinatie_s1abs2ad'



REM set EXPORT_PATH=LeidraadResultaten/Exports/ESDL/Generate_PerPlanRegio_All
 set EXPORT_PATH=LeidraadResultaten/Exports/ESDL/Generate_PerPlanRegio_All_metRES

REM Strategieen voor 1_AllesGas
 "%exe_path%" "%prj_dir%\Runs\S0_Referentie.dms" "%EXPORT_PATH%"

pause Ready

REM Strategieen voor 2_AllesNaturel
 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S2a_B_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2d_D_Restwarmte.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S3a_B_LT30_30.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3b_B_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3f_D_LT30_70.dms" "%EXPORT_PATH%"






REM ========== Volledige lijst met strategieen ==========
 "%exe_path%" "%prj_dir%\Runs\S0_Referentie.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S2a_B_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2b_B_Geo_contour.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2c_B_Geo_overal.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2d_D_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2e_D_Geo_contour.dms" "%EXPORT_PATH%" 
 "%exe_path%" "%prj_dir%\Runs\S2f_D_Geo_overal.dms" "%EXPORT_PATH%" 

 "%exe_path%" "%prj_dir%\Runs\S3a_B_LT30_30.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3b_B_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3c_B_BuurtWKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3d_B_WKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3e_B_TEO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3f_D_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3g_D_BuurtWKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3h_D_TEO.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S4a_GG_B_hWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S4b_GG_B_HR.dms" "%EXPORT_PATH%" 
 "%exe_path%" "%prj_dir%\Runs\S4c_GG_D_hWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S4d_GG_D_HR.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S5a_H2_B_hWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S5b_H2_B_HR.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S5c_H2_D_hWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S5d_H2_D_HR.dms" "%EXPORT_PATH%"




REM ========== HAVENSTAD SCENARIOS ==========

REM Strategieen voor 1_AllesGas
 "%exe_path%" "%prj_dir%\Runs\S0_Referentie.dms" "%EXPORT_PATH%"

REM Strategieen voor 2_AllesNaturel en 3_HavenstadAllElectric
 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S2a_B_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2d_D_Restwarmte.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S3a_B_LT30_30.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3b_B_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3f_D_LT30_70.dms" "%EXPORT_PATH%"



REM ========== GOOI EN VECHTSTREEK SCENARIOS ==========

REM Strategieen voor 1_SA en 2_Check
 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S2a_B_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2b_B_Geo_contour.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2d_D_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2e_D_Geo_contour.dms" "%EXPORT_PATH%" 

 "%exe_path%" "%prj_dir%\Runs\S3a_B_LT30_30.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3b_B_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3c_B_BuurtWKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3d_B_WKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3e_B_TEO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3f_D_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3g_D_BuurtWKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3h_D_TEO.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S4a_GG_B_hWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S4b_GG_B_HR.dms" "%EXPORT_PATH%" 
 "%exe_path%" "%prj_dir%\Runs\S4c_GG_D_hWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S4d_GG_D_HR.dms" "%EXPORT_PATH%"

REM Strategieen voor 3_GeenGroenGas
 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S2a_B_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2b_B_Geo_contour.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2d_D_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2e_D_Geo_contour.dms" "%EXPORT_PATH%" 

 "%exe_path%" "%prj_dir%\Runs\S3a_B_LT30_30.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3b_B_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3c_B_BuurtWKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3d_B_WKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3e_B_TEO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3f_D_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3g_D_BuurtWKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3h_D_TEO.dms" "%EXPORT_PATH%"

REM Strategieen voor 4_LabelB
 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S2a_B_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2b_B_Geo_contour.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S3a_B_LT30_30.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3b_B_LT30_70.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3c_B_BuurtWKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3d_B_WKO.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S3e_B_TEO.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S4a_GG_B_hWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S4b_GG_B_HR.dms" "%EXPORT_PATH%" 



REM ========== HENGELO SCENARIOS ==========

REM Strategieen voor Combinatie_s1abs2ad
 "%exe_path%" "%prj_dir%\Runs\S1a_B_LuchtWP.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S1b_B_BodemWP.dms" "%EXPORT_PATH%"

 "%exe_path%" "%prj_dir%\Runs\S2a_B_Restwarmte.dms" "%EXPORT_PATH%"
 "%exe_path%" "%prj_dir%\Runs\S2d_D_Restwarmte.dms" "%EXPORT_PATH%"




