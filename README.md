# app
sinatra template

## setup
```
bundle install
```



# usage([procsd](https://github.com/vifreefly/procsd))

## commands
```
Commands:
  procsd --version, -v   # Print the version
  procsd config          # Print config files based on current settings. Available types: sudoers
  procsd create          # Create and enable app services
  procsd destroy         # Stop, disable and remove app services
  procsd disable         # Disable app target
  procsd enable          # Enable app target
  procsd exec            # Run app process
  procsd help [COMMAND]  # Describe available commands or one specific command
  procsd list            # List all app services
  procsd logs            # Show app services logs
  procsd restart         # Restart app services
  procsd start           # Start app services
  procsd status          # Show app services status
  procsd stop            # Stop app services
```

## create systemd file(.service&.target)
```
bundle exec procsd create
```

## start
```
bundle exec procsd start
```

## stop
```
bundle exec procsd stop
```


## restart
```
bundle exec procsd restart
```

## enable service
```
bundle exec procsd enable
```

# debug

## systemd status
```
bundle exec procsd status
```

## systemd log
```
bundle exec procsd logs
```


