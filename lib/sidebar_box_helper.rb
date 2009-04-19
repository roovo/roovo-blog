module SidebarBoxHelper

  def block_to_partial(partial_name, options = {}, &block)
    options.merge!(:body => capture_erb(&block))
    concat_erb(render(:partial => partial_name, :locals => options), block.binding)
  end

  def sidebar_box(title, options = {}, &block)
    block_to_partial('/side_bar_box', options.merge(:title => title), &block)
  end
end

Webby::Helpers.register(SidebarBoxHelper)
