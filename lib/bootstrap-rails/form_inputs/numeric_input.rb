class NumericInput < SimpleForm::Inputs::TextInput
  def input
    "<div class='input'>#{super}</div>".html_safe
  end
end