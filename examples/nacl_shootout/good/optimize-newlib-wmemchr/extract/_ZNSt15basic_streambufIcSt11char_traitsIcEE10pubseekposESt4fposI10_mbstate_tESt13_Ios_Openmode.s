  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xe83c0
#! rip-offset  0xa83c0
#! capacity    96 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0xa83c0  0      OPC=<label>         
  movl %edi, %edi                                                                                 #  1     0xa83c0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                #  2     0xa83c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  3     0xa83c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                 #  4     0xa83c8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                        #  5     0xa83ca  4      OPC=movl_r32_m32    
  movq %rsi, 0x10(%rsp)                                                                           #  6     0xa83ce  5      OPC=movq_m64_r64    
  movq %rdx, 0x18(%rsp)                                                                           #  7     0xa83d3  5      OPC=movq_m64_r64    
  movl %eax, %eax                                                                                 #  8     0xa83d8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                                    #  9     0xa83da  5      OPC=movl_r32_m32    
  nop                                                                                             #  10    0xa83df  1      OPC=nop             
  nop                                                                                             #  11    0xa83e0  1      OPC=nop             
  nop                                                                                             #  12    0xa83e1  1      OPC=nop             
  nop                                                                                             #  13    0xa83e2  1      OPC=nop             
  nop                                                                                             #  14    0xa83e3  1      OPC=nop             
  nop                                                                                             #  15    0xa83e4  1      OPC=nop             
  nop                                                                                             #  16    0xa83e5  1      OPC=nop             
  nop                                                                                             #  17    0xa83e6  1      OPC=nop             
  nop                                                                                             #  18    0xa83e7  1      OPC=nop             
  nop                                                                                             #  19    0xa83e8  1      OPC=nop             
  nop                                                                                             #  20    0xa83e9  1      OPC=nop             
  nop                                                                                             #  21    0xa83ea  1      OPC=nop             
  nop                                                                                             #  22    0xa83eb  1      OPC=nop             
  nop                                                                                             #  23    0xa83ec  1      OPC=nop             
  nop                                                                                             #  24    0xa83ed  1      OPC=nop             
  nop                                                                                             #  25    0xa83ee  1      OPC=nop             
  nop                                                                                             #  26    0xa83ef  1      OPC=nop             
  nop                                                                                             #  27    0xa83f0  1      OPC=nop             
  nop                                                                                             #  28    0xa83f1  1      OPC=nop             
  nop                                                                                             #  29    0xa83f2  1      OPC=nop             
  nop                                                                                             #  30    0xa83f3  1      OPC=nop             
  nop                                                                                             #  31    0xa83f4  1      OPC=nop             
  nop                                                                                             #  32    0xa83f5  1      OPC=nop             
  nop                                                                                             #  33    0xa83f6  1      OPC=nop             
  nop                                                                                             #  34    0xa83f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                          #  35    0xa83f8  6      OPC=andl_r32_imm32  
  nop                                                                                             #  36    0xa83fe  1      OPC=nop             
  nop                                                                                             #  37    0xa83ff  1      OPC=nop             
  nop                                                                                             #  38    0xa8400  1      OPC=nop             
  addq %r15, %rax                                                                                 #  39    0xa8401  3      OPC=addq_r64_r64    
  callq %rax                                                                                      #  40    0xa8404  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                #  41    0xa8406  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  42    0xa8409  3      OPC=addq_r64_r64    
  popq %r11                                                                                       #  43    0xa840c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  44    0xa840e  7      OPC=andl_r32_imm32  
  nop                                                                                             #  45    0xa8415  1      OPC=nop             
  nop                                                                                             #  46    0xa8416  1      OPC=nop             
  nop                                                                                             #  47    0xa8417  1      OPC=nop             
  nop                                                                                             #  48    0xa8418  1      OPC=nop             
  addq %r15, %r11                                                                                 #  49    0xa8419  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  50    0xa841c  3      OPC=jmpq_r64        
  nop                                                                                             #  51    0xa841f  1      OPC=nop             
  nop                                                                                             #  52    0xa8420  1      OPC=nop             
  nop                                                                                             #  53    0xa8421  1      OPC=nop             
  nop                                                                                             #  54    0xa8422  1      OPC=nop             
  nop                                                                                             #  55    0xa8423  1      OPC=nop             
  nop                                                                                             #  56    0xa8424  1      OPC=nop             
  nop                                                                                             #  57    0xa8425  1      OPC=nop             
  nop                                                                                             #  58    0xa8426  1      OPC=nop             
  nop                                                                                             #  59    0xa8427  1      OPC=nop             
  nop                                                                                             #  60    0xa8428  1      OPC=nop             
  nop                                                                                             #  61    0xa8429  1      OPC=nop             
  nop                                                                                             #  62    0xa842a  1      OPC=nop             
  nop                                                                                             #  63    0xa842b  1      OPC=nop             
  nop                                                                                             #  64    0xa842c  1      OPC=nop             
                                                                                                                                               
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode

