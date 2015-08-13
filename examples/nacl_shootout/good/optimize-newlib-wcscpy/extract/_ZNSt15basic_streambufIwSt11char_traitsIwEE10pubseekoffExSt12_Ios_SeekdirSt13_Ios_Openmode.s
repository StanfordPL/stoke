  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, @function

#! file-offset 0xe8560
#! rip-offset  0xa8560
#! capacity    64 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode:  #        0xa8560  0      OPC=<label>         
  movl %edi, %edi                                                                             #  1     0xa8560  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                            #  2     0xa8562  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  3     0xa8565  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  4     0xa8568  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  5     0xa856a  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                             #  6     0xa856e  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                #  7     0xa8570  5      OPC=movl_r32_m32    
  nop                                                                                         #  8     0xa8575  1      OPC=nop             
  nop                                                                                         #  9     0xa8576  1      OPC=nop             
  nop                                                                                         #  10    0xa8577  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  11    0xa8578  6      OPC=andl_r32_imm32  
  nop                                                                                         #  12    0xa857e  1      OPC=nop             
  nop                                                                                         #  13    0xa857f  1      OPC=nop             
  nop                                                                                         #  14    0xa8580  1      OPC=nop             
  addq %r15, %rax                                                                             #  15    0xa8581  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  16    0xa8584  2      OPC=callq_r64       
  addl $0x28, %esp                                                                            #  17    0xa8586  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  18    0xa8589  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  19    0xa858c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  20    0xa858e  7      OPC=andl_r32_imm32  
  nop                                                                                         #  21    0xa8595  1      OPC=nop             
  nop                                                                                         #  22    0xa8596  1      OPC=nop             
  nop                                                                                         #  23    0xa8597  1      OPC=nop             
  nop                                                                                         #  24    0xa8598  1      OPC=nop             
  addq %r15, %r11                                                                             #  25    0xa8599  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  26    0xa859c  3      OPC=jmpq_r64        
  nop                                                                                         #  27    0xa859f  1      OPC=nop             
  nop                                                                                         #  28    0xa85a0  1      OPC=nop             
  nop                                                                                         #  29    0xa85a1  1      OPC=nop             
  nop                                                                                         #  30    0xa85a2  1      OPC=nop             
  nop                                                                                         #  31    0xa85a3  1      OPC=nop             
  nop                                                                                         #  32    0xa85a4  1      OPC=nop             
  nop                                                                                         #  33    0xa85a5  1      OPC=nop             
  nop                                                                                         #  34    0xa85a6  1      OPC=nop             
  nop                                                                                         #  35    0xa85a7  1      OPC=nop             
  nop                                                                                         #  36    0xa85a8  1      OPC=nop             
  nop                                                                                         #  37    0xa85a9  1      OPC=nop             
  nop                                                                                         #  38    0xa85aa  1      OPC=nop             
  nop                                                                                         #  39    0xa85ab  1      OPC=nop             
  nop                                                                                         #  40    0xa85ac  1      OPC=nop             
                                                                                                                                           
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode

