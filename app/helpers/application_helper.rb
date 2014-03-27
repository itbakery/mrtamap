module ApplicationHelper
  def icon(*names)
    content_tag(:span, nil, :class => icon_classes(names))
  end

  private
  def icon_classes(*names)
    final = "glyphicon"
    names[0].each do |n|
      final = final+" " + "glyphicon-" + n.to_s + " "
    end
    return final
  end
end
