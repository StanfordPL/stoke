  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x1910
#! rip-offset  0x401910
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.__do_global_dtors_aux:        #        0x401910  0      OPC=0     
  cmpb $0x0, 0x223aa1(%rip)    #  1     0x401910  7      OPC=461   
  jne .L_40192a                #  2     0x401917  6      OPC=963   
  nop                          #  3     0x40191d  1      OPC=1343  
  nop                          #  4     0x40191e  1      OPC=1343  
  pushq %rbp                   #  5     0x40191f  1      OPC=1861  
  movq %rsp, %rbp              #  6     0x401920  3      OPC=1162  
  callq .deregister_tm_clones  #  7     0x401923  5      OPC=260   
  popq %rbp                    #  8     0x401928  1      OPC=1694  
  movb $0x1, 0x223a8e(%rip)    #  9     0x401929  7      OPC=1140  
.L_40192a:                     #        0x401930  0      OPC=0     
  retq                         #  10    0x401930  1      OPC=1978  
  nop                          #  11    0x401931  1      OPC=1343  
  nop                          #  12    0x401932  1      OPC=1343  
  nop                          #  13    0x401933  1      OPC=1343  
  nop                          #  14    0x401934  1      OPC=1343  
  nop                          #  15    0x401935  1      OPC=1343  
                                                                   
.size __do_global_dtors_aux, .-__do_global_dtors_aux

