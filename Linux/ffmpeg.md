# FFMPEG

Commanr for recording:  

    ffmpeg -r 25 -f x11grab -s 1920x1080 -i :0.0 -f alsa -i default -c:v libx264rgb -crf 0 -preset ultrafast /home/david/Files/Pictures/ScreenCasts/screen_cast_$(date +%Y%m%d-%H%M%S).mp4
    
Med snemanjem je CPU kar obremenjen 110% - 150% ,  file pa je velik 50MB/min  
Nato narediš convert:  

    ffmpeg -i input_file.mp4 -c:v libx264 -crf 35 -preset medium -vf format=yuv420p output_file.mp4

Če video nalagaš na YT ali pa ga gledaš v ne-win predvajalnikih, potem lahko tudi '-cvf format=yuv420p' izpustiš.

| -crf |  -preset | size MB/min | Kvaliteta?               |
|:----:|:--------:|:-----------:|--------------------------|
|  25  |  medium  |     3.5     | ni popačenja super je    |
|  35  |  medium  |     2.2     | ja na meji OK            |
|  35  | veryslow |     2.1     | bolje, dolgo traja conv. |

Table: Vpliv koeficientov pri konverziji. {#tbl:ffmpeg-conversin}
