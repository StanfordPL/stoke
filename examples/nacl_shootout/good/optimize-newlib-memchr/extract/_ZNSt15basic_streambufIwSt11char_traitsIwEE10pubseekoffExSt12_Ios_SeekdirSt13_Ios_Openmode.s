  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, @function

#! file-offset 0xe8f80
#! rip-offset  0xa8f80
#! capacity    64 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode:  #        0xa8f80  0      OPC=<label>         
  movl %edi, %edi                                                                             #  1     0xa8f80  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                            #  2     0xa8f82  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  3     0xa8f85  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  4     0xa8f88  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  5     0xa8f8a  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                             #  6     0xa8f8e  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                #  7     0xa8f90  5      OPC=movl_r32_m32    
  nop                                                                                         #  8     0xa8f95  1      OPC=nop             
  nop                                                                                         #  9     0xa8f96  1      OPC=nop             
  nop                                                                                         #  10    0xa8f97  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  11    0xa8f98  6      OPC=andl_r32_imm32  
  nop                                                                                         #  12    0xa8f9e  1      OPC=nop             
  nop                                                                                         #  13    0xa8f9f  1      OPC=nop             
  nop                                                                                         #  14    0xa8fa0  1      OPC=nop             
  addq %r15, %rax                                                                             #  15    0xa8fa1  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  16    0xa8fa4  2      OPC=callq_r64       
  addl $0x28, %esp                                                                            #  17    0xa8fa6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  18    0xa8fa9  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  19    0xa8fac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  20    0xa8fae  7      OPC=andl_r32_imm32  
  nop                                                                                         #  21    0xa8fb5  1      OPC=nop             
  nop                                                                                         #  22    0xa8fb6  1      OPC=nop             
  nop                                                                                         #  23    0xa8fb7  1      OPC=nop             
  nop                                                                                         #  24    0xa8fb8  1      OPC=nop             
  addq %r15, %r11                                                                             #  25    0xa8fb9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  26    0xa8fbc  3      OPC=jmpq_r64        
  nop                                                                                         #  27    0xa8fbf  1      OPC=nop             
  nop                                                                                         #  28    0xa8fc0  1      OPC=nop             
  nop                                                                                         #  29    0xa8fc1  1      OPC=nop             
  nop                                                                                         #  30    0xa8fc2  1      OPC=nop             
  nop                                                                                         #  31    0xa8fc3  1      OPC=nop             
  nop                                                                                         #  32    0xa8fc4  1      OPC=nop             
  nop                                                                                         #  33    0xa8fc5  1      OPC=nop             
  nop                                                                                         #  34    0xa8fc6  1      OPC=nop             
  nop                                                                                         #  35    0xa8fc7  1      OPC=nop             
  nop                                                                                         #  36    0xa8fc8  1      OPC=nop             
  nop                                                                                         #  37    0xa8fc9  1      OPC=nop             
  nop                                                                                         #  38    0xa8fca  1      OPC=nop             
  nop                                                                                         #  39    0xa8fcb  1      OPC=nop             
  nop                                                                                         #  40    0xa8fcc  1      OPC=nop             
                                                                                                                                           
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode

