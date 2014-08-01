@template_root = File.expand_path(File.join(File.dirname(__FILE__)))
@defaults_path = File.join(@template_root, 'defaults')
@options_path = File.join(@template_root, 'options')

# defaults
apply "#{@defaults_path}/gem.rb"
apply "#{@defaults_path}/config.rb"
apply "#{@defaults_path}/generate.rb"
apply "#{@defaults_path}/spec.rb"
apply "#{@defaults_path}/unicorn.rb"

# options
apply "#{@options_path}/devise.rb" if yes?('use devise? [yes or ELSE]')
apply "#{@options_path}/activeadmin.rb" if yes?('use activeadmin? [yes or ELSE]')
apply "#{@options_path}/redis.rb" if yes?('use Redis? [yes or ELSE]')

# finalize
apply "#{@defaults_path}/git.rb"
