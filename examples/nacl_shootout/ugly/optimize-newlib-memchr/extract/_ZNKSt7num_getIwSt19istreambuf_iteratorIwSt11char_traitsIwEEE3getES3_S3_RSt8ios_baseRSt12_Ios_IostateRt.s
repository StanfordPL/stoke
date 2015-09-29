  .text
  .globl _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt
  .type _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt, @function

#! file-offset 0xf1380
#! rip-offset  0xb1380
#! capacity    64 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt:  #        0xb1380  0      OPC=<label>         
  movl %edi, %edi                                                                                          #  1     0xb1380  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                          #  2     0xb1382  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                          #  3     0xb1385  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                          #  4     0xb1388  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                          #  5     0xb138a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                 #  6     0xb138c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                          #  7     0xb1390  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                             #  8     0xb1392  5      OPC=movl_r32_m32    
  nop                                                                                                      #  9     0xb1397  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                   #  10    0xb1398  6      OPC=andl_r32_imm32  
  nop                                                                                                      #  11    0xb139e  1      OPC=nop             
  nop                                                                                                      #  12    0xb139f  1      OPC=nop             
  nop                                                                                                      #  13    0xb13a0  1      OPC=nop             
  addq %r15, %rax                                                                                          #  14    0xb13a1  3      OPC=addq_r64_r64    
  callq %rax                                                                                               #  15    0xb13a4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                          #  16    0xb13a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  17    0xb13a9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                #  18    0xb13ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                  #  19    0xb13ae  7      OPC=andl_r32_imm32  
  nop                                                                                                      #  20    0xb13b5  1      OPC=nop             
  nop                                                                                                      #  21    0xb13b6  1      OPC=nop             
  nop                                                                                                      #  22    0xb13b7  1      OPC=nop             
  nop                                                                                                      #  23    0xb13b8  1      OPC=nop             
  addq %r15, %r11                                                                                          #  24    0xb13b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                #  25    0xb13bc  3      OPC=jmpq_r64        
  nop                                                                                                      #  26    0xb13bf  1      OPC=nop             
  nop                                                                                                      #  27    0xb13c0  1      OPC=nop             
  nop                                                                                                      #  28    0xb13c1  1      OPC=nop             
  nop                                                                                                      #  29    0xb13c2  1      OPC=nop             
  nop                                                                                                      #  30    0xb13c3  1      OPC=nop             
  nop                                                                                                      #  31    0xb13c4  1      OPC=nop             
  nop                                                                                                      #  32    0xb13c5  1      OPC=nop             
  nop                                                                                                      #  33    0xb13c6  1      OPC=nop             
  nop                                                                                                      #  34    0xb13c7  1      OPC=nop             
  nop                                                                                                      #  35    0xb13c8  1      OPC=nop             
  nop                                                                                                      #  36    0xb13c9  1      OPC=nop             
  nop                                                                                                      #  37    0xb13ca  1      OPC=nop             
  nop                                                                                                      #  38    0xb13cb  1      OPC=nop             
  nop                                                                                                      #  39    0xb13cc  1      OPC=nop             
                                                                                                                                                        
.size _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt, .-_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRt

