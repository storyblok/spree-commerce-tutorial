module ApplicationHelper
  def storyblok_preview_token
    'BzC50wcaELE5GSczQJ5sEQtt'
  end

  def storyblok_js_bridge
    "<script src=\"//app.storyblok.com/f/storyblok-latest.js?t=#{storyblok_preview_token}&autoReload=1\"></script>"
  end

  def get_story_by_slug slug
  	begin
  	  client = Storyblok::Client.new(token: storyblok_preview_token)
  	  return client.story(slug)
  	rescue RestClient::NotFound
      return nil
  	end
  end
end
