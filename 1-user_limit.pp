#increaing  the file limit of user 'Holberton'

exec { 'fix_limit_hbton_user':
  command => 'sed -i "/holberton hard/s/5/10000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
exec { 'increase_soft_file':
  command => 'sed -i "/holberton soft/s/4/20000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}i
