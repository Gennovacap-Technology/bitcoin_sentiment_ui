class SentimentController < ApplicationController
  def index
  end

  def analyze
    keywords = params[:keywords].split(/\r\n/)
    feeds = params[:feeds].split(/\r\n/)

    sentiment = BitcoinSentiment.build(keywords: keywords, feeds: feeds, api_key: params[:api_key])
    @results = sentiment.fetch
  end
end
