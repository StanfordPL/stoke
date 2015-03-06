  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x4a0
#! rip-offset  0x4004a0
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  
.__do_global_dtors_aux:        #        0x4004a0  0      
  cmpb $0x0, 0x200b91(%rip)    #  1     0x4004a0  7      
  jne .L_4004ba                #  2     0x4004a7  6      
  pushq %rbp                   #  3     0x4004ad  2      
  movq %rsp, %rbp              #  4     0x4004af  3      
  callq .deregister_tm_clones  #  5     0x4004b2  5      
  popq %rbp                    #  6     0x4004b7  2      
  movb $0x1, 0x200b78(%rip)    #  7     0x4004b9  7      
.L_4004ba:                     #        0x4004c0  0      
  retq                         #  8     0x4004c0  1      
  nop                          #  9     0x4004c1  1      
                                                         
.size __do_global_dtors_aux, .-__do_global_dtors_aux

