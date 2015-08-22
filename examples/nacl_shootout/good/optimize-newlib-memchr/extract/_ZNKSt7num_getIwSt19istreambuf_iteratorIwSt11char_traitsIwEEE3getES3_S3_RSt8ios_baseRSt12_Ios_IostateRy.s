  .text
  .globl _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy
  .type _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy, @function

#! file-offset 0xf1480
#! rip-offset  0xb1480
#! capacity    64 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy:  #        0xb1480  0      OPC=<label>         
  movl %edi, %edi                                                                                          #  1     0xb1480  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                          #  2     0xb1482  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                          #  3     0xb1485  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                          #  4     0xb1488  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                          #  5     0xb148a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                 #  6     0xb148c  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                          #  7     0xb1490  2      OPC=movl_r32_r32    
  movl 0x20(%r15,%rax,1), %eax                                                                             #  8     0xb1492  5      OPC=movl_r32_m32    
  nop                                                                                                      #  9     0xb1497  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                   #  10    0xb1498  6      OPC=andl_r32_imm32  
  nop                                                                                                      #  11    0xb149e  1      OPC=nop             
  nop                                                                                                      #  12    0xb149f  1      OPC=nop             
  nop                                                                                                      #  13    0xb14a0  1      OPC=nop             
  addq %r15, %rax                                                                                          #  14    0xb14a1  3      OPC=addq_r64_r64    
  callq %rax                                                                                               #  15    0xb14a4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                          #  16    0xb14a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  17    0xb14a9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                #  18    0xb14ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                  #  19    0xb14ae  7      OPC=andl_r32_imm32  
  nop                                                                                                      #  20    0xb14b5  1      OPC=nop             
  nop                                                                                                      #  21    0xb14b6  1      OPC=nop             
  nop                                                                                                      #  22    0xb14b7  1      OPC=nop             
  nop                                                                                                      #  23    0xb14b8  1      OPC=nop             
  addq %r15, %r11                                                                                          #  24    0xb14b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                #  25    0xb14bc  3      OPC=jmpq_r64        
  nop                                                                                                      #  26    0xb14bf  1      OPC=nop             
  nop                                                                                                      #  27    0xb14c0  1      OPC=nop             
  nop                                                                                                      #  28    0xb14c1  1      OPC=nop             
  nop                                                                                                      #  29    0xb14c2  1      OPC=nop             
  nop                                                                                                      #  30    0xb14c3  1      OPC=nop             
  nop                                                                                                      #  31    0xb14c4  1      OPC=nop             
  nop                                                                                                      #  32    0xb14c5  1      OPC=nop             
  nop                                                                                                      #  33    0xb14c6  1      OPC=nop             
  nop                                                                                                      #  34    0xb14c7  1      OPC=nop             
  nop                                                                                                      #  35    0xb14c8  1      OPC=nop             
  nop                                                                                                      #  36    0xb14c9  1      OPC=nop             
  nop                                                                                                      #  37    0xb14ca  1      OPC=nop             
  nop                                                                                                      #  38    0xb14cb  1      OPC=nop             
  nop                                                                                                      #  39    0xb14cc  1      OPC=nop             
                                                                                                                                                        
.size _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy, .-_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRy

