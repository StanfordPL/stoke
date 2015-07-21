  .text
  .globl __fp_unlock
  .type __fp_unlock, @function

#! file-offset 0x159d60
#! rip-offset  0x119d60
#! capacity    64 bytes

# Text                                   #  Line  RIP       Bytes  Opcode    
.__fp_unlock:                            #        0x119d60  0      OPC=0     
  movl %edi, %edi                        #  1     0x119d60  2      OPC=1157  
  subl $0x8, %esp                        #  2     0x119d62  3      OPC=2384  
  addq %r15, %rsp                        #  3     0x119d65  3      OPC=72    
  movl %edi, %edi                        #  4     0x119d68  2      OPC=1157  
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x119d6a  6      OPC=2430  
  jne .L_119d80                          #  6     0x119d70  6      OPC=963   
  nop                                    #  7     0x119d76  1      OPC=1343  
  nop                                    #  8     0x119d77  1      OPC=1343  
  addl $0x5c, %edi                       #  9     0x119d78  3      OPC=65    
  nop                                    #  10    0x119d7b  1      OPC=1343  
  nop                                    #  11    0x119d7c  1      OPC=1343  
  nop                                    #  12    0x119d7d  1      OPC=1343  
  nop                                    #  13    0x119d7e  1      OPC=1343  
  nop                                    #  14    0x119d7f  1      OPC=1343  
  nop                                    #  15    0x119d80  1      OPC=1343  
  callq .__local_lock_release_recursive  #  16    0x119d81  5      OPC=260   
.L_119d80:                               #        0x119d86  0      OPC=0     
  addl $0x8, %esp                        #  17    0x119d86  3      OPC=65    
  addq %r15, %rsp                        #  18    0x119d89  3      OPC=72    
  xorl %eax, %eax                        #  19    0x119d8c  2      OPC=3758  
  popq %r11                              #  20    0x119d8e  2      OPC=1694  
  andl $0xffffffe0, %r11d                #  21    0x119d90  7      OPC=131   
  nop                                    #  22    0x119d97  1      OPC=1343  
  nop                                    #  23    0x119d98  1      OPC=1343  
  nop                                    #  24    0x119d99  1      OPC=1343  
  nop                                    #  25    0x119d9a  1      OPC=1343  
  addq %r15, %r11                        #  26    0x119d9b  3      OPC=72    
  jmpq %r11                              #  27    0x119d9e  3      OPC=928   
  nop                                    #  28    0x119da1  1      OPC=1343  
  nop                                    #  29    0x119da2  1      OPC=1343  
  nop                                    #  30    0x119da3  1      OPC=1343  
  nop                                    #  31    0x119da4  1      OPC=1343  
  nop                                    #  32    0x119da5  1      OPC=1343  
  nop                                    #  33    0x119da6  1      OPC=1343  
  nop                                    #  34    0x119da7  1      OPC=1343  
  nop                                    #  35    0x119da8  1      OPC=1343  
  nop                                    #  36    0x119da9  1      OPC=1343  
  nop                                    #  37    0x119daa  1      OPC=1343  
  nop                                    #  38    0x119dab  1      OPC=1343  
  nop                                    #  39    0x119dac  1      OPC=1343  
                                                                             
.size __fp_unlock, .-__fp_unlock

