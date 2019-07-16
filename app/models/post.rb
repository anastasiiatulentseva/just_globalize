class Post < ApplicationRecord
  translates :title, :text

  def cache_key
    super + '-' + Globalize.locale.to_s
  end

end
