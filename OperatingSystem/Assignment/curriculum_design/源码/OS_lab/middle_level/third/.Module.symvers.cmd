cmd_/home/lumos/OS_lab/middle_level/third/Module.symvers := sed 's/ko$$/o/' /home/lumos/OS_lab/middle_level/third/modules.order | scripts/mod/modpost -m -a  -o /home/lumos/OS_lab/middle_level/third/Module.symvers -e -i Module.symvers   -T -
