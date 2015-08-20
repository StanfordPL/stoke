  .text
  .globl __local_lock_try_acquire
  .type __local_lock_try_acquire, @function

#! file-offset 0x6e400
#! rip-offset  0x2e400
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_try_acquire:     #        0x2e400  0      OPC=<label>         
  movl 0x1004ae0e(%rip), %edx  #  1     0x2e400  6      OPC=movl_r32_m32    
  xorl %eax, %eax              #  2     0x2e406  2      OPC=xorl_r32_r32    
  movl %edi, %edi              #  3     0x2e408  2      OPC=movl_r32_r32    
  testl %edx, %edx             #  4     0x2e40a  2      OPC=testl_r32_r32   
  je .L_2e420                  #  5     0x2e40c  2      OPC=je_label        
  testq %rdi, %rdi             #  6     0x2e40e  3      OPC=testq_r64_r64   
  movb $0x16, %al              #  7     0x2e411  2      OPC=movb_r8_imm8    
  je .L_2e420                  #  8     0x2e413  2      OPC=je_label        
  jmpq .pthread_mutex_trylock  #  9     0x2e415  5      OPC=jmpq_label_1    
  nop                          #  10    0x2e41a  1      OPC=nop             
  nop                          #  11    0x2e41b  1      OPC=nop             
  nop                          #  12    0x2e41c  1      OPC=nop             
  nop                          #  13    0x2e41d  1      OPC=nop             
  nop                          #  14    0x2e41e  1      OPC=nop             
  nop                          #  15    0x2e41f  1      OPC=nop             
.L_2e420:                      #        0x2e420  0      OPC=<label>         
  popq %r11                    #  16    0x2e420  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  17    0x2e422  7      OPC=andl_r32_imm32  
  nop                          #  18    0x2e429  1      OPC=nop             
  nop                          #  19    0x2e42a  1      OPC=nop             
  nop                          #  20    0x2e42b  1      OPC=nop             
  nop                          #  21    0x2e42c  1      OPC=nop             
  addq %r15, %r11              #  22    0x2e42d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  23    0x2e430  3      OPC=jmpq_r64        
  nop                          #  24    0x2e433  1      OPC=nop             
  nop                          #  25    0x2e434  1      OPC=nop             
  nop                          #  26    0x2e435  1      OPC=nop             
  nop                          #  27    0x2e436  1      OPC=nop             
  nop                          #  28    0x2e437  1      OPC=nop             
  nop                          #  29    0x2e438  1      OPC=nop             
  nop                          #  30    0x2e439  1      OPC=nop             
  nop                          #  31    0x2e43a  1      OPC=nop             
  nop                          #  32    0x2e43b  1      OPC=nop             
  nop                          #  33    0x2e43c  1      OPC=nop             
  nop                          #  34    0x2e43d  1      OPC=nop             
  nop                          #  35    0x2e43e  1      OPC=nop             
  nop                          #  36    0x2e43f  1      OPC=nop             
  nop                          #  37    0x2e440  1      OPC=nop             
  nop                          #  38    0x2e441  1      OPC=nop             
  nop                          #  39    0x2e442  1      OPC=nop             
  nop                          #  40    0x2e443  1      OPC=nop             
  nop                          #  41    0x2e444  1      OPC=nop             
  nop                          #  42    0x2e445  1      OPC=nop             
  nop                          #  43    0x2e446  1      OPC=nop             
                                                                            
.size __local_lock_try_acquire, .-__local_lock_try_acquire

