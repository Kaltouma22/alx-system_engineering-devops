# Declare Identity File
augeas { 'Declare identity file':
  context => '/files/etc/ssh/ssh_config',
  changes => [
    'set Host/*[.="*"]/IdentityFile "~/.ssh/school"',
  ],
}

# Turn Off password authentication
augeas { 'Turn off passwd auth':
  context => '/files/etc/ssh/ssh_config',
  changes => [
    'set Host/*[.="*"]/PasswordAuthentication "no"',
  ],
}
