module ApplicationHelper

  def class_for_sentiment(value)
    if value > 0
      'success'
    elsif value < 0
      'danger'
    else
      'active'
    end
  end

  def text_for_sentiment(value)
    if value > 0
      'Positive'
    elsif value < 0
      'Negative'
    else
      'Neutral'
    end
  end

end
