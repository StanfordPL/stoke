  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x520
#! rip-offset  0x400520
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
.__do_global_dtors_aux:        #        0x400520  0      OPC=<label>       
  cmpb $0x0, 0x200b19(%rip)    #  1     0x400520  7      OPC=cmpb_m8_imm8  
  jne .L_40053a                #  2     0x400527  2      OPC=jne_label     
  pushq %rbp                   #  3     0x400529  1      OPC=pushq_r64_1   
  movq %rsp, %rbp              #  4     0x40052a  3      OPC=movq_r64_r64  
  callq .deregister_tm_clones  #  5     0x40052d  5      OPC=callq_label   
  popq %rbp                    #  6     0x400532  1      OPC=popq_r64_1    
  movb $0x1, 0x200b06(%rip)    #  7     0x400533  7      OPC=movb_m8_imm8  
.L_40053a:                     #        0x40053a  0      OPC=<label>       
  retq                         #  8     0x40053a  1      OPC=retq          
  nop                          #  9     0x40053b  1      OPC=nop           
  nop                          #  10    0x40053c  1      OPC=nop           
  nop                          #  11    0x40053d  1      OPC=nop           
  nop                          #  12    0x40053e  1      OPC=nop           
  nop                          #  13    0x40053f  1      OPC=nop           
                                                                           
.size __do_global_dtors_aux, .-__do_global_dtors_aux

