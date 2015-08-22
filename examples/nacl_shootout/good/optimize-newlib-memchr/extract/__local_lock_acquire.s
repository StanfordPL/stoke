  .text
  .globl __local_lock_acquire
  .type __local_lock_acquire, @function

#! file-offset 0x6eb80
#! rip-offset  0x2eb80
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_acquire:         #        0x2eb80  0      OPC=<label>         
  movl 0x1004a68e(%rip), %ecx  #  1     0x2eb80  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  2     0x2eb86  2      OPC=movl_r32_r32    
  testl %ecx, %ecx             #  3     0x2eb88  2      OPC=testl_r32_r32   
  je .L_2eba0                  #  4     0x2eb8a  2      OPC=je_label        
  testq %rdi, %rdi             #  5     0x2eb8c  3      OPC=testq_r64_r64   
  je .L_2eba0                  #  6     0x2eb8f  2      OPC=je_label        
  jmpq .pthread_mutex_lock     #  7     0x2eb91  5      OPC=jmpq_label_1    
  nop                          #  8     0x2eb96  1      OPC=nop             
  nop                          #  9     0x2eb97  1      OPC=nop             
  nop                          #  10    0x2eb98  1      OPC=nop             
  nop                          #  11    0x2eb99  1      OPC=nop             
  nop                          #  12    0x2eb9a  1      OPC=nop             
  nop                          #  13    0x2eb9b  1      OPC=nop             
  nop                          #  14    0x2eb9c  1      OPC=nop             
  nop                          #  15    0x2eb9d  1      OPC=nop             
  nop                          #  16    0x2eb9e  1      OPC=nop             
  nop                          #  17    0x2eb9f  1      OPC=nop             
.L_2eba0:                      #        0x2eba0  0      OPC=<label>         
  popq %r11                    #  18    0x2eba0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x2eba2  7      OPC=andl_r32_imm32  
  nop                          #  20    0x2eba9  1      OPC=nop             
  nop                          #  21    0x2ebaa  1      OPC=nop             
  nop                          #  22    0x2ebab  1      OPC=nop             
  nop                          #  23    0x2ebac  1      OPC=nop             
  addq %r15, %r11              #  24    0x2ebad  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x2ebb0  3      OPC=jmpq_r64        
  nop                          #  26    0x2ebb3  1      OPC=nop             
  nop                          #  27    0x2ebb4  1      OPC=nop             
  nop                          #  28    0x2ebb5  1      OPC=nop             
  nop                          #  29    0x2ebb6  1      OPC=nop             
  nop                          #  30    0x2ebb7  1      OPC=nop             
  nop                          #  31    0x2ebb8  1      OPC=nop             
  nop                          #  32    0x2ebb9  1      OPC=nop             
  nop                          #  33    0x2ebba  1      OPC=nop             
  nop                          #  34    0x2ebbb  1      OPC=nop             
  nop                          #  35    0x2ebbc  1      OPC=nop             
  nop                          #  36    0x2ebbd  1      OPC=nop             
  nop                          #  37    0x2ebbe  1      OPC=nop             
  nop                          #  38    0x2ebbf  1      OPC=nop             
  nop                          #  39    0x2ebc0  1      OPC=nop             
  nop                          #  40    0x2ebc1  1      OPC=nop             
  nop                          #  41    0x2ebc2  1      OPC=nop             
  nop                          #  42    0x2ebc3  1      OPC=nop             
  nop                          #  43    0x2ebc4  1      OPC=nop             
  nop                          #  44    0x2ebc5  1      OPC=nop             
  nop                          #  45    0x2ebc6  1      OPC=nop             
                                                                            
.size __local_lock_acquire, .-__local_lock_acquire

