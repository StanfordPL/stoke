  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv, @function

#! file-offset 0xe9460
#! rip-offset  0xa9460
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv:  #        0xa9460  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9460  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9462  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                          #  3     0xa9464  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9469  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                          #  5     0xa946b  5      OPC=cmpl_m32_r32    
  jbe .L_a94a0                                         #  6     0xa9470  2      OPC=jbe_label       
  popq %r11                                            #  7     0xa9472  2      OPC=popq_r64_1      
  movl %eax, %eax                                      #  8     0xa9474  2      OPC=movl_r32_r32    
  movzbl (%r15,%rax,1), %eax                           #  9     0xa9476  5      OPC=movzbl_r32_m8   
  nop                                                  #  10    0xa947b  1      OPC=nop             
  nop                                                  #  11    0xa947c  1      OPC=nop             
  nop                                                  #  12    0xa947d  1      OPC=nop             
  nop                                                  #  13    0xa947e  1      OPC=nop             
  nop                                                  #  14    0xa947f  1      OPC=nop             
  andl $0xffffffe0, %r11d                              #  15    0xa9480  7      OPC=andl_r32_imm32  
  nop                                                  #  16    0xa9487  1      OPC=nop             
  nop                                                  #  17    0xa9488  1      OPC=nop             
  nop                                                  #  18    0xa9489  1      OPC=nop             
  nop                                                  #  19    0xa948a  1      OPC=nop             
  addq %r15, %r11                                      #  20    0xa948b  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  21    0xa948e  3      OPC=jmpq_r64        
  nop                                                  #  22    0xa9491  1      OPC=nop             
  nop                                                  #  23    0xa9492  1      OPC=nop             
  nop                                                  #  24    0xa9493  1      OPC=nop             
  nop                                                  #  25    0xa9494  1      OPC=nop             
  nop                                                  #  26    0xa9495  1      OPC=nop             
  nop                                                  #  27    0xa9496  1      OPC=nop             
  nop                                                  #  28    0xa9497  1      OPC=nop             
  nop                                                  #  29    0xa9498  1      OPC=nop             
  nop                                                  #  30    0xa9499  1      OPC=nop             
  nop                                                  #  31    0xa949a  1      OPC=nop             
  nop                                                  #  32    0xa949b  1      OPC=nop             
  nop                                                  #  33    0xa949c  1      OPC=nop             
  nop                                                  #  34    0xa949d  1      OPC=nop             
  nop                                                  #  35    0xa949e  1      OPC=nop             
  nop                                                  #  36    0xa949f  1      OPC=nop             
  nop                                                  #  37    0xa94a0  1      OPC=nop             
  nop                                                  #  38    0xa94a1  1      OPC=nop             
  nop                                                  #  39    0xa94a2  1      OPC=nop             
  nop                                                  #  40    0xa94a3  1      OPC=nop             
  nop                                                  #  41    0xa94a4  1      OPC=nop             
  nop                                                  #  42    0xa94a5  1      OPC=nop             
  nop                                                  #  43    0xa94a6  1      OPC=nop             
.L_a94a0:                                              #        0xa94a7  0      OPC=<label>         
  movl %edi, %edi                                      #  44    0xa94a7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  45    0xa94a9  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  46    0xa94ad  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  47    0xa94af  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                               #  48    0xa94b4  6      OPC=andl_r32_imm32  
  nop                                                  #  49    0xa94ba  1      OPC=nop             
  nop                                                  #  50    0xa94bb  1      OPC=nop             
  nop                                                  #  51    0xa94bc  1      OPC=nop             
  addq %r15, %rax                                      #  52    0xa94bd  3      OPC=addq_r64_r64    
  jmpq %rax                                            #  53    0xa94c0  2      OPC=jmpq_r64        
  nop                                                  #  54    0xa94c2  1      OPC=nop             
  nop                                                  #  55    0xa94c3  1      OPC=nop             
  nop                                                  #  56    0xa94c4  1      OPC=nop             
  nop                                                  #  57    0xa94c5  1      OPC=nop             
  nop                                                  #  58    0xa94c6  1      OPC=nop             
  nop                                                  #  59    0xa94c7  1      OPC=nop             
  nop                                                  #  60    0xa94c8  1      OPC=nop             
  nop                                                  #  61    0xa94c9  1      OPC=nop             
  nop                                                  #  62    0xa94ca  1      OPC=nop             
  nop                                                  #  63    0xa94cb  1      OPC=nop             
  nop                                                  #  64    0xa94cc  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv

