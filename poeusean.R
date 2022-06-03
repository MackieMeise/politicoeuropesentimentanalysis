# Create Twitter token
poeusean_token <- rtweet::create_token(
  app = "PolitcoEUSentimentTracker",
  consumer_key =    Sys.getenv("TWITTER_CONSUMER_API_KEY"),
  consumer_secret = Sys.getenv("TWITTER_CONSUMER_API_SECRET"),
  access_token =    Sys.getenv("TWITTER_ACCESS_TOKEN"),
  access_secret =   Sys.getenv("TWITTER_ACCESS_TOKEN_SECRET")
)

# Post the image to Twitter
rtweet::post_tweet(
  status = "Hello, this is yet another test #rstats",
  token = poeusean_token
)
