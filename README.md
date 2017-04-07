# sysbench-talk


# Setup the VM

To setup the vm you will need ansible and vagrant running in your system. For this particular test we use the vagrant box `centos/7`.

```{r, engine='bash', count_lines}
$ git clone git@github.com:martinarrieta/sysbench-talk.git
$ cd sysbench-talk
$ vagrant up
$ vagrant ssh
[vagrant@PerformanceMeetup ~]$ sysbench --version
sysbench 1.1.0
```
