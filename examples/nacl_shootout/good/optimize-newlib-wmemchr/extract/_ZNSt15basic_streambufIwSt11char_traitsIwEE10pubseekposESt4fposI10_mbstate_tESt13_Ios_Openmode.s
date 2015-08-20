  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xe88a0
#! rip-offset  0xa88a0
#! capacity    96 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0xa88a0  0      OPC=<label>         
  movl %edi, %edi                                                                                 #  1     0xa88a0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                #  2     0xa88a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  3     0xa88a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                 #  4     0xa88a8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                        #  5     0xa88aa  4      OPC=movl_r32_m32    
  movq %rsi, 0x10(%rsp)                                                                           #  6     0xa88ae  5      OPC=movq_m64_r64    
  movq %rdx, 0x18(%rsp)                                                                           #  7     0xa88b3  5      OPC=movq_m64_r64    
  movl %eax, %eax                                                                                 #  8     0xa88b8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                                    #  9     0xa88ba  5      OPC=movl_r32_m32    
  nop                                                                                             #  10    0xa88bf  1      OPC=nop             
  nop                                                                                             #  11    0xa88c0  1      OPC=nop             
  nop                                                                                             #  12    0xa88c1  1      OPC=nop             
  nop                                                                                             #  13    0xa88c2  1      OPC=nop             
  nop                                                                                             #  14    0xa88c3  1      OPC=nop             
  nop                                                                                             #  15    0xa88c4  1      OPC=nop             
  nop                                                                                             #  16    0xa88c5  1      OPC=nop             
  nop                                                                                             #  17    0xa88c6  1      OPC=nop             
  nop                                                                                             #  18    0xa88c7  1      OPC=nop             
  nop                                                                                             #  19    0xa88c8  1      OPC=nop             
  nop                                                                                             #  20    0xa88c9  1      OPC=nop             
  nop                                                                                             #  21    0xa88ca  1      OPC=nop             
  nop                                                                                             #  22    0xa88cb  1      OPC=nop             
  nop                                                                                             #  23    0xa88cc  1      OPC=nop             
  nop                                                                                             #  24    0xa88cd  1      OPC=nop             
  nop                                                                                             #  25    0xa88ce  1      OPC=nop             
  nop                                                                                             #  26    0xa88cf  1      OPC=nop             
  nop                                                                                             #  27    0xa88d0  1      OPC=nop             
  nop                                                                                             #  28    0xa88d1  1      OPC=nop             
  nop                                                                                             #  29    0xa88d2  1      OPC=nop             
  nop                                                                                             #  30    0xa88d3  1      OPC=nop             
  nop                                                                                             #  31    0xa88d4  1      OPC=nop             
  nop                                                                                             #  32    0xa88d5  1      OPC=nop             
  nop                                                                                             #  33    0xa88d6  1      OPC=nop             
  nop                                                                                             #  34    0xa88d7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                          #  35    0xa88d8  6      OPC=andl_r32_imm32  
  nop                                                                                             #  36    0xa88de  1      OPC=nop             
  nop                                                                                             #  37    0xa88df  1      OPC=nop             
  nop                                                                                             #  38    0xa88e0  1      OPC=nop             
  addq %r15, %rax                                                                                 #  39    0xa88e1  3      OPC=addq_r64_r64    
  callq %rax                                                                                      #  40    0xa88e4  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                #  41    0xa88e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  42    0xa88e9  3      OPC=addq_r64_r64    
  popq %r11                                                                                       #  43    0xa88ec  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  44    0xa88ee  7      OPC=andl_r32_imm32  
  nop                                                                                             #  45    0xa88f5  1      OPC=nop             
  nop                                                                                             #  46    0xa88f6  1      OPC=nop             
  nop                                                                                             #  47    0xa88f7  1      OPC=nop             
  nop                                                                                             #  48    0xa88f8  1      OPC=nop             
  addq %r15, %r11                                                                                 #  49    0xa88f9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  50    0xa88fc  3      OPC=jmpq_r64        
  nop                                                                                             #  51    0xa88ff  1      OPC=nop             
  nop                                                                                             #  52    0xa8900  1      OPC=nop             
  nop                                                                                             #  53    0xa8901  1      OPC=nop             
  nop                                                                                             #  54    0xa8902  1      OPC=nop             
  nop                                                                                             #  55    0xa8903  1      OPC=nop             
  nop                                                                                             #  56    0xa8904  1      OPC=nop             
  nop                                                                                             #  57    0xa8905  1      OPC=nop             
  nop                                                                                             #  58    0xa8906  1      OPC=nop             
  nop                                                                                             #  59    0xa8907  1      OPC=nop             
  nop                                                                                             #  60    0xa8908  1      OPC=nop             
  nop                                                                                             #  61    0xa8909  1      OPC=nop             
  nop                                                                                             #  62    0xa890a  1      OPC=nop             
  nop                                                                                             #  63    0xa890b  1      OPC=nop             
  nop                                                                                             #  64    0xa890c  1      OPC=nop             
                                                                                                                                               
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode

