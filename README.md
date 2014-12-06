android_device_lge_p715
=======================

LG Optimus L7 - p715

Getting Started
---------------

To get started with Android/CyanogenMod, you'll need to get
familiar with [Git and Repo](http://source.android.com/source/using-repo.html).

To initialize your local repository using the CyanogenMod trees, use a command like this:

     repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

Copy content of local_manifests in .repo/local_manifests/local_manifests.xml

Then to sync up:

     repo sync
    
Then:    

    vendor/cm/get-prebuilts
    
    . build/envsetup.sh

    brunch p715
    
Or all in one 
    
    repo sync && vendor/cm/get-prebuilts && . build/envsetup.sh
    
and than 

    brunch p715
    
