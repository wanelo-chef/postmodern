case node.platform
when 'ubuntu'
  package 'postgresql'
  package 'libpq-dev'
when 'omnios'
  package 'postgresql-934'
  package 'libpq5'
when 'smartos'
  package 'postgresql92-client-9.2.4'
end
