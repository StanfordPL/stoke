  .text
  .globl _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj
  .type _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj, @function

#! file-offset 0xf13c0
#! rip-offset  0xb13c0
#! capacity    64 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj:  #        0xb13c0  0      OPC=<label>         
  movl %edi, %edi                                                                                          #  1     0xb13c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                          #  2     0xb13c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                          #  3     0xb13c5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                          #  4     0xb13c8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                          #  5     0xb13ca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                 #  6     0xb13cc  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                          #  7     0xb13d0  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                                             #  8     0xb13d2  5      OPC=movl_r32_m32    
  nop                                                                                                      #  9     0xb13d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                   #  10    0xb13d8  6      OPC=andl_r32_imm32  
  nop                                                                                                      #  11    0xb13de  1      OPC=nop             
  nop                                                                                                      #  12    0xb13df  1      OPC=nop             
  nop                                                                                                      #  13    0xb13e0  1      OPC=nop             
  addq %r15, %rax                                                                                          #  14    0xb13e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                               #  15    0xb13e4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                          #  16    0xb13e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  17    0xb13e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                #  18    0xb13ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                  #  19    0xb13ee  7      OPC=andl_r32_imm32  
  nop                                                                                                      #  20    0xb13f5  1      OPC=nop             
  nop                                                                                                      #  21    0xb13f6  1      OPC=nop             
  nop                                                                                                      #  22    0xb13f7  1      OPC=nop             
  nop                                                                                                      #  23    0xb13f8  1      OPC=nop             
  addq %r15, %r11                                                                                          #  24    0xb13f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                #  25    0xb13fc  3      OPC=jmpq_r64        
  nop                                                                                                      #  26    0xb13ff  1      OPC=nop             
  nop                                                                                                      #  27    0xb1400  1      OPC=nop             
  nop                                                                                                      #  28    0xb1401  1      OPC=nop             
  nop                                                                                                      #  29    0xb1402  1      OPC=nop             
  nop                                                                                                      #  30    0xb1403  1      OPC=nop             
  nop                                                                                                      #  31    0xb1404  1      OPC=nop             
  nop                                                                                                      #  32    0xb1405  1      OPC=nop             
  nop                                                                                                      #  33    0xb1406  1      OPC=nop             
  nop                                                                                                      #  34    0xb1407  1      OPC=nop             
  nop                                                                                                      #  35    0xb1408  1      OPC=nop             
  nop                                                                                                      #  36    0xb1409  1      OPC=nop             
  nop                                                                                                      #  37    0xb140a  1      OPC=nop             
  nop                                                                                                      #  38    0xb140b  1      OPC=nop             
  nop                                                                                                      #  39    0xb140c  1      OPC=nop             
                                                                                                                                                        
.size _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj, .-_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRj

