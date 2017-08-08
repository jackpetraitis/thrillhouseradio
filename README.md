## Modifications to the popular internet radio station streaming platform

Might link up with song artist/album art info pusher app I also downloaded

Add a todo list with following items

* TO-DO List

* Thrillhouserad.io v2 Goals
	+ Guest DJs
	+ Selected Guest Control via HTTPS
	+ Browse the library and add a request to play
	+ Crowdsourced Song Choosing Via Tweets
	+ Auto-updating youtube-dl lists from time to time
	+ Create a list of the 10 most recently played songs, requires a light DB backend
	+ Create another mountpoint with just rap music
	+ updated Material Design UI
* Thrillhouserad.io v3 Musings
	+ Auto-fix metatags with mp3tag, taking consideration for %artist%- %title, %artist (en dash) %title, and %artist-%title
	+ Android app with Bluetooth audio and controls
	+ iPhone app with Bluetooth audio and controls
	+ Upload your songs!
	+ hopefully ditching the .xsl files at some point for something easier to configure







CHANGELOG

* Did today 8/1/2017
+ configured Title element with javascript to update with the song and artist information
+ tweaked site metadata information with title changes until it worked well with my car's bluetooth

* Did today 12/29
+ configured icecast
+ Did a test run with aesop rock in foobar2000
+ Added icecast info into vorbis streamer
+ Set startup programs for icecast/foobar
+ Set foobar to auto-resume what it was playing before
+ Configured windows to auto-login after restart
+ turned off windows sounds (so listeners dont hear nuthin)

* Did today 2/20
 + Made a bunch of progress on the radio in the last hour and a half.
 + Added an auto-updating nowplaying box. 
 + It also has current listener count information. 
 + I fixed some element inconsistencies for devices under 1024px. 
 + I should try using this php-youtube downloader class for PHP next time I want to work on the station. 
 + I think here I'll be able to allow my DJs to add their own songs to the library. 
 + And then eventually I can port this PHP downloader to some sort of service that can do it for you for Spotify, Google Play Music, and Soundcloud.
 + Throw ads on it and make skrilla.
 

