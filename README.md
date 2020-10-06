# youtube2mp3

A rudimentary bash script in order to download a bunch of playlist/songs from youtube

## Getting started

1. install manually youtube-dl

```
sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
hash -r
```

2. save urls of your favorite public songs/playlists

```
echo https://www.youtube.com/watch?v=9SBNCYkSceU >> urls.txt
echo https://www.youtube.com/watch?v=9SBNCYkSceU&list=PLC772F42251C6522B >> urls.txt
```

3. set correct rights

```
sudo chmod +x youtube2mp3.sh
```

4. launch download

```
./youtube2mp3.sh -o /your/directory/for/mp3s/ urls.txt 
```

###### #bash #script
