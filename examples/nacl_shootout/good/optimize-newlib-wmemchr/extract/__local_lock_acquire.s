  .text
  .globl __local_lock_acquire
  .type __local_lock_acquire, @function

#! file-offset 0x6e460
#! rip-offset  0x2e460
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_acquire:         #        0x2e460  0      OPC=<label>         
  movl 0x1004adae(%rip), %ecx  #  1     0x2e460  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  2     0x2e466  2      OPC=movl_r32_r32    
  testl %ecx, %ecx             #  3     0x2e468  2      OPC=testl_r32_r32   
  je .L_2e480                  #  4     0x2e46a  2      OPC=je_label        
  testq %rdi, %rdi             #  5     0x2e46c  3      OPC=testq_r64_r64   
  je .L_2e480                  #  6     0x2e46f  2      OPC=je_label        
  jmpq .pthread_mutex_lock     #  7     0x2e471  5      OPC=jmpq_label_1    
  nop                          #  8     0x2e476  1      OPC=nop             
  nop                          #  9     0x2e477  1      OPC=nop             
  nop                          #  10    0x2e478  1      OPC=nop             
  nop                          #  11    0x2e479  1      OPC=nop             
  nop                          #  12    0x2e47a  1      OPC=nop             
  nop                          #  13    0x2e47b  1      OPC=nop             
  nop                          #  14    0x2e47c  1      OPC=nop             
  nop                          #  15    0x2e47d  1      OPC=nop             
  nop                          #  16    0x2e47e  1      OPC=nop             
  nop                          #  17    0x2e47f  1      OPC=nop             
.L_2e480:                      #        0x2e480  0      OPC=<label>         
  popq %r11                    #  18    0x2e480  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x2e482  7      OPC=andl_r32_imm32  
  nop                          #  20    0x2e489  1      OPC=nop             
  nop                          #  21    0x2e48a  1      OPC=nop             
  nop                          #  22    0x2e48b  1      OPC=nop             
  nop                          #  23    0x2e48c  1      OPC=nop             
  addq %r15, %r11              #  24    0x2e48d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x2e490  3      OPC=jmpq_r64        
  nop                          #  26    0x2e493  1      OPC=nop             
  nop                          #  27    0x2e494  1      OPC=nop             
  nop                          #  28    0x2e495  1      OPC=nop             
  nop                          #  29    0x2e496  1      OPC=nop             
  nop                          #  30    0x2e497  1      OPC=nop             
  nop                          #  31    0x2e498  1      OPC=nop             
  nop                          #  32    0x2e499  1      OPC=nop             
  nop                          #  33    0x2e49a  1      OPC=nop             
  nop                          #  34    0x2e49b  1      OPC=nop             
  nop                          #  35    0x2e49c  1      OPC=nop             
  nop                          #  36    0x2e49d  1      OPC=nop             
  nop                          #  37    0x2e49e  1      OPC=nop             
  nop                          #  38    0x2e49f  1      OPC=nop             
  nop                          #  39    0x2e4a0  1      OPC=nop             
  nop                          #  40    0x2e4a1  1      OPC=nop             
  nop                          #  41    0x2e4a2  1      OPC=nop             
  nop                          #  42    0x2e4a3  1      OPC=nop             
  nop                          #  43    0x2e4a4  1      OPC=nop             
  nop                          #  44    0x2e4a5  1      OPC=nop             
  nop                          #  45    0x2e4a6  1      OPC=nop             
                                                                            
.size __local_lock_acquire, .-__local_lock_acquire

