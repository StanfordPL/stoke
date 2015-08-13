  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xe80c0
#! rip-offset  0xa80c0
#! capacity    96 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0xa80c0  0      OPC=<label>         
  movl %edi, %edi                                                                                 #  1     0xa80c0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                #  2     0xa80c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  3     0xa80c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                 #  4     0xa80c8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                        #  5     0xa80ca  4      OPC=movl_r32_m32    
  movq %rsi, 0x10(%rsp)                                                                           #  6     0xa80ce  5      OPC=movq_m64_r64    
  movq %rdx, 0x18(%rsp)                                                                           #  7     0xa80d3  5      OPC=movq_m64_r64    
  movl %eax, %eax                                                                                 #  8     0xa80d8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                                    #  9     0xa80da  5      OPC=movl_r32_m32    
  nop                                                                                             #  10    0xa80df  1      OPC=nop             
  nop                                                                                             #  11    0xa80e0  1      OPC=nop             
  nop                                                                                             #  12    0xa80e1  1      OPC=nop             
  nop                                                                                             #  13    0xa80e2  1      OPC=nop             
  nop                                                                                             #  14    0xa80e3  1      OPC=nop             
  nop                                                                                             #  15    0xa80e4  1      OPC=nop             
  nop                                                                                             #  16    0xa80e5  1      OPC=nop             
  nop                                                                                             #  17    0xa80e6  1      OPC=nop             
  nop                                                                                             #  18    0xa80e7  1      OPC=nop             
  nop                                                                                             #  19    0xa80e8  1      OPC=nop             
  nop                                                                                             #  20    0xa80e9  1      OPC=nop             
  nop                                                                                             #  21    0xa80ea  1      OPC=nop             
  nop                                                                                             #  22    0xa80eb  1      OPC=nop             
  nop                                                                                             #  23    0xa80ec  1      OPC=nop             
  nop                                                                                             #  24    0xa80ed  1      OPC=nop             
  nop                                                                                             #  25    0xa80ee  1      OPC=nop             
  nop                                                                                             #  26    0xa80ef  1      OPC=nop             
  nop                                                                                             #  27    0xa80f0  1      OPC=nop             
  nop                                                                                             #  28    0xa80f1  1      OPC=nop             
  nop                                                                                             #  29    0xa80f2  1      OPC=nop             
  nop                                                                                             #  30    0xa80f3  1      OPC=nop             
  nop                                                                                             #  31    0xa80f4  1      OPC=nop             
  nop                                                                                             #  32    0xa80f5  1      OPC=nop             
  nop                                                                                             #  33    0xa80f6  1      OPC=nop             
  nop                                                                                             #  34    0xa80f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                          #  35    0xa80f8  6      OPC=andl_r32_imm32  
  nop                                                                                             #  36    0xa80fe  1      OPC=nop             
  nop                                                                                             #  37    0xa80ff  1      OPC=nop             
  nop                                                                                             #  38    0xa8100  1      OPC=nop             
  addq %r15, %rax                                                                                 #  39    0xa8101  3      OPC=addq_r64_r64    
  callq %rax                                                                                      #  40    0xa8104  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                #  41    0xa8106  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  42    0xa8109  3      OPC=addq_r64_r64    
  popq %r11                                                                                       #  43    0xa810c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  44    0xa810e  7      OPC=andl_r32_imm32  
  nop                                                                                             #  45    0xa8115  1      OPC=nop             
  nop                                                                                             #  46    0xa8116  1      OPC=nop             
  nop                                                                                             #  47    0xa8117  1      OPC=nop             
  nop                                                                                             #  48    0xa8118  1      OPC=nop             
  addq %r15, %r11                                                                                 #  49    0xa8119  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  50    0xa811c  3      OPC=jmpq_r64        
  nop                                                                                             #  51    0xa811f  1      OPC=nop             
  nop                                                                                             #  52    0xa8120  1      OPC=nop             
  nop                                                                                             #  53    0xa8121  1      OPC=nop             
  nop                                                                                             #  54    0xa8122  1      OPC=nop             
  nop                                                                                             #  55    0xa8123  1      OPC=nop             
  nop                                                                                             #  56    0xa8124  1      OPC=nop             
  nop                                                                                             #  57    0xa8125  1      OPC=nop             
  nop                                                                                             #  58    0xa8126  1      OPC=nop             
  nop                                                                                             #  59    0xa8127  1      OPC=nop             
  nop                                                                                             #  60    0xa8128  1      OPC=nop             
  nop                                                                                             #  61    0xa8129  1      OPC=nop             
  nop                                                                                             #  62    0xa812a  1      OPC=nop             
  nop                                                                                             #  63    0xa812b  1      OPC=nop             
  nop                                                                                             #  64    0xa812c  1      OPC=nop             
                                                                                                                                               
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode

