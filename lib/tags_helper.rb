module TagsHelper

  def tags_hash
    return @tags_hash if @tags_hash
    @tags_hash = {}
    posts.each do |post|
      post.tags.each do |tag|
        @tags_hash[tag] ||=0
        @tags_hash[tag] += 1
      end if post.tags
    end
    @tags_hash
  end
  
  def write_tags(page)
    output = page.tags.collect do |t|
     "<a href='/tags/#{t}.html'>#{t}</a>"
    end
    
    output.join(', ')
  end
  
  def posts_with_tag(tag, limit=:all, find_options=nil)
    posts.delete_if { |post| !(post.tags && post.tags.include?(tag)) }
  end
end

Webby::Helpers.register(TagsHelper)
