  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv, @function

#! file-offset 0xe9560
#! rip-offset  0xa9560
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv:  #        0xa9560  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9560  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9562  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                          #  3     0xa9564  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9569  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                          #  5     0xa956b  5      OPC=cmpl_m32_r32    
  jbe .L_a95a0                                         #  6     0xa9570  2      OPC=jbe_label       
  popq %r11                                            #  7     0xa9572  2      OPC=popq_r64_1      
  movl %eax, %eax                                      #  8     0xa9574  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                             #  9     0xa9576  4      OPC=movl_r32_m32    
  nop                                                  #  10    0xa957a  1      OPC=nop             
  nop                                                  #  11    0xa957b  1      OPC=nop             
  nop                                                  #  12    0xa957c  1      OPC=nop             
  nop                                                  #  13    0xa957d  1      OPC=nop             
  nop                                                  #  14    0xa957e  1      OPC=nop             
  nop                                                  #  15    0xa957f  1      OPC=nop             
  andl $0xffffffe0, %r11d                              #  16    0xa9580  7      OPC=andl_r32_imm32  
  nop                                                  #  17    0xa9587  1      OPC=nop             
  nop                                                  #  18    0xa9588  1      OPC=nop             
  nop                                                  #  19    0xa9589  1      OPC=nop             
  nop                                                  #  20    0xa958a  1      OPC=nop             
  addq %r15, %r11                                      #  21    0xa958b  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  22    0xa958e  3      OPC=jmpq_r64        
  nop                                                  #  23    0xa9591  1      OPC=nop             
  nop                                                  #  24    0xa9592  1      OPC=nop             
  nop                                                  #  25    0xa9593  1      OPC=nop             
  nop                                                  #  26    0xa9594  1      OPC=nop             
  nop                                                  #  27    0xa9595  1      OPC=nop             
  nop                                                  #  28    0xa9596  1      OPC=nop             
  nop                                                  #  29    0xa9597  1      OPC=nop             
  nop                                                  #  30    0xa9598  1      OPC=nop             
  nop                                                  #  31    0xa9599  1      OPC=nop             
  nop                                                  #  32    0xa959a  1      OPC=nop             
  nop                                                  #  33    0xa959b  1      OPC=nop             
  nop                                                  #  34    0xa959c  1      OPC=nop             
  nop                                                  #  35    0xa959d  1      OPC=nop             
  nop                                                  #  36    0xa959e  1      OPC=nop             
  nop                                                  #  37    0xa959f  1      OPC=nop             
  nop                                                  #  38    0xa95a0  1      OPC=nop             
  nop                                                  #  39    0xa95a1  1      OPC=nop             
  nop                                                  #  40    0xa95a2  1      OPC=nop             
  nop                                                  #  41    0xa95a3  1      OPC=nop             
  nop                                                  #  42    0xa95a4  1      OPC=nop             
  nop                                                  #  43    0xa95a5  1      OPC=nop             
  nop                                                  #  44    0xa95a6  1      OPC=nop             
.L_a95a0:                                              #        0xa95a7  0      OPC=<label>         
  movl %edi, %edi                                      #  45    0xa95a7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  46    0xa95a9  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  47    0xa95ad  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  48    0xa95af  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                               #  49    0xa95b4  6      OPC=andl_r32_imm32  
  nop                                                  #  50    0xa95ba  1      OPC=nop             
  nop                                                  #  51    0xa95bb  1      OPC=nop             
  nop                                                  #  52    0xa95bc  1      OPC=nop             
  addq %r15, %rax                                      #  53    0xa95bd  3      OPC=addq_r64_r64    
  jmpq %rax                                            #  54    0xa95c0  2      OPC=jmpq_r64        
  nop                                                  #  55    0xa95c2  1      OPC=nop             
  nop                                                  #  56    0xa95c3  1      OPC=nop             
  nop                                                  #  57    0xa95c4  1      OPC=nop             
  nop                                                  #  58    0xa95c5  1      OPC=nop             
  nop                                                  #  59    0xa95c6  1      OPC=nop             
  nop                                                  #  60    0xa95c7  1      OPC=nop             
  nop                                                  #  61    0xa95c8  1      OPC=nop             
  nop                                                  #  62    0xa95c9  1      OPC=nop             
  nop                                                  #  63    0xa95ca  1      OPC=nop             
  nop                                                  #  64    0xa95cb  1      OPC=nop             
  nop                                                  #  65    0xa95cc  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv

