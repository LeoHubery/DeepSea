switch kernel:
  module.run:
    - name: kernel.replace
    - kwargs:
        os: 
          SUSE: 
            kernel: kernel-default
            candidates:
            - kernel-default-base

zypper update only kernel:
  module.run:
    - name: packagemanager.up
    - kwargs:
        'reboot': True
        'debug': True
        'kernel': True
    - fire_event: True

