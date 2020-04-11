find /Users/kci/Desktop/DeepLearning_in_MedicalImaging/DCGAN/images/training/siemens -type f -mindepth 1 -maxdepth 1 | while IFS= read -r d; do

	 

	x=$(basename "$d")
	echo ${x:0:12}
	mkdir ${x:0:12}

	

	#hd-bet -i "$d"/FLAIR/FLAIR.nii -o "$d"/FLAIR/FLAIR_bet_hd.nii -device cpu -mode fast -tta 0
	#cd "$d"/FLAIR
	#	hd-bet -i FLAIR.nii -o FLAIR_bet.nii -device cpu -mode fast -tta 0
	#cd ..; cd ..
	#cp "$d"/FLAIR/edit_WMH_mask.nii "$d"/FLAIR/WMHF.nii

	#hd-bet -i FLAIR.nii -o FLAIR_bet_hd.nii -device cpu -mode fast -tta 0

	#unzip /share/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/03092020/FLAIR/$(basename "$d")/*dicom.zip
	#unzip /share/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/03092020/MRA/$(basename "$d")/*dicom.zip
	


	#mkdir "$d"/FLAIR_new
	#cp "$d"/3DT1/3DT1.nii /share/projects/brickman_cluster/ASHS/projects/Offspring/T1/$(basename "$d")_T1.nii
	#cp "$d"/T2_TSE/*.nii /share/projects/brickman_cluster/ASHS/projects/Offspring/T2/$(basename "$d")_T2.nii



	#mkdir "$d"/$(basename "$d")/extra
	#mv "$d"/$(basename "$d")/mIP_ImagesSW "$d"/$(basename "$d")/SWI_POST
	#mv "$d"/$(basename "$d")/3DT1_Mprage "$d"/$(basename "$d")/3DT1
	#mv "$d"/$(basename "$d")/SWI_Images "$d"/$(basename "$d")/SWI

	#gunzip "$d"/$(basename "$d")/3DT1/*gz
	#gunzip "$d"/$(basename "$d")/FLAIR/*gz

	#mv "$d"/$(basename "$d")/3DT1/*.nii "$d"/$(basename "$d")/3DT1/3DT1.nii
	#mv "$d"/$(basename "$d")/FLAIR/*.nii "$d"/$(basename "$d")/FLAIR/FLAIR.nii

	#cp /share/projects/brickman_cluster/buffer/ADDS/new/timepoint2/$(basename "$d")/FLAIR/FLAIR.nii /share/projects/brickman_cluster/buffer/ADDS/new/timepoint2/gpu_bets/$(basename "$d")/FLAIR.nii
	#cp /share/projects/brickman_cluster/buffer/ADDS/new/new_downloads_timepoint2/$(basename "$d")/FLAIR/FLAIR.nii /share/projects/brickman_cluster/buffer/ADDS/new/new_downloads_timepoint2/gpu_bets/$(basename "$d")/FLAIR.nii

	 # echo ${x:0:6}
	 # flag=0
	 # cd "$d"
	 # if [ ! -f "orig.nii" ]; then
	 # 	echo $(basename "$d")
	 # 	flag=1
	 # fi
    	# cd ..g
 
	 # if [ "$flag" -eq 1 ]; then 
    	# 	echo "file does not exist"
	 # fi
	# cp /share/projects/brickman_cluster/Offspring/Offspring_FreeSurfer/$(basename "$d")_FS/mri/orig.nii "$d"/orig.nii
 # 	cp /share/projects/brickman_cluster/Offspring/Offspring_FreeSurfer/$(basename "$d")_FS/mri/wm.nii "$d"/wm.nii
	# cp /share/projects/brickman_cluster/Offspring/Offspring_FreeSurfer/$(basename "$d")_FS/mri/aparc+aseg.nii "$d"/aparc+aseg.nii
	# cp -r "$d"/3DT1/*dicom /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/3DT1/$(basename "$d")/dicom
	# cp -r "$d"/FLAIR/*dicom /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/FLAIR/$(basename "$d")/dicom
	# cp -r "$d"/MRA/*dicom /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/MRA/$(basename "$d")/dicom
	#/usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/deeplearning/BrainEXTRACTION/white_matter_mask_other_76/$(basename "$d")/orig2flair_bet.nii -ref /usr/local/fsl/5.0.11/data/standard/MNI152_T1_2mm_brain -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/deeplearning/BrainEXTRACTION/white_matter_mask_other_76/$(basename "$d")/my_affine_tranf.nii -omat /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/deeplearning/BrainEXTRACTION/white_matter_mask_other_76/$(basename "$d")/my_affine_tranf.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear 
	# cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/3DT1/*.dicom.zip "$d"/3DT1/dicom.zip
	# cp /mnt/mfs/cndgrid/projects/brickman_cluster/Offspring/$(basename "$d")/$(basename "$d")_DICOM/*.dicom.zip "$d"/regular_folder/3DT1/dicom.zip

	# # cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/*.dicom.zip "$d"/FLAIR/dicom.zip
	# cp /mnt/mfs/cndgrid/projects/brickman_cluster/Offspring/$(basename "$d")/$(basename "$d")_DICOM/FLAIR/*.dicom.zip "$d"/regular_folder/FLAIR/dicom.zip

	# # cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/MRA-TOF/*.dicom.zip "$d"/MRA/dicom.zip
	# cp /mnt/mfs/cndgrid/projects/brickman_cluster/Offspring/$(basename "$d")/$(basename "$d")_DICOM/MRA-TOF/*.dicom.zip "$d"/regular_folder/MRA/dicom.zip
	#fnirt --in="$d"/orig2flair.nii --aff="$d"/my_affine_tranf.mat --cout="$d"/my_nonlinear_tranf.nii --config=/mnt/mfs/cndgrid/projects/brickman_cluster/users/kay/T1_2_MNI152_2mm --iout="$d"/my_nonlinear_tranf_.nii
	#applywarp --ref=${FSLDIR}/data/standard/MNI152_T1_2mm --in=filtered_mask_binary.nii --warp=my_nonlinear_tranf --out=my_warped_functional
	
	#invwarp --ref="$d"/orig2flair.nii --warp=my_nonlinear_tranf --out=trial_warps
	#applywarp --ref=orig2flair.nii --in=ACC_left --warp=warps_into_my_struct_space --out=ACC_left_in_my_struct_space --interp=nn




	#fnirt --in="$d"/T1_${x:3:7}_S0001.nii --aff="$d"/T12MNI_brain.mat --cout="$d"/my_nonlinear_transf --config=/share/projects/brickman_cluster/users/kay/T1_2_MNI152_2mm --iout="$d"/my_nonlinear_transf_3DT1.nii
	#/usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/deeplearning/BrainEXTRACTION/white_matter_mask_other_76/$(basename "$d")/aseg.nii -applyxfm -init /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/deeplearning/BrainEXTRACTION/white_matter_mask_other_76/$(basename "$d")/orig2flair.mat -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/deeplearning/BrainEXTRACTION/white_matter_mask_other_76/$(basename "$d")/aeg2flair_bet.nii -paddingsize 0.0 -interp nearestneighbour -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/deeplearning/BrainEXTRACTION/white_matter_mask_other_76/$(basename "$d")/orig2flair_bet.nii
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/WHICAP_V3B/V3B_FreeSurfer/$(basename "$d")_FS/mri/aseg.nii "$d"/aseg.nii
	#mri_convert /mnt/mfs/cndgrid/projects/brickman_cluster/WHICAP_V3B/V3B_FreeSurfer/$(basename "$d")_FS/mri/aseg.mgz /mnt/mfs/cndgrid/projects/brickman_cluster/WHICAP_V3B/V3B_FreeSurfer/$(basename "$d")_FS/mri/aseg.nii 


	# #rm "$d"/FLAIR/FLAIR.nii.gz
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/V3B/manual_edits/new_folders04142019/$(basename "$d")/LPA_WMHF.nii "$d"/WMHF_LPA.nii
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/V3B/manual_edits/new_folders04142019/$(basename "$d")/WMHF_manual.nii "$d"/WMHF_manual.nii
		#cp "$d"/ples_lga_0.3_rmflair.nii /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/V3B/manual_edits/new_folders04142019/$(basename "$d")/LGA_WMHF.nii
	#	cp WMHF_manual.nii WMHF_manual_Copy.nii
		#mv sub**_bianca.nii bianca.nii 
	#	gzip -f mask2flair_bet.nii

	#/usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/anatomical_masks/brain.nii -ref /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/FLAIR_bet.nii -out /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/anatomical_masks/brain2FLAIR.nii -omat /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/anatomical_masks/brain2FLAIR.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 12  -interp trilinear 
	#/usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/anatomical_masks/aseg.nii -applyxfm -init /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/anatomical_masks/brain2FLAIR.mat -out /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/anatomical_masks/aseg2FLAIR.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch4/batch2/$(basename "$d")/FLAIR/anatomical_masks/brain2FLAIR.nii.gz


 	#mri_convert "$d"/FLAIR/anatomical_masks/aseg.mgz "$d"/FLAIR/anatomical_masks/aseg.nii
 	#mri_convert "$d"/FLAIR/anatomical_masks/brain.mgz "$d"/FLAIR/anatomical_masks/brain.nii
	#mv "$d"/FLAIR/FLAIR_bet.nii "$d"/FLAIR/FLAIR.nii
	#mv "$d"/FLAIR_old.nii "$d"/FLAIR.nii
	# cd "$d"/FLAIR
	# if [ -f "WMHF.nii" ]; then
	#    echo $(basename "$d")
	# fi
	# cd ..;cd ..
	# #/usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/temp_FS/Schnall_FreeSurfer/$(basename "$d")_FS/mri/brain.nii -ref /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/temp_WMH/$(basename "$d")/FLAIR/FLAIR.nii -out /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/temp_WMH/$(basename "$d")/FLAIR/brain2FLAIR.nii -omat /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/temp_WMH/$(basename "$d")/FLAIR/brain2FLAIR.mat -bins 256 -cost corratio -searchrx -180 180 -searchry -180 180 -searchrz -180 180 -dof 12  -interp trilinear

	# cd ..;cd ..;


	#mv "$d"/FLAIR/rwlobes_to_FLAIR.nii "$d"/FLAIR/rwlobes_to_FLAIR_atul.nii
	#mv "$d"/FLAIR/rwlobes_to_FLAIR.nii "$d"/FLAIR/rwlobes_to_FLAIR_old.nii
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_MRS/09112019/$(basename "$d").rda "$d"/mrs.rda
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/Offspring/ASHS_Offspring/T1/$(basename "$d")_T1.nii "$d"/3DT1.nii
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/batch0/$(basename "$d")/MRS/MRS_Hippo_ECC/*.zip "$d"/$(basename "$d").dicom.zip
	
	# cd "$d"/1*
	# 	unzip *.dicom.zip
	# 	#mv *.dcm $(basename "$d").dcm
	# cd ..;cd ..



	# mv "$d"/FLAIR/FLAIR.nii "$d"/FLAIR/FLAIR_orig.nii
	# mv "$d"/FLAIR/FLAIR_bet.nii "$d"/FLAIR/FLAIR.nii
	#echo $(basename "$d")
	#mri_convert /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_FS/Offspring_FreeSurfer/$(basename "$d")_FS/mri/T1.mgz /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_FS/Offspring_FreeSurfer$(basename "$d")_FS/mri/T1.nii
	#mri_convert /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_FS/Offspring_FreeSurfer/$(basename "$d")_FS/mri/aparc+aseg.mgz /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_FS/Offspring_FreeSurfer/$(basename "$d")_FS/mri/aprc+aseg.nii
	#mri_convert /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_FS/Offspring_FreeSurfer/$(basename "$d")_FS/mri/brain.mgz /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_FS/Offspring_FreeSurfer/$(basename "$d")_FS/mri/brain.nii
	#mv "$d"/$(basename "$d")_MRA.dicom.zip  /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/new/mra/zip/
	# cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_WMH/$(basename "$d")/MRA*/*.dicom.zip "$d"/$(basename "$d")_MRA.dicom.zip
	# if [[ ! -d /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/MRA/$(basename "$d") ]]; then
	# 	echo $(basename "$d")
	# 	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/JGutierrezContreras/new/mra/$(basename "$d")
	# 	#mv "$d"/FLAIR/2* "$d"/FLAIR/FLAIR.nii
	# fi

	#############################
	# Check which files are empty
	#############################
	# if [ "$(ls -A $d)" ]; then
	#     echo " "
	# else
	#     echo "$(basename "$d") is Empty"
	# fi
	#############################
	#############################

	#mv /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_MRS/NEED_RDAs/$(basename "$d").dcm "$d"/$(basename "$d")_.dcm
	# cd "$d"/*.dicom
	# mv *.dcm $(basename "$d").dcm
	# cd ..;cd ..
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Offspring/temp_FS/$(basename "$d")/MRS/MRS_Hippo_ECC/*.dicom.zip "$d"/$(basename "$d").dicom.zip
	# cd "$d"
	# 	unzip *.zip
	# cd ..
	#x=$(basename "$d")
	#echo ${x:0:6}
	# mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/NPH/$(basename "$d")
	#cp /mnt/mfs/cndgrid/projects/brickman_cluster/Offspring/$(basename "$d")/3DT1/3DT1.nii "$d"/3DT1.nii
	#cp "$d"/FLAIR/FLAIR.nii /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/NovelMeasures/temp_WMH/$(basename "$d")/FLAIR.nii
	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/NovelMeasures/temp_WMH/$(basename "$d")
	#mkdir "$d"/$(basename "$d")/$(basename "$d")/3DT1
	#rm "$d"/*/FLAIR.nii.gz
	# cd "$d"/FLAIR
	# 	#chmod 777 FLAIR_shell.sh
	# 	./FLAIR_shell.sh
	# cd ..;cd ..

	#mv "$d"/3DT1/*.nii "$d"/3DT1/3DT1.nii
	#mv "$d"/FLAIR/*.nii "$d"/FLAIR/FLAIR.nii
	#mv "$d"/$(basename "$d")/SWI_Images "$d"/$(basename "$d")/SWI
	#cp -a /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/JL/WMH/$(basename "$d") "$d"/FLAIR
	#x=$(basename "$d")	
	#if [[ ! -d "$d"/FLAIR ]]; then
	# 	echo $(basename "$d")
	# 		# 	mv "$d"/FLAIR/2* "$d"/FLAIR/FLAIR.nii
	#fi
	#cp /share/projects/brickman_cluster/Jim_Victoria_MS/temp_wmh/T2_masks/$(basename "$d")/T1_${x:3:7}_S0001.nii "$d"/T1_${x:3:7}_S0001.nii
	#cp /share/projects/brickman_cluster/Jim_Victoria_MS/temp_wmh/T2_masks/$(basename "$d")/T1_brain.nii.gz "$d"/T1_brain.nii.gz

			# if [[ ! -f "$d"/FLAIR/WMHF.nii ]]; then
			# 	echo $(basename "$d")
			# fi
	##############################################################################################################
	# Korhan's Section FNIRT
	##############################################################################################################
	# /usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/$(basename "$d")_T2_nu_rs.nii -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/T1_brain.nii.gz -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/funct2struct.nii -omat /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/funct2struct.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear &
	# /usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/$(basename "$d")_T2_nu_rs_mask.nii -applyxfm -init /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/funct2struct.mat -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/mask2struct.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/funct2struct.nii.gz &
	# /usr/local/fsl/5.0.11/bin/flirt -in "$d"/T1_brain.nii.gz -ref /mnt/mfs/cndgrid/projects/brickman_cluster/users/kay/MNI152_T1_2mm_brain.nii.gz -out "$d"/T12MNI_brain.nii.gz -omat "$d"/T12MNI_brain.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear &
	# fnirt --in="$d"/T1_${x:3:7}_S0001.nii --aff="$d"/T12MNI_brain.mat --cout="$d"/my_nonlinear_transf --config=/share/projects/brickman_cluster/users/kay/T1_2_MNI152_2mm --iout="$d"/my_nonlinear_transf_3DT1.nii &
	# applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm --in="$d"/$(basename "$d")_T2_nu_rs.nii --warp="$d"/my_nonlinear_transf --premat="$d"/funct2struct.mat --out="$d"/my_warped_functional.nii.gz  &
	# applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm --in="$d"/$(basename "$d")_T2_nu_rs_mask.nii --warp="$d"/my_nonlinear_transf --premat="$d"/funct2struct.mat --out="$d"/my_warped_functional_mask.nii.gz &
	# cp "$d"/my_warped_functional.nii.gz "$d"/FLAIR.nii.gz &
	# cp "$d"/$(basename "$d")_T2_nu_rs_mask.nii  "$d"/real_WMHF.nii &
	# mv "$d"/rwlobes_to_FLAIR.nii "$d"/rwlobes_to_FLAIR_fnirt.nii &
	# gunzip "$d"/real_WMHF.nii.gz &
	# gunzip "$d"/FLAIR.nii.gz &
	###############
	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Kelley/Test_Case/outputs/$(basename "$d")/$(basename "$d")_pre/FLAIR
	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Kelley/Test_Case/outputs/$(basename "$d")/$(basename "$d")_pre/T2
	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Kelley/Test_Case/outputs/$(basename "$d")/$(basename "$d")_pre/SWI
	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Kelley/Test_Case/outputs/$(basename "$d")/$(basename "$d")_post/FLAIR
	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Kelley/Test_Case/outputs/$(basename "$d")/$(basename "$d")_post/T2
	#mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Kelley/Test_Case/outputs/$(basename "$d")/$(basename "$d")_post/SWI
	# mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/WMH/$(basename "$d")/FLAIR
	# mkdir /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/WMH/$(basename "$d")/T1
	# cp "$d"/*/3DT1_Mprage/*.nii.gz /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/WMH/$(basename "$d")/T1/T1.nii.gz
	# cp "$d"/*/SWI_Images/*.nii.gz /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Schnall/WMH/$(basename "$d")/SWI/SWI.nii.gz


	#cp "$d"/my_warped_functional.nii "$d"/FLAIR.nii
	#cp "$d"/$(basename "$d")_T2_nu_rs_mask.nii "$d"/WMHF.nii
	# rm "$d"/FLAIR.nii
	# rm "$d"/FLAIR_bet.nii
	# rm "$d"/WMHF.nii
	# rm "$d"/labinroi_19-Jul-2019_Sig_new_1.5.nii
	# rm "$d"/labinroi_26-Jul-2019_Sig_new_1.5.nii
	# rm "$d"/FLAIR_26-Jul-2019_SigAN_1.5.nii
	# rm "$d"/FLAIR_shell.sh
	# rm "$d"/FLAIRN.nii
	# rm "$d"/MNI_to_FLAIR.mat
	# rm "$d"/rwlobes_to_FLAIR.nii
	#mv "$d"/rwlobes_to_FLAIR.nii "$d"/rwlobes_to_FLAIR_SubjectSpace_Right.nii
	###############

	##############################################################################################################
			# Below is the HIPPO GLOW
			# /usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/HippoGlow/group4/$(basename "$d")/aparc+aseg_$(basename "$d").nii -applyxfm -init /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/HippoGlow/group4/$(basename "$d")/brain2flair.mat -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/HippoGlow/group4/$(basename "$d")/aseg2flair_new.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/HippoGlow/group4/$(basename "$d")/brain2flair.nii.gz

			# cp "$d"/FLAIR/FLAIR.nii /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/Einstein/$(basename "$d")/FLAIR.nii
			# cp "$d"/FLAIR/FLAIR_240.nii.gz /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/Einstein/$(basename "$d")/FLAIR_240.nii.gz
			# cp "$d"/FLAIR/FLAIR_240.mat /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/Einstein/$(basename "$d")/FLAIR_240.mat
			#/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_FS/$(basename "$d")/FLAIR/FLAIR.nii -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/training/W31589V4/FLAIR.nii -out /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_FS/$(basename "$d")/FLAIR/FLAIR_240.nii -omat /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_FS/$(basename "$d")/FLAIR/FLAIR_240.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear &

			#T1_${x:3:7}_S0001.nii
			
			#/usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/T2_Mask/$(basename "$d")/$(basename "$d")_T2_nu_rs_mask.nii -applyxfm -init /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/Redo_10_Trial/$(basename "$d")/func2struct.mat -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/Redo_10_Trial/$(basename "$d")/mask2struct.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/Redo_10_Trial/$(basename "$d")/func2struct.nii.gz

			#/usr/local/fsl/5.0.11/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/Redo_10_Trial/$(basename "$d")/T2_brain.nii.gz -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/Redo_10_Trial/$(basename "$d")/T1_brain.nii.gz -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/Redo_10_Trial/$(basename "$d")/func2struct.nii.gz -omat /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Korhan/Redo_10_Trial/$(basename "$d")/func2struct.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear
			##########################################################################
			# non-linear registration of all masks
			##########################################################################
			#fnirt --in="$d"/T1_${x:3:7}_S0001.nii --aff="$d"/T12MNI_brain.mat --cout="$d"/my_nonlinear_transf --config=/share/projects/brickman_cluster/users/kay/T1_2_MNI152_2mm --iout="$d"/my_nonlinear_transf_3DT1.nii
			#applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm --in=SUM0001_T2_nu_rs.nii --warp=my_nonlinear_transf --premat=func2struct.mat --out=my_warped_functional.nii.gz
			#applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm --in=SUM0001_T2_nu_rs_mask.nii --warp=my_nonlinear_transf --premat=mask2struct.mat --out=my_warped_functional_mask.nii.gz

			#fnirt --in=T1_0003_S0001.nii --aff=T12MNI_brain.mat --cout=my_nonlinear_transf --config=/share/projects/brickman_cluster/users/kay/T1_2_MNI152_2mm --iout=my_nonlinear_transf_3DT1.nii



			#fnirt --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm.nii.gz --in="$d"/3DT1_2_MNI.nii --aff="$d"/3DT1_2mm.mat --iout="$d"/nonlinear_T1.nii --cout="$d"/nonlinear_T1_co --config=/mnt/mfs/cndgrid/projects/brickman_cluster/users/kay/T1_2_MNI152_2mm.cnf &
			# applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm.nii.gz --in="$d"/3DT1_2mm.nii --warp="$d"/nonlinear_T1_co.nii --out="$d"/warped_T1_bet.nii
			# applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm.nii.gz --in="$d"/test_bet_flair.nii.gz --premat="$d"/bet2MNI.mat --warp="$d"/nonlinear_T1_co.nii --out="$d"/warped_FLAIR.nii --interp=trilinear
			#applywarp --ref="$d"warped_FLAIR.nii.gz --in="$d"/WMHF_2_MNI.nii.gz --warp="$d"/nonlinear_T1_co.nii --premat=FLAIR_2_MNI.mat --out="$d"/warped_WMHF.nii
			##########################################################################

			#$(basename "$d")
			#/usr/local/fsl/5.0.7/bin/flirt -ref "$d"/3DT1_bet.nii -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/training/$(basename "$d")/mask2flair_bet.nii -dof 6 -omat "$d"/func2struct.mat &
			#/usr/local/fsl/5.0.7/bin/flirt -ref /usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm_brain -in "$d"/3DT1_bet.nii -omat "$d"/my_affine_transf.mat &
			#echo ${x:7:8}
			#   if [[ $(basename "$d") == *"V3B"* ]]; then
			#   	echo $(basename "$d")
			#   	applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm --in=/mnt/mfs/cndgrid/projects/brickman_cluster/WHICAP_V3B/$(basename "$d")/3D_T2W_FLAIR/WMHF.nii --warp="$d"/my_nonlinear_transf --premat="$d"/func2struct.mat --out="$d"/my_warped_WMHF.nii.gz & 
			# #  	/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/WHICAP_V3B/$(basename "$d")/3D_T2W_FLAIR/WMHF.nii -applyxfm -init "$d"/FLAIR_2_MNI.mat -out "$d"/WMHF_2_MNI.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref "$d"/FLAIR_2_MNI.nii &
			# # # 	/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/training/$(basename "$d")/$(basename "$d")_FLAIR.nii -ref "$d"/3DT1_2_MNI.nii -out "$d"/FLAIR_2_MNI.nii -omat "$d"/FLAIR_2_MNI.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear &
			#   elif [[ $(basename "$d") == *"V4"* ]]; then
			#   	echo $(basename "$d") " is a V4 participant!"
			#   	applywarp --ref=/usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm --in=/mnt/mfs/cndgrid/projects/brickman_cluster/WHICAP_V4/$(basename "$d")/3D_T2W_FLAIR/WMHF.nii --warp="$d"/my_nonlinear_transf --premat="$d"/func2struct.mat --out="$d"/my_warped_WMHF.nii.gz &
			# #  	/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/WHICAP_V4/$(basename "$d")/3D_T2W_FLAIR/WMHF.nii -applyxfm -init "$d"/FLAIR_2_MNI.mat -out "$d"/WMHF_2_MNI.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref "$d"/FLAIR_2_MNI.nii &
			# # # 	/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/training/$(basename "$d")/FLAIR.nii -ref "$d"/3DT1_2_MNI.nii -out "$d"/FLAIR_2_MNI.nii -omat "$d"/FLAIR_2_MNI.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear &
			#   fi
			#/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/training/$(basename "$d")/mask2flair_bet.nii -applyxfm -init "$d"/FLAIR_2_MNI.mat -out "$d"/FLAIR_bet_2_MNI.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref "$d"/FLAIR_2_MNI.nii &

			#/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/PTSD/temp_WMH/$(basename "$d")/FLAIR/FLAIR.nii -ref /mnt/mfs/cndgrid/projects/brickman_cluster/users/kay/atlas/GG-all/GG240240180.nii.gz -out /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/PTSD/temp_WMH/$(basename "$d")/FLAIR/$(basename "$d")_FLAIR.nii -omat /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/PTSD/temp_WMH/$(basename "$d")/FLAIR/$(basename "$d")_FLAIR.mat -bins 256 -cost corratio -searchrx -180 180 -searchry -180 180 -searchrz -180 180 -dof 12  -interp trilinear
			#cp "$d"/orig.nii /share/projects/brickman_cluster/KAY/Templates/$(basename "$d")/orig.nii
			#cp /share/projects/brickman_cluster/WHICAP_V3B/$(basename "$d")/*MPRAGE*/3DT1.nii "$d"/3DT1.nii
			#cp /share/projects/brickman_cluster/WHICAP_V4/$(basename "$d")/*MPRAGE*/3DT1.nii "$d"/3DT1.nii
			#cp /share/projects/brickman_cluster/WHICAP_V3B/$(basename "$d")/*MPRAGE*/3DT1.nii "$d"/3DT1.nii
			#cp /share/projects/brickman_cluster/WHICAP_V4/$(basename "$d")/*MPRAGE*/3DT1.nii "$d"/3DT1.nii  ##orig2flair_bet.nii   brain2flair.nii
			#/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/training/$(basename "$d")/orig2flair_bet.nii -applyxfm -init /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Templates/group_3/$(basename "$d")/orig2T1.mat -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Templates/group_3/$(basename "$d")/orig2T1_bet.nii.gz -paddingsize 0.0 -interp nearestneighbour -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/Templates/group_3/$(basename "$d")/orig2T1.nii.gz &
			#/usr/local/fsl/5.0.7/bin/flirt -in "$d"/3DT1.nii -ref /usr/local/fsl/5.0.7/data/standard/MNI152_T1_2mm.nii.gz -out "$d"/3DT1_2_MNI.nii -omat "$d"/3DT1_2_MNI.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear &

			#if [[ ! -f "$d"/3DT1.nii ]]; then
			#	echo $(basename "$d")
			# 	# co20180410_111226MPRAGE1x1x1SENSEWHICAPX16754V4s301a1003.nii
			# 	#mv 3DT1.nii label_3DT1.nii
			# 	#cp o* 3DT1.nii
			# 	cd "$d"/*MPRAGE*
			# 	i=0
			# 	while read line
			# 	do
			# 	    array[ $i ]="$line"        
			# 	    (( i++ ))
			# 	done < <(ls o*)

			# 	echo ${array[1]}
			# 	mv ${array[1]} 3DT1.nii
			# 	cd ..; cd ..
			#fi


			# if [[ ! -f "$d"/FLAIR/FLAIR.nii ]]; then
			# 	echo $(basename "$d")
			# 	mv "$d"/FLAIR/2* "$d"/FLAIR/FLAIR.nii
			# fi
			#cp "$d"/WMHF.nii /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/V3B/outputs_for_30/${x:6:12}/WMHF_W2MMH.nii
			#touch $(basename "$d")_erase.txt
			#cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_FS/Einstein_FreeSurfer/$(basename "$d")_FS/mri/aseg.nii "$d"/aseg.nii
			#cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_WMH/old_images/$(basename "$d")/DICOM/DICOM/*T1W* "$d"/3DT1/$(basename "$d")_T1.dicom
			#cp /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_WMH/old_images/dicoms_all/$(basename "$d")/*AgingStudy*/DICOM/*T1W* "$d"/3DT1/$(basename "$d")_T1.dicom
			#mri_convert "$d"/mdri/aparc+aseg.mgz "$d"/mri/aparc+aseg.nii 
	#/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/V4/$(basename "$d")/orig.nii -ref /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/V4/$(basename "$d")/FLAIR.nii -out /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/V4/$(basename "$d")/orig2flair.nii -omat /mnt/mfs/cndgrid/projects/brickman_cluster/KAY/BrainEXTRACTION/V4/$(basename "$d")/orig2flair.mat -bins 256 -cost corratio -searchrx -90 90 -searchry -90 90 -searchrz -90 90 -dof 6  -interp trilinear
	#/usr/local/fsl/5.0.7/bin/flirt -in /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_WMH/$(basename "$d")/FLAIR/reoriented_co_brain.nii.gz -ref /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_WMH/$(basename "$d")/FLAIR/FLAIR_bet0.nii -out /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_WMH/$(basename "$d")/FLAIR/orig2flair.nii.gz -omat /mnt/mfs/cndgrid/projects/brickman_cluster/buffer/Einstein/temp_WMH/$(basename "$d")/FLAIR/orig2flair.mat -bins 256 -cost corratio -searchrx -180 180 -searchry -180 180 -searchrz -180 180 -dof 6  -interp trilinear
	# Apply Warp
	#/usr/local/fsl/5.0.7/bin/flirt -in /share/projects/brickman_cluster/WHICAP_V4/V4_FreeSurfer/$(basename "$d")_FS/mri/aparc+aseg.nii -applyxfm -init "$d"/orig2flair.mat -out "$d"/aparc+aseg2flair.nii -paddingsize 0.0 -interp nearestneighbour -ref "$d"/orig2flair.nii
			########################################### DO THIS after mri_convert##############################################
			#cp /share/projects/brickman_cluster/WHICAP_V4/$(basename "$d")/3D_T2W_FLAIR/FLAIR.nii "$d"/FLAIR.nii             #
			#cp /share/projects/brickman_cluster/WHICAP_V4/$(basename "$d")/3D_T2W_FLAIR/FLAIR_bet.nii "$d"/FLAIR_bet_FSL.nii #
			#cp /share/projects/brickman_cluster/WHICAP_V4/V4_FreeSurfer/$(basename "$d")_FS/mri/orig.nii "$d"/orig.nii		  #
			#cp /share/projects/brickman_cluster/WHICAP_V4/V4_FreeSurfer/$(basename "$d")_FS/mri/brain.nii "$d"/brain.nii	  #
			###################################################################################################################
done

