
builder.url do
  builder.loc archive_url(Time.zone.now.year)
  builder.changefreq 'monthly'
  builder.priority '0.3'
end
archive = site.archive
this_year = Time.zone.now.year
archive.years.each do |year, count|
  builder.url do
    builder.loc archive_url(year)
    if year == this_year
      builder.changefreq 'weekly'
      builder.priority '0.5'
    else
      builder.changefreq 'monthly'
      builder.priority '0.3'
    end
  end
end
