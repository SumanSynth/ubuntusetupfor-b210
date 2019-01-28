
#!/bin/bash
##################################################
# Title: GNU Radio Local PC test
# Author: Suman Kumar Das
# Generated: Wed Nov  1 11:52:29 2017
##################################################
# for both audio and video

#xterm -title "Tx_udp" -e  "cvlc v4l2:///dev/video0 --live-caching=300 --sout '#transcode{vcodec=mp1v,vb=128,fps=27,scale=Auto,width=176,height=144,acodec=mpga,ab=32,channels=1,samplerate=8000}:std{access=udp{caching=300},mux=raw,dst=127.0.0.1:5003},dst=display'" & 


#for video only

xterm -title "Tx_udp" -e  "cvlc v4l2:///dev/video0 --live-caching=300 --sout '#transcode{vcodec=mp1v,vb=128,fps=27,scale=Auto,width=176,height=144,acodec=none}:std{access=udp{caching=300},mux=raw,dst=127.0.0.1:5003},dst=display'" &

echo "udp streaming started 127.0.0.1:5003"
echo "receicer started udp://@:5005"

xterm -title "Rx_udp" -e  "vlc --network-caching 300 udp://@:5005" 

echo "done!"


#:sout=#transcode{vcodec=mp1v,vb=128,fps=25,scale=Auto,width=176,height=144,acodec=none}:duplicate{dst=udp{mux=ts,dst=127.0.0.1:5003},dst=display} :sout-keep


#vcodec=mp1v,vb=128,fps=25,scale=Auto,width=176,height=144,acodec=none
