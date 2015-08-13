  .text
  .globl __local_lock_acquire
  .type __local_lock_acquire, @function

#! file-offset 0x6e160
#! rip-offset  0x2e160
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_acquire:         #        0x2e160  0      OPC=<label>         
  movl 0x1004b0ae(%rip), %ecx  #  1     0x2e160  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  2     0x2e166  2      OPC=movl_r32_r32    
  testl %ecx, %ecx             #  3     0x2e168  2      OPC=testl_r32_r32   
  je .L_2e180                  #  4     0x2e16a  2      OPC=je_label        
  testq %rdi, %rdi             #  5     0x2e16c  3      OPC=testq_r64_r64   
  je .L_2e180                  #  6     0x2e16f  2      OPC=je_label        
  jmpq .pthread_mutex_lock     #  7     0x2e171  5      OPC=jmpq_label_1    
  nop                          #  8     0x2e176  1      OPC=nop             
  nop                          #  9     0x2e177  1      OPC=nop             
  nop                          #  10    0x2e178  1      OPC=nop             
  nop                          #  11    0x2e179  1      OPC=nop             
  nop                          #  12    0x2e17a  1      OPC=nop             
  nop                          #  13    0x2e17b  1      OPC=nop             
  nop                          #  14    0x2e17c  1      OPC=nop             
  nop                          #  15    0x2e17d  1      OPC=nop             
  nop                          #  16    0x2e17e  1      OPC=nop             
  nop                          #  17    0x2e17f  1      OPC=nop             
.L_2e180:                      #        0x2e180  0      OPC=<label>         
  popq %r11                    #  18    0x2e180  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x2e182  7      OPC=andl_r32_imm32  
  nop                          #  20    0x2e189  1      OPC=nop             
  nop                          #  21    0x2e18a  1      OPC=nop             
  nop                          #  22    0x2e18b  1      OPC=nop             
  nop                          #  23    0x2e18c  1      OPC=nop             
  addq %r15, %r11              #  24    0x2e18d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x2e190  3      OPC=jmpq_r64        
  nop                          #  26    0x2e193  1      OPC=nop             
  nop                          #  27    0x2e194  1      OPC=nop             
  nop                          #  28    0x2e195  1      OPC=nop             
  nop                          #  29    0x2e196  1      OPC=nop             
  nop                          #  30    0x2e197  1      OPC=nop             
  nop                          #  31    0x2e198  1      OPC=nop             
  nop                          #  32    0x2e199  1      OPC=nop             
  nop                          #  33    0x2e19a  1      OPC=nop             
  nop                          #  34    0x2e19b  1      OPC=nop             
  nop                          #  35    0x2e19c  1      OPC=nop             
  nop                          #  36    0x2e19d  1      OPC=nop             
  nop                          #  37    0x2e19e  1      OPC=nop             
  nop                          #  38    0x2e19f  1      OPC=nop             
  nop                          #  39    0x2e1a0  1      OPC=nop             
  nop                          #  40    0x2e1a1  1      OPC=nop             
  nop                          #  41    0x2e1a2  1      OPC=nop             
  nop                          #  42    0x2e1a3  1      OPC=nop             
  nop                          #  43    0x2e1a4  1      OPC=nop             
  nop                          #  44    0x2e1a5  1      OPC=nop             
  nop                          #  45    0x2e1a6  1      OPC=nop             
                                                                            
.size __local_lock_acquire, .-__local_lock_acquire

