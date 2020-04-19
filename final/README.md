# Mp3-Player application


## Configurations :
- remove the compiler cache from ~/.buildroot-cchace  
- make clean
- Adding configuration build root (make menuconfig)
- make

#### Generic System
```
-  System Configuration ->  Root Password (12345)
-                       ->  Root Filename (Add Overlay path)
-  Toolchain            -> C library (glibc)
-  Overlay File -> etc  -> Profile (export PS1='MP3_Shell>')
```
#### Audio
```
- Target Package        -> Audio and video applications -> alsa-utils    
                                                                  - alsaconf                                                  
                                                                  - alsactl                                                     
                                                                  - alsaloop                                                    
                                                                  - alsaucm                                                    
                                                                  - alsatplg 
                                                         -> aumix 
                                                         -> mpg123
                                                         -> portaudio 
   
 - in buildroot path     -> package/busibox/busibox.config  -> CONFIG_SHUF=y  
                         -> package/rpi-firmware/config.txt -> dtparam=audio=on
```
#### Text to Speech
```
- Target Package        -> Audio and video applications -> espeak ( alsa via portaudio )
```


## Requirment :
1. Generic System Requirements
```
  * GSR_1 - The RPI Image shall have one user “root” with password “12345”.
  * GSR_2 - The RPI Image shall use glibc as the default C-Library.
  * GSR_3 - The RPI Image shall have a shell prompt “MP3_Shell>”.
  * GSR_4 - The MP3 Player Shall be packaged firmly with no loose wires, buttons, battery or connectors.
  * GSR_5 - Any software built, Configuration used, or Scripts written shall be integrated in the
             Buildroot system and the full image can be regenerated using only the "make" command.
  * Any scripts, code, configuration delivered should be documented/commented out.
  ```
2. Feature-Specific System Requirements
```
  * Feat1 "Auto detection of mass-storage devices that can be connected via USB (e.g. Flash, Memory Card)."
  * FSSR_1 - The MP3 Player shall continuously check for new inserted mass storage devices.
  * FSSR_2 - The MP3 Player shall keep track of all .MP3 files available on any storage media.
  * FSSR_3 - The MP3 Player shall be able to play any .MP3 file for the connected storage devices.
  * FSSR_4 - The MP3 Player shall be able to detect and Read from USB Flash Storage Devices.
  * FSSR_5 - The MP3 Player shall be able to detect and Read from Memory Card Devices including
                the image Disk.
  * FSSR_6 - The MP3 Player shall not modify the content of any connected mass storage device.
  * FSSR_7 - The MP3 Player shall handle adding and removing of media devices while playing or
            pausing, Playing should not stop unless the media containing the file is removed.
 ```
3. "Manual Control of Music Player (Play/Pause, Next, Previous, Shuffle), either via Push Buttons and Keyboard Commands."
```
  * FSSR_8 - The MP3 Player shall control playing the .MP3 files by pressing the "Play/Pause" push button.  
  * FSSR_9 - The MP3 Player shall jump to the next song when pressing the "Next" push button.
  * FSSR_10 - The MP3 Player shall restart the current song on pressing the "Previous" push button once.
  * FSSR_11 - The MP3 Player shall play the previous song when pressing the "Previous" push button two
            successive times within 1 Second.
  * FSSR_12 - The MP3 Player shall jump to a random song when pressing the "Shuffle" push button.
  * FSSR_13 - The MP3 Player shall start playing the .MP3 files when entering "play" on the commandline.
  * FSSR_14 - The MP3 Player shall pause the played .MP3 file when entering "pause" on the commandline.
  * FSSR_15 - The MP3 Player shall skip to the next song when entering "next" on the commandline.
  * FSSR_16 - The MP3 Player shall play the previous song when entering "previous" on the commandline.
  * FSSR_17 - The MP3 Player shall jump to a random song when entering "shuffle" on the commandline.
```  
4. Feat4 "Streaming of the played music on the terminal (SSH terminal over Ethernet/Wifi, Serial terminal)."
```
  * FSSR_27 - The Output Image shall have static network IP "192.168.1.6" and netmask "255.255.255.0".
  * FSSR_28 - The MP3 Player shall have the ssh enabled on startup and accessible via "root" user.
  * FSSR_29 - The MP3 Player Shall Greet the user on any new connected serial/ssh terminal with this 
            greeting text "Welcome to BuildRoot MP3 Player" once.
  * FSSR_30 - The MP3 Player shall output on the serial/ssh terminal 
            "MP3 Playing > [File_Name.mp3] Via [audio device name]" when starting playing .MP3 file.
  * FSSR_31 - The MP3 Player shall output on the serial/ssh terminal "MP3 Paused > [File_Name.mp3]" when 
            pausing the .MP3 file.
  * FSSR_32 - The MP3 Player shall output on the serial/ssh terminal "No .MP3 files found" when it can't find 
            any .mp3 file on the system.
  * FSSR_33 - The MP3 Player shall refresh the data outputted on the serial/ssh terminal every 1 second.
```        
5. Feat5 "Audio and Text Notifications about System changes (e.g. Inserting/removing storage/audio devices)."
```
  * FSSR_34 - The MP3 Player shall speak out (Text-to-Speech) a notification when an audio device is connected 
            or disconnected.
  * FSSR_35 - The MP3 Player shall speak out (Text-to-Speech) a notification when a storage device is added 
            or removed.
  * FSSR_36 - The MP3 Player shall output the audio notification on the highest priority audio device available.
```

    


   
   



