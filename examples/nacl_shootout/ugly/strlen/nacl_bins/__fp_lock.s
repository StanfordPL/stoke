  .text
  .globl __fp_lock
  .type __fp_lock, @function

#! file-offset 0x159e40
#! rip-offset  0x119e40
#! capacity    64 bytes

# Text                                   #  Line  RIP       Bytes  Opcode    
.__fp_lock:                              #        0x119e40  0      OPC=0     
  movl %edi, %edi                        #  1     0x119e40  2      OPC=1157  
  subl $0x8, %esp                        #  2     0x119e42  3      OPC=2384  
  addq %r15, %rsp                        #  3     0x119e45  3      OPC=72    
  movl %edi, %edi                        #  4     0x119e48  2      OPC=1157  
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x119e4a  6      OPC=2430  
  jne .L_119e60                          #  6     0x119e50  6      OPC=963   
  nop                                    #  7     0x119e56  1      OPC=1343  
  nop                                    #  8     0x119e57  1      OPC=1343  
  addl $0x5c, %edi                       #  9     0x119e58  3      OPC=65    
  nop                                    #  10    0x119e5b  1      OPC=1343  
  nop                                    #  11    0x119e5c  1      OPC=1343  
  nop                                    #  12    0x119e5d  1      OPC=1343  
  nop                                    #  13    0x119e5e  1      OPC=1343  
  nop                                    #  14    0x119e5f  1      OPC=1343  
  nop                                    #  15    0x119e60  1      OPC=1343  
  callq .__local_lock_acquire_recursive  #  16    0x119e61  5      OPC=260   
.L_119e60:                               #        0x119e66  0      OPC=0     
  addl $0x8, %esp                        #  17    0x119e66  3      OPC=65    
  addq %r15, %rsp                        #  18    0x119e69  3      OPC=72    
  xorl %eax, %eax                        #  19    0x119e6c  2      OPC=3758  
  popq %r11                              #  20    0x119e6e  2      OPC=1694  
  andl $0xffffffe0, %r11d                #  21    0x119e70  7      OPC=131   
  nop                                    #  22    0x119e77  1      OPC=1343  
  nop                                    #  23    0x119e78  1      OPC=1343  
  nop                                    #  24    0x119e79  1      OPC=1343  
  nop                                    #  25    0x119e7a  1      OPC=1343  
  addq %r15, %r11                        #  26    0x119e7b  3      OPC=72    
  jmpq %r11                              #  27    0x119e7e  3      OPC=928   
  nop                                    #  28    0x119e81  1      OPC=1343  
  nop                                    #  29    0x119e82  1      OPC=1343  
  nop                                    #  30    0x119e83  1      OPC=1343  
  nop                                    #  31    0x119e84  1      OPC=1343  
  nop                                    #  32    0x119e85  1      OPC=1343  
  nop                                    #  33    0x119e86  1      OPC=1343  
  nop                                    #  34    0x119e87  1      OPC=1343  
  nop                                    #  35    0x119e88  1      OPC=1343  
  nop                                    #  36    0x119e89  1      OPC=1343  
  nop                                    #  37    0x119e8a  1      OPC=1343  
  nop                                    #  38    0x119e8b  1      OPC=1343  
  nop                                    #  39    0x119e8c  1      OPC=1343  
                                                                             
.size __fp_lock, .-__fp_lock

