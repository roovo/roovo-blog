require 'rake/contrib/sshpublisher'

namespace :deploy do

  desc 'Deploy to the server using ssh over a custom port (SITE.ssh_port)'
  task :custom_ssh do
    sh %{scp -rq -P #{SITE.ssh_port} #{SITE.output_dir}/* #{SITE.user}@#{SITE.host}:#{SITE.remote_dir}}
  end

end  # deploy

# EOF
