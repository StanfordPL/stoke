  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xe85a0
#! rip-offset  0xa85a0
#! capacity    96 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0xa85a0  0      OPC=<label>         
  movl %edi, %edi                                                                                 #  1     0xa85a0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                #  2     0xa85a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  3     0xa85a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                 #  4     0xa85a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                        #  5     0xa85aa  4      OPC=movl_r32_m32    
  movq %rsi, 0x10(%rsp)                                                                           #  6     0xa85ae  5      OPC=movq_m64_r64    
  movq %rdx, 0x18(%rsp)                                                                           #  7     0xa85b3  5      OPC=movq_m64_r64    
  movl %eax, %eax                                                                                 #  8     0xa85b8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                                    #  9     0xa85ba  5      OPC=movl_r32_m32    
  nop                                                                                             #  10    0xa85bf  1      OPC=nop             
  nop                                                                                             #  11    0xa85c0  1      OPC=nop             
  nop                                                                                             #  12    0xa85c1  1      OPC=nop             
  nop                                                                                             #  13    0xa85c2  1      OPC=nop             
  nop                                                                                             #  14    0xa85c3  1      OPC=nop             
  nop                                                                                             #  15    0xa85c4  1      OPC=nop             
  nop                                                                                             #  16    0xa85c5  1      OPC=nop             
  nop                                                                                             #  17    0xa85c6  1      OPC=nop             
  nop                                                                                             #  18    0xa85c7  1      OPC=nop             
  nop                                                                                             #  19    0xa85c8  1      OPC=nop             
  nop                                                                                             #  20    0xa85c9  1      OPC=nop             
  nop                                                                                             #  21    0xa85ca  1      OPC=nop             
  nop                                                                                             #  22    0xa85cb  1      OPC=nop             
  nop                                                                                             #  23    0xa85cc  1      OPC=nop             
  nop                                                                                             #  24    0xa85cd  1      OPC=nop             
  nop                                                                                             #  25    0xa85ce  1      OPC=nop             
  nop                                                                                             #  26    0xa85cf  1      OPC=nop             
  nop                                                                                             #  27    0xa85d0  1      OPC=nop             
  nop                                                                                             #  28    0xa85d1  1      OPC=nop             
  nop                                                                                             #  29    0xa85d2  1      OPC=nop             
  nop                                                                                             #  30    0xa85d3  1      OPC=nop             
  nop                                                                                             #  31    0xa85d4  1      OPC=nop             
  nop                                                                                             #  32    0xa85d5  1      OPC=nop             
  nop                                                                                             #  33    0xa85d6  1      OPC=nop             
  nop                                                                                             #  34    0xa85d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                          #  35    0xa85d8  6      OPC=andl_r32_imm32  
  nop                                                                                             #  36    0xa85de  1      OPC=nop             
  nop                                                                                             #  37    0xa85df  1      OPC=nop             
  nop                                                                                             #  38    0xa85e0  1      OPC=nop             
  addq %r15, %rax                                                                                 #  39    0xa85e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                      #  40    0xa85e4  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                #  41    0xa85e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  42    0xa85e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                       #  43    0xa85ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  44    0xa85ee  7      OPC=andl_r32_imm32  
  nop                                                                                             #  45    0xa85f5  1      OPC=nop             
  nop                                                                                             #  46    0xa85f6  1      OPC=nop             
  nop                                                                                             #  47    0xa85f7  1      OPC=nop             
  nop                                                                                             #  48    0xa85f8  1      OPC=nop             
  addq %r15, %r11                                                                                 #  49    0xa85f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  50    0xa85fc  3      OPC=jmpq_r64        
  nop                                                                                             #  51    0xa85ff  1      OPC=nop             
  nop                                                                                             #  52    0xa8600  1      OPC=nop             
  nop                                                                                             #  53    0xa8601  1      OPC=nop             
  nop                                                                                             #  54    0xa8602  1      OPC=nop             
  nop                                                                                             #  55    0xa8603  1      OPC=nop             
  nop                                                                                             #  56    0xa8604  1      OPC=nop             
  nop                                                                                             #  57    0xa8605  1      OPC=nop             
  nop                                                                                             #  58    0xa8606  1      OPC=nop             
  nop                                                                                             #  59    0xa8607  1      OPC=nop             
  nop                                                                                             #  60    0xa8608  1      OPC=nop             
  nop                                                                                             #  61    0xa8609  1      OPC=nop             
  nop                                                                                             #  62    0xa860a  1      OPC=nop             
  nop                                                                                             #  63    0xa860b  1      OPC=nop             
  nop                                                                                             #  64    0xa860c  1      OPC=nop             
                                                                                                                                               
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode

