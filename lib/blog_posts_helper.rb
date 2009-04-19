module BlogPostsHelper

  # find all blog posts
  def posts(limit=:all, find_options=nil)
    options = { :in_directory   => 'posts', 
                :recursive      => true,
                :blog_post      => true,
                :sort_by        => "created_at",
                :reverse        => true }
    options.merge!(find_options) if find_options
    ::Webby::Resources.pages.find(limit, options)
  end
end

Webby::Helpers.register(BlogPostsHelper)
