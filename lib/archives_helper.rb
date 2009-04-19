module ArchivesHelper

  def archives_hash
    return @archives_hash if @archives_hash
    @archives_hash = {}
    posts.each do |post|
      hash_date = Date.civil(post.created_at.year, post.created_at.month, 1)
      @archives_hash[hash_date] ||= 0
      @archives_hash[hash_date] += 1
    end
    @archives_hash
  end
end

Webby::Helpers.register(ArchivesHelper)
