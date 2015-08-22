  .text
  .globl __local_lock_try_acquire
  .type __local_lock_try_acquire, @function

#! file-offset 0x6eb20
#! rip-offset  0x2eb20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_try_acquire:     #        0x2eb20  0      OPC=<label>         
  movl 0x1004a6ee(%rip), %edx  #  1     0x2eb20  6      OPC=movl_r32_m32    
  xorl %eax, %eax              #  2     0x2eb26  2      OPC=xorl_r32_r32    
  movl %edi, %edi              #  3     0x2eb28  2      OPC=movl_r32_r32    
  testl %edx, %edx             #  4     0x2eb2a  2      OPC=testl_r32_r32   
  je .L_2eb40                  #  5     0x2eb2c  2      OPC=je_label        
  testq %rdi, %rdi             #  6     0x2eb2e  3      OPC=testq_r64_r64   
  movb $0x16, %al              #  7     0x2eb31  2      OPC=movb_r8_imm8    
  je .L_2eb40                  #  8     0x2eb33  2      OPC=je_label        
  jmpq .pthread_mutex_trylock  #  9     0x2eb35  5      OPC=jmpq_label_1    
  nop                          #  10    0x2eb3a  1      OPC=nop             
  nop                          #  11    0x2eb3b  1      OPC=nop             
  nop                          #  12    0x2eb3c  1      OPC=nop             
  nop                          #  13    0x2eb3d  1      OPC=nop             
  nop                          #  14    0x2eb3e  1      OPC=nop             
  nop                          #  15    0x2eb3f  1      OPC=nop             
.L_2eb40:                      #        0x2eb40  0      OPC=<label>         
  popq %r11                    #  16    0x2eb40  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  17    0x2eb42  7      OPC=andl_r32_imm32  
  nop                          #  18    0x2eb49  1      OPC=nop             
  nop                          #  19    0x2eb4a  1      OPC=nop             
  nop                          #  20    0x2eb4b  1      OPC=nop             
  nop                          #  21    0x2eb4c  1      OPC=nop             
  addq %r15, %r11              #  22    0x2eb4d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  23    0x2eb50  3      OPC=jmpq_r64        
  nop                          #  24    0x2eb53  1      OPC=nop             
  nop                          #  25    0x2eb54  1      OPC=nop             
  nop                          #  26    0x2eb55  1      OPC=nop             
  nop                          #  27    0x2eb56  1      OPC=nop             
  nop                          #  28    0x2eb57  1      OPC=nop             
  nop                          #  29    0x2eb58  1      OPC=nop             
  nop                          #  30    0x2eb59  1      OPC=nop             
  nop                          #  31    0x2eb5a  1      OPC=nop             
  nop                          #  32    0x2eb5b  1      OPC=nop             
  nop                          #  33    0x2eb5c  1      OPC=nop             
  nop                          #  34    0x2eb5d  1      OPC=nop             
  nop                          #  35    0x2eb5e  1      OPC=nop             
  nop                          #  36    0x2eb5f  1      OPC=nop             
  nop                          #  37    0x2eb60  1      OPC=nop             
  nop                          #  38    0x2eb61  1      OPC=nop             
  nop                          #  39    0x2eb62  1      OPC=nop             
  nop                          #  40    0x2eb63  1      OPC=nop             
  nop                          #  41    0x2eb64  1      OPC=nop             
  nop                          #  42    0x2eb65  1      OPC=nop             
  nop                          #  43    0x2eb66  1      OPC=nop             
                                                                            
.size __local_lock_try_acquire, .-__local_lock_try_acquire

