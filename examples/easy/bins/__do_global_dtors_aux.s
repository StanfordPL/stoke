  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x550
#! rip-offset  0x400550
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.__do_global_dtors_aux:        #        0x400550  0      OPC=0     
  cmpb $0x0, 0x200ae9(%rip)    #  1     0x400550  7      OPC=461   
  jne .L_40056a                #  2     0x400557  6      OPC=963   
  nop                          #  3     0x40055d  1      OPC=1343  
  nop                          #  4     0x40055e  1      OPC=1343  
  pushq %rbp                   #  5     0x40055f  1      OPC=1861  
  movq %rsp, %rbp              #  6     0x400560  3      OPC=1162  
  callq .deregister_tm_clones  #  7     0x400563  5      OPC=260   
  popq %rbp                    #  8     0x400568  1      OPC=1694  
  movb $0x1, 0x200ad2(%rip)    #  9     0x400569  7      OPC=1140  
.L_40056a:                     #        0x400570  0      OPC=0     
  retq                         #  10    0x400570  1      OPC=1978  
  nop                          #  11    0x400571  1      OPC=1343  
  nop                          #  12    0x400572  1      OPC=1343  
  nop                          #  13    0x400573  1      OPC=1343  
  nop                          #  14    0x400574  1      OPC=1343  
  nop                          #  15    0x400575  1      OPC=1343  
                                                                   
.size __do_global_dtors_aux, .-__do_global_dtors_aux

