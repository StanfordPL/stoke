  .text
  .globl pthread_attr_getdetachstate
  .type pthread_attr_getdetachstate, @function

#! file-offset 0x6db40
#! rip-offset  0x2db40
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_attr_getdetachstate:  #        0x2db40  0      OPC=<label>         
  movl %edi, %edi              #  1     0x2db40  2      OPC=movl_r32_r32    
  movl $0x16, %eax             #  2     0x2db42  5      OPC=movl_r32_imm32  
  testq %rdi, %rdi             #  3     0x2db47  3      OPC=testq_r64_r64   
  je .L_2db60                  #  4     0x2db4a  2      OPC=je_label        
  movl %edi, %edi              #  5     0x2db4c  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax     #  6     0x2db4e  4      OPC=movl_r32_m32    
  nop                          #  7     0x2db52  1      OPC=nop             
  nop                          #  8     0x2db53  1      OPC=nop             
  nop                          #  9     0x2db54  1      OPC=nop             
  nop                          #  10    0x2db55  1      OPC=nop             
  nop                          #  11    0x2db56  1      OPC=nop             
  nop                          #  12    0x2db57  1      OPC=nop             
  nop                          #  13    0x2db58  1      OPC=nop             
  nop                          #  14    0x2db59  1      OPC=nop             
  nop                          #  15    0x2db5a  1      OPC=nop             
  nop                          #  16    0x2db5b  1      OPC=nop             
  nop                          #  17    0x2db5c  1      OPC=nop             
  nop                          #  18    0x2db5d  1      OPC=nop             
  nop                          #  19    0x2db5e  1      OPC=nop             
  nop                          #  20    0x2db5f  1      OPC=nop             
.L_2db60:                      #        0x2db60  0      OPC=<label>         
  popq %r11                    #  21    0x2db60  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  22    0x2db62  7      OPC=andl_r32_imm32  
  nop                          #  23    0x2db69  1      OPC=nop             
  nop                          #  24    0x2db6a  1      OPC=nop             
  nop                          #  25    0x2db6b  1      OPC=nop             
  nop                          #  26    0x2db6c  1      OPC=nop             
  addq %r15, %r11              #  27    0x2db6d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  28    0x2db70  3      OPC=jmpq_r64        
  nop                          #  29    0x2db73  1      OPC=nop             
  nop                          #  30    0x2db74  1      OPC=nop             
  nop                          #  31    0x2db75  1      OPC=nop             
  nop                          #  32    0x2db76  1      OPC=nop             
  nop                          #  33    0x2db77  1      OPC=nop             
  nop                          #  34    0x2db78  1      OPC=nop             
  nop                          #  35    0x2db79  1      OPC=nop             
  nop                          #  36    0x2db7a  1      OPC=nop             
  nop                          #  37    0x2db7b  1      OPC=nop             
  nop                          #  38    0x2db7c  1      OPC=nop             
  nop                          #  39    0x2db7d  1      OPC=nop             
  nop                          #  40    0x2db7e  1      OPC=nop             
  nop                          #  41    0x2db7f  1      OPC=nop             
  nop                          #  42    0x2db80  1      OPC=nop             
  nop                          #  43    0x2db81  1      OPC=nop             
  nop                          #  44    0x2db82  1      OPC=nop             
  nop                          #  45    0x2db83  1      OPC=nop             
  nop                          #  46    0x2db84  1      OPC=nop             
  nop                          #  47    0x2db85  1      OPC=nop             
  nop                          #  48    0x2db86  1      OPC=nop             
                                                                            
.size pthread_attr_getdetachstate, .-pthread_attr_getdetachstate

