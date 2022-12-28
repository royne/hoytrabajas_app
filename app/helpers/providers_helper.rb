module ProvidersHelper

  def text_to_display str 
    str.empty? ? t('provider.table.blank') : str
  end

end
