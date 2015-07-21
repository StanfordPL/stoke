  .text
  .globl __local_lock_acquire
  .type __local_lock_acquire, @function

#! file-offset 0x6dc20
#! rip-offset  0x2dc20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.__local_lock_acquire:         #        0x2dc20  0      OPC=0     
  movl 0x1004b5ee(%rip), %ecx  #  1     0x2dc20  6      OPC=1156  
  movl %edi, %edi              #  2     0x2dc26  2      OPC=1157  
  testl %ecx, %ecx             #  3     0x2dc28  2      OPC=2436  
  je .L_2dc40                  #  4     0x2dc2a  6      OPC=893   
  nop                          #  5     0x2dc30  1      OPC=1343  
  nop                          #  6     0x2dc31  1      OPC=1343  
  testq %rdi, %rdi             #  7     0x2dc32  3      OPC=2438  
  je .L_2dc40                  #  8     0x2dc35  6      OPC=893   
  nop                          #  9     0x2dc3b  1      OPC=1343  
  nop                          #  10    0x2dc3c  1      OPC=1343  
  jmpq .pthread_mutex_lock     #  11    0x2dc3d  5      OPC=930   
  nop                          #  12    0x2dc42  1      OPC=1343  
  nop                          #  13    0x2dc43  1      OPC=1343  
  nop                          #  14    0x2dc44  1      OPC=1343  
  nop                          #  15    0x2dc45  1      OPC=1343  
  nop                          #  16    0x2dc46  1      OPC=1343  
  nop                          #  17    0x2dc47  1      OPC=1343  
  nop                          #  18    0x2dc48  1      OPC=1343  
  nop                          #  19    0x2dc49  1      OPC=1343  
  nop                          #  20    0x2dc4a  1      OPC=1343  
  nop                          #  21    0x2dc4b  1      OPC=1343  
.L_2dc40:                      #        0x2dc4c  0      OPC=0     
  popq %r11                    #  22    0x2dc4c  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  23    0x2dc4e  7      OPC=131   
  nop                          #  24    0x2dc55  1      OPC=1343  
  nop                          #  25    0x2dc56  1      OPC=1343  
  nop                          #  26    0x2dc57  1      OPC=1343  
  nop                          #  27    0x2dc58  1      OPC=1343  
  addq %r15, %r11              #  28    0x2dc59  3      OPC=72    
  jmpq %r11                    #  29    0x2dc5c  3      OPC=928   
  nop                          #  30    0x2dc5f  1      OPC=1343  
  nop                          #  31    0x2dc60  1      OPC=1343  
  nop                          #  32    0x2dc61  1      OPC=1343  
  nop                          #  33    0x2dc62  1      OPC=1343  
  nop                          #  34    0x2dc63  1      OPC=1343  
  nop                          #  35    0x2dc64  1      OPC=1343  
  nop                          #  36    0x2dc65  1      OPC=1343  
  nop                          #  37    0x2dc66  1      OPC=1343  
  nop                          #  38    0x2dc67  1      OPC=1343  
  nop                          #  39    0x2dc68  1      OPC=1343  
  nop                          #  40    0x2dc69  1      OPC=1343  
  nop                          #  41    0x2dc6a  1      OPC=1343  
  nop                          #  42    0x2dc6b  1      OPC=1343  
  nop                          #  43    0x2dc6c  1      OPC=1343  
  nop                          #  44    0x2dc6d  1      OPC=1343  
  nop                          #  45    0x2dc6e  1      OPC=1343  
  nop                          #  46    0x2dc6f  1      OPC=1343  
  nop                          #  47    0x2dc70  1      OPC=1343  
  nop                          #  48    0x2dc71  1      OPC=1343  
  nop                          #  49    0x2dc72  1      OPC=1343  
                                                                  
.size __local_lock_acquire, .-__local_lock_acquire

