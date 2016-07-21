module StaticPagesHelper

  def get_operating_system
  if request.env['HTTP_USER_AGENT'].downcase.match(/mac/i)
    "MacOS"
  elsif request.env['HTTP_USER_AGENT'].downcase.match(/windows/i)
    "Windows"
  elsif request.env['HTTP_USER_AGENT'].downcase.match(/linux/i)
    "Linux"
  elsif request.env['HTTP_USER_AGENT'].downcase.match(/unix/i)
    "Unix"
  else
    "Unknown"
  end
end
end
