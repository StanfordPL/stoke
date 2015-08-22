  .text
  .globl __local_lock_release
  .type __local_lock_release, @function

#! file-offset 0x6eac0
#! rip-offset  0x2eac0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.__local_lock_release:         #        0x2eac0  0      OPC=<label>         
  movl 0x1004a74e(%rip), %eax  #  1     0x2eac0  6      OPC=movl_r32_m32    
  movl %edi, %edi              #  2     0x2eac6  2      OPC=movl_r32_r32    
  testl %eax, %eax             #  3     0x2eac8  2      OPC=testl_r32_r32   
  je .L_2eae0                  #  4     0x2eaca  2      OPC=je_label        
  testq %rdi, %rdi             #  5     0x2eacc  3      OPC=testq_r64_r64   
  je .L_2eae0                  #  6     0x2eacf  2      OPC=je_label        
  jmpq .pthread_mutex_unlock   #  7     0x2ead1  5      OPC=jmpq_label_1    
  nop                          #  8     0x2ead6  1      OPC=nop             
  nop                          #  9     0x2ead7  1      OPC=nop             
  nop                          #  10    0x2ead8  1      OPC=nop             
  nop                          #  11    0x2ead9  1      OPC=nop             
  nop                          #  12    0x2eada  1      OPC=nop             
  nop                          #  13    0x2eadb  1      OPC=nop             
  nop                          #  14    0x2eadc  1      OPC=nop             
  nop                          #  15    0x2eadd  1      OPC=nop             
  nop                          #  16    0x2eade  1      OPC=nop             
  nop                          #  17    0x2eadf  1      OPC=nop             
.L_2eae0:                      #        0x2eae0  0      OPC=<label>         
  popq %r11                    #  18    0x2eae0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  19    0x2eae2  7      OPC=andl_r32_imm32  
  nop                          #  20    0x2eae9  1      OPC=nop             
  nop                          #  21    0x2eaea  1      OPC=nop             
  nop                          #  22    0x2eaeb  1      OPC=nop             
  nop                          #  23    0x2eaec  1      OPC=nop             
  addq %r15, %r11              #  24    0x2eaed  3      OPC=addq_r64_r64    
  jmpq %r11                    #  25    0x2eaf0  3      OPC=jmpq_r64        
  nop                          #  26    0x2eaf3  1      OPC=nop             
  nop                          #  27    0x2eaf4  1      OPC=nop             
  nop                          #  28    0x2eaf5  1      OPC=nop             
  nop                          #  29    0x2eaf6  1      OPC=nop             
  nop                          #  30    0x2eaf7  1      OPC=nop             
  nop                          #  31    0x2eaf8  1      OPC=nop             
  nop                          #  32    0x2eaf9  1      OPC=nop             
  nop                          #  33    0x2eafa  1      OPC=nop             
  nop                          #  34    0x2eafb  1      OPC=nop             
  nop                          #  35    0x2eafc  1      OPC=nop             
  nop                          #  36    0x2eafd  1      OPC=nop             
  nop                          #  37    0x2eafe  1      OPC=nop             
  nop                          #  38    0x2eaff  1      OPC=nop             
  nop                          #  39    0x2eb00  1      OPC=nop             
  nop                          #  40    0x2eb01  1      OPC=nop             
  nop                          #  41    0x2eb02  1      OPC=nop             
  nop                          #  42    0x2eb03  1      OPC=nop             
  nop                          #  43    0x2eb04  1      OPC=nop             
  nop                          #  44    0x2eb05  1      OPC=nop             
  nop                          #  45    0x2eb06  1      OPC=nop             
                                                                            
.size __local_lock_release, .-__local_lock_release

