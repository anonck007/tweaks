#This is a script for converting whole raw video files on a folder to MP4 format.
for i in *.MOV;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -q:v 0 "${name}.mp4"
done
