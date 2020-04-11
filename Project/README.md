# Mp3-Player application

**Description :
1. Generic System Requirements
   * GSR_1 - The RPI Image shall have one user “root” with password “12345”.
   * GSR_2 - The RPI Image shall use glibc as the default C-Library.
   * GSR_3 - The RPI Image shall have a shell prompt “MP3_Shell>”.
   * GSR_4 - The MP3 Player Shall be packaged firmly with no loose wires, buttons, battery or connectors.
   * GSR_5 - Any software built, Configuration used, or Scripts written shall be integrated in the
             Buildroot system and the full image can be regenerated using only the "make" command.
  * Any scripts, code, configuration delivered should be documented/commented out.
2. Feature-Specific System Requirements
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
3. "Manual Control of Music Player (Play/Pause, Next, Previous, Shuffle), either via Push Buttons and
         Keyboard Commands."
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



