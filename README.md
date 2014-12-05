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

Then to sync up:

     repo sync
    
Then:    

      vendor/cm/get-prebuilts
    
     . build/envsetup.sh

     brunch p715
