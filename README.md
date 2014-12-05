android_device_lge_p715
=======================

LG Optimus L7 - p715

Getting Started
---------------

To get started with Android/CyanogenMod, you'll need to get
familiar with [Git and Repo](http://source.android.com/source/using-repo.html).

To initialize your local repository using the CyanogenMod trees, use a command like this:

     repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Copy local_manifests.xml in .repo/local_manifests
---------------
<?xml version="1.0" encoding="UTF-8"?> 
         <remove-project name="CyanogenMod/android_frameworks_native" />
     
    	 <project path="hardware/qcom/display-legacy" name="legaCyMod/android_hardware_qcom_display-legacy" remote="github" revision="cm-11.0" />
         <project path="frameworks/native" name="legaCyMod/android_frameworks_native" revision="cm-11.0" />
	 <project path="hardware/qcom/media-legacy" name="Dazzozo/android_hardware_qcom_media-legacy" remote="github" revision="kitkat" />
         <project path="external/webkit" name="Dazzozo/android_external_webkit" revision="kitkat" />
         <project path="device/lge/msm7x27a-common" name="HuaweiLiquid/android_device_lge_msm7x27a-common" revision="cm-11.0" />
         <project path="device/lge/p715" name="HuaweiLiquid/android_device_lge_p715" revision="cm-11.0" />
         <project path="kernel/lge/p715" name="TeamHackLG/lge-kernel-lproj" revision="android-msm-3.4-kk" />
         <project path="vendor/lge" name="TeamHackLG/proprietary_vendor_lge" revision="cm-11.0" remote="github"/>
 
</manifest>
---------------

     repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Then to sync up:

     repo sync
    
Then:    

      vendor/cm/get-prebuilts
    
     . build/envsetup.sh

     brunch p715
