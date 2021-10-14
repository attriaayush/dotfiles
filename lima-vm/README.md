# Setup for containerd and nerdctl 
Using [lima-vm](https://github.com/lima-vm/lima) that launches virtual machines with automatic file sharing, port-forwarding and containerd.

## Installation
- `brew install lima`
- Start lima using `limactl start`

## Updated Network Settings
To expose multiple guest ports to the host for instance when using `nerdctl compose`, setup [vde_vmnet](https://github.com/lima-vm/vde_vmnet).

Then copy [lima default configuration](./lima.yaml) to `~/.lima/default/lima.yaml` 
