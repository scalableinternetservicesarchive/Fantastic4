module EventsHelper
  def cache_key_for_event_table(events,marker)
    @date = []
    @events.each do |event|
      @date.push(event.updated_at)
    end
    puts "HAHA #{@marker}"
    "event-table-#{@date.max}-#{@marker}"
  end
  
  
  def cache_key_for_event_row(event)
     "event-#{event.id}-#{event.updated_at}-#{event.post_count}"
  end
end
