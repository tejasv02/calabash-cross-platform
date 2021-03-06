if defined?(Calabash) && defined?(Calabash::Cucumber)
  require 'calabash-cucumber/operations'
  class CallbackWorld
    include ::Calabash::Cucumber::Operations

    def on_launch
      begin
        wait_for_elements_exist(["alertView label text:'Update Available'"], :timeout => 30)
        wait_for_animation
        touch("view marked:'Dismiss'")
      rescue Calabash::Cucumber::WaitHelpers::WaitError
        #May not appear so ignore timeout error
      end
    end
  end

  World do
    ::CallbackWorld.new
  end

  After('@new_article') do |scenario|

    @page.delete_top_article_if_matches(POSTS[:new])

  end
end
