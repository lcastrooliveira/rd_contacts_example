module ContactsHelper
  PRETTY = { '/index.html' => 'Home',
             '/about.html' => 'Sobre',
             '/contact.html' => 'Contato',
             '/pricing.html' => 'Preço' }
  PRETTY.default = 'Desconhecida'
  PRETTY.freeze

  def pretty_urls(pages)
    return if pages.empty?
    cool_names = []
    pages.each do |page|
      cool_names.push(PRETTY[page['url']])
    end
    cool_names.join(' - ')
  end

  def pretty_date(date)
    return ' - ' unless date
    begin
      a = date.to_datetime
      a.in_time_zone('Brasilia').strftime('%d/%m/%y %R %Z')
    rescue ArgumentError
      return ' - '
    end
  end
end
