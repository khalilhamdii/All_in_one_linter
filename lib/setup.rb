#lib/setup.rb

class Setup

  def initialize(path,lang)
    @path = path
    @lang = lang
  end 

  def start_setup

    if @lang == 1
      FileUtils.cp_r('./linters/html/.', "#{@path}")
      system("npm install --save-dev hint@6.0.x")
    elsif @lang == 2
      FileUtils.cp_r('./linters/css/.', "#{@path}")
      system("npm install --save-dev stylelint@13.3.x stylelint-scss@3.17.x stylelint-config-standard@20.0.x stylelint-csstree-validator")
    elsif @lang == 3
      FileUtils.cp_r('./linters/ruby/.', "#{@path}")
      system("gem instal rubocop")
    elsif @lang == '3+'
      FileUtils.cp_r('./linters/ruby-rspec/.', "#{@path}")
      FileUtils.cd("#{@path}") do
        system("gem instal rubocop")
        system("gem instal rspec")
        system("rspec --init")
      end 
    end
  end

end