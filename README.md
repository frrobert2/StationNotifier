This is a fork of https://github.com/ThatsRedacted/StationNotifier

The orginal version uses a version of curl that supported gemini.  

Due to library issues on Ubuntu I could not get the version of curl that supports Gemini to run correctly.

My version of the script, notificatorossl, uses openssl rather than curl.

I did add an option to run amfora if you have a notification.  I have not been ablle to test it yet.

Besides changing the variables key, cert, url you should also change the number next to sleep.  Currently if you run either version the script will check for notifications every minute.  You may want to increase that time so you are not hitting the site that often.

### Original Reademe from Original Version

# StationNotifier
Simple CLI notifier for Station

You can find me here:

gemini://station.martinrue.com/thatsredadcted

# Making it work

Fill out variables in the script and run it. Should work just fine, but don't quote me on that.

Here's link to [cURL](https://git.burwell.io/mirrors/curl/) if you need one.
