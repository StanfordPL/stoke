  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, @function

#! file-offset 0xe8aa0
#! rip-offset  0xa8aa0
#! capacity    64 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode:  #        0xa8aa0  0      OPC=<label>         
  movl %edi, %edi                                                                             #  1     0xa8aa0  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                            #  2     0xa8aa2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  3     0xa8aa5  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  4     0xa8aa8  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  5     0xa8aaa  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                             #  6     0xa8aae  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                #  7     0xa8ab0  5      OPC=movl_r32_m32    
  nop                                                                                         #  8     0xa8ab5  1      OPC=nop             
  nop                                                                                         #  9     0xa8ab6  1      OPC=nop             
  nop                                                                                         #  10    0xa8ab7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  11    0xa8ab8  6      OPC=andl_r32_imm32  
  nop                                                                                         #  12    0xa8abe  1      OPC=nop             
  nop                                                                                         #  13    0xa8abf  1      OPC=nop             
  nop                                                                                         #  14    0xa8ac0  1      OPC=nop             
  addq %r15, %rax                                                                             #  15    0xa8ac1  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  16    0xa8ac4  2      OPC=callq_r64       
  addl $0x28, %esp                                                                            #  17    0xa8ac6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  18    0xa8ac9  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  19    0xa8acc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  20    0xa8ace  7      OPC=andl_r32_imm32  
  nop                                                                                         #  21    0xa8ad5  1      OPC=nop             
  nop                                                                                         #  22    0xa8ad6  1      OPC=nop             
  nop                                                                                         #  23    0xa8ad7  1      OPC=nop             
  nop                                                                                         #  24    0xa8ad8  1      OPC=nop             
  addq %r15, %r11                                                                             #  25    0xa8ad9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  26    0xa8adc  3      OPC=jmpq_r64        
  nop                                                                                         #  27    0xa8adf  1      OPC=nop             
  nop                                                                                         #  28    0xa8ae0  1      OPC=nop             
  nop                                                                                         #  29    0xa8ae1  1      OPC=nop             
  nop                                                                                         #  30    0xa8ae2  1      OPC=nop             
  nop                                                                                         #  31    0xa8ae3  1      OPC=nop             
  nop                                                                                         #  32    0xa8ae4  1      OPC=nop             
  nop                                                                                         #  33    0xa8ae5  1      OPC=nop             
  nop                                                                                         #  34    0xa8ae6  1      OPC=nop             
  nop                                                                                         #  35    0xa8ae7  1      OPC=nop             
  nop                                                                                         #  36    0xa8ae8  1      OPC=nop             
  nop                                                                                         #  37    0xa8ae9  1      OPC=nop             
  nop                                                                                         #  38    0xa8aea  1      OPC=nop             
  nop                                                                                         #  39    0xa8aeb  1      OPC=nop             
  nop                                                                                         #  40    0xa8aec  1      OPC=nop             
                                                                                                                                           
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode

