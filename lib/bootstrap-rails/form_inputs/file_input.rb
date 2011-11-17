class FileInput < SimpleForm::Inputs::FileInput
  def input
    "<div class='input'>#{super}</div>".html_safe
  end
end