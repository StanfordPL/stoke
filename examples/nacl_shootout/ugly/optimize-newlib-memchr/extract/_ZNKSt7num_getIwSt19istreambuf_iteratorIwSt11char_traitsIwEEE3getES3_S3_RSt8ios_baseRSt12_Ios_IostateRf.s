  .text
  .globl _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRf
  .type _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRf, @function

#! file-offset 0xf14c0
#! rip-offset  0xb14c0
#! capacity    64 bytes

# Text                                                                                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRf:  #        0xb14c0  0      OPC=<label>         
  movl %edi, %edi                                                                                          #  1     0xb14c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                                          #  2     0xb14c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                          #  3     0xb14c5  3      OPC=addq_r64_r64    
  movl %ecx, %ecx                                                                                          #  4     0xb14c8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                                          #  5     0xb14ca  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                                 #  6     0xb14cc  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                                          #  7     0xb14d0  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                                                                             #  8     0xb14d2  5      OPC=movl_r32_m32    
  nop                                                                                                      #  9     0xb14d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                                   #  10    0xb14d8  6      OPC=andl_r32_imm32  
  nop                                                                                                      #  11    0xb14de  1      OPC=nop             
  nop                                                                                                      #  12    0xb14df  1      OPC=nop             
  nop                                                                                                      #  13    0xb14e0  1      OPC=nop             
  addq %r15, %rax                                                                                          #  14    0xb14e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                               #  15    0xb14e4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                                          #  16    0xb14e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                          #  17    0xb14e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                                #  18    0xb14ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                                  #  19    0xb14ee  7      OPC=andl_r32_imm32  
  nop                                                                                                      #  20    0xb14f5  1      OPC=nop             
  nop                                                                                                      #  21    0xb14f6  1      OPC=nop             
  nop                                                                                                      #  22    0xb14f7  1      OPC=nop             
  nop                                                                                                      #  23    0xb14f8  1      OPC=nop             
  addq %r15, %r11                                                                                          #  24    0xb14f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                                #  25    0xb14fc  3      OPC=jmpq_r64        
  nop                                                                                                      #  26    0xb14ff  1      OPC=nop             
  nop                                                                                                      #  27    0xb1500  1      OPC=nop             
  nop                                                                                                      #  28    0xb1501  1      OPC=nop             
  nop                                                                                                      #  29    0xb1502  1      OPC=nop             
  nop                                                                                                      #  30    0xb1503  1      OPC=nop             
  nop                                                                                                      #  31    0xb1504  1      OPC=nop             
  nop                                                                                                      #  32    0xb1505  1      OPC=nop             
  nop                                                                                                      #  33    0xb1506  1      OPC=nop             
  nop                                                                                                      #  34    0xb1507  1      OPC=nop             
  nop                                                                                                      #  35    0xb1508  1      OPC=nop             
  nop                                                                                                      #  36    0xb1509  1      OPC=nop             
  nop                                                                                                      #  37    0xb150a  1      OPC=nop             
  nop                                                                                                      #  38    0xb150b  1      OPC=nop             
  nop                                                                                                      #  39    0xb150c  1      OPC=nop             
                                                                                                                                                        
.size _ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRf, .-_ZNKSt7num_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE3getES3_S3_RSt8ios_baseRSt12_Ios_IostateRf

