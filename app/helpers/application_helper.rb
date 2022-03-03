module ApplicationHelper

  def cart_count_over_one
    if cart_has_items
      "<span class='text-primary'>#{cart_has_items}</span>".html_safe
    end
  end


  def cart_has_items
    total = @cart.line_items.map{ |item| item.quantity }.sum #error occurs here
    total if total > 0
  end

end
