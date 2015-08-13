  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv, @function

#! file-offset 0xe9260
#! rip-offset  0xa9260
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv:  #        0xa9260  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9260  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9262  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                          #  3     0xa9264  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9269  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                          #  5     0xa926b  5      OPC=cmpl_m32_r32    
  jbe .L_a92a0                                         #  6     0xa9270  2      OPC=jbe_label       
  popq %r11                                            #  7     0xa9272  2      OPC=popq_r64_1      
  movl %eax, %eax                                      #  8     0xa9274  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                             #  9     0xa9276  4      OPC=movl_r32_m32    
  nop                                                  #  10    0xa927a  1      OPC=nop             
  nop                                                  #  11    0xa927b  1      OPC=nop             
  nop                                                  #  12    0xa927c  1      OPC=nop             
  nop                                                  #  13    0xa927d  1      OPC=nop             
  nop                                                  #  14    0xa927e  1      OPC=nop             
  nop                                                  #  15    0xa927f  1      OPC=nop             
  andl $0xffffffe0, %r11d                              #  16    0xa9280  7      OPC=andl_r32_imm32  
  nop                                                  #  17    0xa9287  1      OPC=nop             
  nop                                                  #  18    0xa9288  1      OPC=nop             
  nop                                                  #  19    0xa9289  1      OPC=nop             
  nop                                                  #  20    0xa928a  1      OPC=nop             
  addq %r15, %r11                                      #  21    0xa928b  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  22    0xa928e  3      OPC=jmpq_r64        
  nop                                                  #  23    0xa9291  1      OPC=nop             
  nop                                                  #  24    0xa9292  1      OPC=nop             
  nop                                                  #  25    0xa9293  1      OPC=nop             
  nop                                                  #  26    0xa9294  1      OPC=nop             
  nop                                                  #  27    0xa9295  1      OPC=nop             
  nop                                                  #  28    0xa9296  1      OPC=nop             
  nop                                                  #  29    0xa9297  1      OPC=nop             
  nop                                                  #  30    0xa9298  1      OPC=nop             
  nop                                                  #  31    0xa9299  1      OPC=nop             
  nop                                                  #  32    0xa929a  1      OPC=nop             
  nop                                                  #  33    0xa929b  1      OPC=nop             
  nop                                                  #  34    0xa929c  1      OPC=nop             
  nop                                                  #  35    0xa929d  1      OPC=nop             
  nop                                                  #  36    0xa929e  1      OPC=nop             
  nop                                                  #  37    0xa929f  1      OPC=nop             
  nop                                                  #  38    0xa92a0  1      OPC=nop             
  nop                                                  #  39    0xa92a1  1      OPC=nop             
  nop                                                  #  40    0xa92a2  1      OPC=nop             
  nop                                                  #  41    0xa92a3  1      OPC=nop             
  nop                                                  #  42    0xa92a4  1      OPC=nop             
  nop                                                  #  43    0xa92a5  1      OPC=nop             
  nop                                                  #  44    0xa92a6  1      OPC=nop             
.L_a92a0:                                              #        0xa92a7  0      OPC=<label>         
  movl %edi, %edi                                      #  45    0xa92a7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  46    0xa92a9  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  47    0xa92ad  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  48    0xa92af  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                               #  49    0xa92b4  6      OPC=andl_r32_imm32  
  nop                                                  #  50    0xa92ba  1      OPC=nop             
  nop                                                  #  51    0xa92bb  1      OPC=nop             
  nop                                                  #  52    0xa92bc  1      OPC=nop             
  addq %r15, %rax                                      #  53    0xa92bd  3      OPC=addq_r64_r64    
  jmpq %rax                                            #  54    0xa92c0  2      OPC=jmpq_r64        
  nop                                                  #  55    0xa92c2  1      OPC=nop             
  nop                                                  #  56    0xa92c3  1      OPC=nop             
  nop                                                  #  57    0xa92c4  1      OPC=nop             
  nop                                                  #  58    0xa92c5  1      OPC=nop             
  nop                                                  #  59    0xa92c6  1      OPC=nop             
  nop                                                  #  60    0xa92c7  1      OPC=nop             
  nop                                                  #  61    0xa92c8  1      OPC=nop             
  nop                                                  #  62    0xa92c9  1      OPC=nop             
  nop                                                  #  63    0xa92ca  1      OPC=nop             
  nop                                                  #  64    0xa92cb  1      OPC=nop             
  nop                                                  #  65    0xa92cc  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv

