"""Script to download my youtube stuff"""
import sys
import youtube_dl

def main():
	"""Main entry point"""
	downloadUrl('https://www.youtube.com/user/Jayztwocents/videos')
	pass

def downloadUrl(url):
	ydl_opts = {
		"download_archive": "archive.txt",
		"restrictfilenames": True,
		"format": "best",
		"playlistend": 15,
		"outtmpl": "~/storage/movies/%(uploader)s/%(title)",
		"daterange": youtube_dl.DateRange("now-1month")
	}
	with youtube_dl.YoutubeDL(ydl_opts) as ydl:
		try:
			result = ydl.download([url])
		except Exception as inst:
			print(inst)   
	pass

if __name__ == '__main__':
	sys.exit(main())
