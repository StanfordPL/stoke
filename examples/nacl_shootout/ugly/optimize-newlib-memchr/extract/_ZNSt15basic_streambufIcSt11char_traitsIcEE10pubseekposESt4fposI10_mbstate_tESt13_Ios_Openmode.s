  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, @function

#! file-offset 0xe8ae0
#! rip-offset  0xa8ae0
#! capacity    96 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode:  #        0xa8ae0  0      OPC=<label>         
  movl %edi, %edi                                                                                 #  1     0xa8ae0  2      OPC=movl_r32_r32    
  subl $0x38, %esp                                                                                #  2     0xa8ae2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  3     0xa8ae5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                                 #  4     0xa8ae8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                        #  5     0xa8aea  4      OPC=movl_r32_m32    
  movq %rsi, 0x10(%rsp)                                                                           #  6     0xa8aee  5      OPC=movq_m64_r64    
  movq %rdx, 0x18(%rsp)                                                                           #  7     0xa8af3  5      OPC=movq_m64_r64    
  movl %eax, %eax                                                                                 #  8     0xa8af8  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rax,1), %eax                                                                    #  9     0xa8afa  5      OPC=movl_r32_m32    
  nop                                                                                             #  10    0xa8aff  1      OPC=nop             
  nop                                                                                             #  11    0xa8b00  1      OPC=nop             
  nop                                                                                             #  12    0xa8b01  1      OPC=nop             
  nop                                                                                             #  13    0xa8b02  1      OPC=nop             
  nop                                                                                             #  14    0xa8b03  1      OPC=nop             
  nop                                                                                             #  15    0xa8b04  1      OPC=nop             
  nop                                                                                             #  16    0xa8b05  1      OPC=nop             
  nop                                                                                             #  17    0xa8b06  1      OPC=nop             
  nop                                                                                             #  18    0xa8b07  1      OPC=nop             
  nop                                                                                             #  19    0xa8b08  1      OPC=nop             
  nop                                                                                             #  20    0xa8b09  1      OPC=nop             
  nop                                                                                             #  21    0xa8b0a  1      OPC=nop             
  nop                                                                                             #  22    0xa8b0b  1      OPC=nop             
  nop                                                                                             #  23    0xa8b0c  1      OPC=nop             
  nop                                                                                             #  24    0xa8b0d  1      OPC=nop             
  nop                                                                                             #  25    0xa8b0e  1      OPC=nop             
  nop                                                                                             #  26    0xa8b0f  1      OPC=nop             
  nop                                                                                             #  27    0xa8b10  1      OPC=nop             
  nop                                                                                             #  28    0xa8b11  1      OPC=nop             
  nop                                                                                             #  29    0xa8b12  1      OPC=nop             
  nop                                                                                             #  30    0xa8b13  1      OPC=nop             
  nop                                                                                             #  31    0xa8b14  1      OPC=nop             
  nop                                                                                             #  32    0xa8b15  1      OPC=nop             
  nop                                                                                             #  33    0xa8b16  1      OPC=nop             
  nop                                                                                             #  34    0xa8b17  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                          #  35    0xa8b18  6      OPC=andl_r32_imm32  
  nop                                                                                             #  36    0xa8b1e  1      OPC=nop             
  nop                                                                                             #  37    0xa8b1f  1      OPC=nop             
  nop                                                                                             #  38    0xa8b20  1      OPC=nop             
  addq %r15, %rax                                                                                 #  39    0xa8b21  3      OPC=addq_r64_r64    
  callq %rax                                                                                      #  40    0xa8b24  2      OPC=callq_r64       
  addl $0x38, %esp                                                                                #  41    0xa8b26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  42    0xa8b29  3      OPC=addq_r64_r64    
  popq %r11                                                                                       #  43    0xa8b2c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  44    0xa8b2e  7      OPC=andl_r32_imm32  
  nop                                                                                             #  45    0xa8b35  1      OPC=nop             
  nop                                                                                             #  46    0xa8b36  1      OPC=nop             
  nop                                                                                             #  47    0xa8b37  1      OPC=nop             
  nop                                                                                             #  48    0xa8b38  1      OPC=nop             
  addq %r15, %r11                                                                                 #  49    0xa8b39  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  50    0xa8b3c  3      OPC=jmpq_r64        
  nop                                                                                             #  51    0xa8b3f  1      OPC=nop             
  nop                                                                                             #  52    0xa8b40  1      OPC=nop             
  nop                                                                                             #  53    0xa8b41  1      OPC=nop             
  nop                                                                                             #  54    0xa8b42  1      OPC=nop             
  nop                                                                                             #  55    0xa8b43  1      OPC=nop             
  nop                                                                                             #  56    0xa8b44  1      OPC=nop             
  nop                                                                                             #  57    0xa8b45  1      OPC=nop             
  nop                                                                                             #  58    0xa8b46  1      OPC=nop             
  nop                                                                                             #  59    0xa8b47  1      OPC=nop             
  nop                                                                                             #  60    0xa8b48  1      OPC=nop             
  nop                                                                                             #  61    0xa8b49  1      OPC=nop             
  nop                                                                                             #  62    0xa8b4a  1      OPC=nop             
  nop                                                                                             #  63    0xa8b4b  1      OPC=nop             
  nop                                                                                             #  64    0xa8b4c  1      OPC=nop             
                                                                                                                                               
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekposESt4fposI10_mbstate_tESt13_Ios_Openmode

