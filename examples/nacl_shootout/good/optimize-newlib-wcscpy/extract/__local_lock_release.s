  .text
  .globl __local_lock_release
  .type __local_lock_release, @function

#! file-offset 0x6e0a0
#! rip-offset  0x2e0a0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_release:         #        0x2e0a0  0      OPC=<label>         
  movl 0x1004b16e(%rip), %eax  #  1     0x2e0a0  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  2     0x2e0a6  2      OPC=movl_r32_r32    
  testl %eax, %eax             #  3     0x2e0a8  2      OPC=testl_r32_r32   
  je .L_2e0c0                  #  4     0x2e0aa  2      OPC=je_label        
  testq %rdi, %rdi             #  5     0x2e0ac  3      OPC=testq_r64_r64   
  je .L_2e0c0                  #  6     0x2e0af  2      OPC=je_label        
  jmpq .pthread_mutex_unlock   #  7     0x2e0b1  5      OPC=jmpq_label_1    
  nop                          #  8     0x2e0b6  1      OPC=nop             
  nop                          #  9     0x2e0b7  1      OPC=nop             
  nop                          #  10    0x2e0b8  1      OPC=nop             
  nop                          #  11    0x2e0b9  1      OPC=nop             
  nop                          #  12    0x2e0ba  1      OPC=nop             
  nop                          #  13    0x2e0bb  1      OPC=nop             
  nop                          #  14    0x2e0bc  1      OPC=nop             
  nop                          #  15    0x2e0bd  1      OPC=nop             
  nop                          #  16    0x2e0be  1      OPC=nop             
  nop                          #  17    0x2e0bf  1      OPC=nop             
.L_2e0c0:                      #        0x2e0c0  0      OPC=<label>         
  popq %r11                    #  18    0x2e0c0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x2e0c2  7      OPC=andl_r32_imm32  
  nop                          #  20    0x2e0c9  1      OPC=nop             
  nop                          #  21    0x2e0ca  1      OPC=nop             
  nop                          #  22    0x2e0cb  1      OPC=nop             
  nop                          #  23    0x2e0cc  1      OPC=nop             
  addq %r15, %r11              #  24    0x2e0cd  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x2e0d0  3      OPC=jmpq_r64        
  nop                          #  26    0x2e0d3  1      OPC=nop             
  nop                          #  27    0x2e0d4  1      OPC=nop             
  nop                          #  28    0x2e0d5  1      OPC=nop             
  nop                          #  29    0x2e0d6  1      OPC=nop             
  nop                          #  30    0x2e0d7  1      OPC=nop             
  nop                          #  31    0x2e0d8  1      OPC=nop             
  nop                          #  32    0x2e0d9  1      OPC=nop             
  nop                          #  33    0x2e0da  1      OPC=nop             
  nop                          #  34    0x2e0db  1      OPC=nop             
  nop                          #  35    0x2e0dc  1      OPC=nop             
  nop                          #  36    0x2e0dd  1      OPC=nop             
  nop                          #  37    0x2e0de  1      OPC=nop             
  nop                          #  38    0x2e0df  1      OPC=nop             
  nop                          #  39    0x2e0e0  1      OPC=nop             
  nop                          #  40    0x2e0e1  1      OPC=nop             
  nop                          #  41    0x2e0e2  1      OPC=nop             
  nop                          #  42    0x2e0e3  1      OPC=nop             
  nop                          #  43    0x2e0e4  1      OPC=nop             
  nop                          #  44    0x2e0e5  1      OPC=nop             
  nop                          #  45    0x2e0e6  1      OPC=nop             
                                                                            
.size __local_lock_release, .-__local_lock_release

