  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, @function

#! file-offset 0xe8080
#! rip-offset  0xa8080
#! capacity    64 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode:  #        0xa8080  0      OPC=<label>         
  movl %edi, %edi                                                                             #  1     0xa8080  2      OPC=movl_r32_r32    
  subl $0x28, %esp                                                                            #  2     0xa8082  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  3     0xa8085  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  4     0xa8088  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  5     0xa808a  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                             #  6     0xa808e  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                                #  7     0xa8090  5      OPC=movl_r32_m32    
  nop                                                                                         #  8     0xa8095  1      OPC=nop             
  nop                                                                                         #  9     0xa8096  1      OPC=nop             
  nop                                                                                         #  10    0xa8097  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  11    0xa8098  6      OPC=andl_r32_imm32  
  nop                                                                                         #  12    0xa809e  1      OPC=nop             
  nop                                                                                         #  13    0xa809f  1      OPC=nop             
  nop                                                                                         #  14    0xa80a0  1      OPC=nop             
  addq %r15, %rax                                                                             #  15    0xa80a1  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  16    0xa80a4  2      OPC=callq_r64       
  addl $0x28, %esp                                                                            #  17    0xa80a6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  18    0xa80a9  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  19    0xa80ac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  20    0xa80ae  7      OPC=andl_r32_imm32  
  nop                                                                                         #  21    0xa80b5  1      OPC=nop             
  nop                                                                                         #  22    0xa80b6  1      OPC=nop             
  nop                                                                                         #  23    0xa80b7  1      OPC=nop             
  nop                                                                                         #  24    0xa80b8  1      OPC=nop             
  addq %r15, %r11                                                                             #  25    0xa80b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  26    0xa80bc  3      OPC=jmpq_r64        
  nop                                                                                         #  27    0xa80bf  1      OPC=nop             
  nop                                                                                         #  28    0xa80c0  1      OPC=nop             
  nop                                                                                         #  29    0xa80c1  1      OPC=nop             
  nop                                                                                         #  30    0xa80c2  1      OPC=nop             
  nop                                                                                         #  31    0xa80c3  1      OPC=nop             
  nop                                                                                         #  32    0xa80c4  1      OPC=nop             
  nop                                                                                         #  33    0xa80c5  1      OPC=nop             
  nop                                                                                         #  34    0xa80c6  1      OPC=nop             
  nop                                                                                         #  35    0xa80c7  1      OPC=nop             
  nop                                                                                         #  36    0xa80c8  1      OPC=nop             
  nop                                                                                         #  37    0xa80c9  1      OPC=nop             
  nop                                                                                         #  38    0xa80ca  1      OPC=nop             
  nop                                                                                         #  39    0xa80cb  1      OPC=nop             
  nop                                                                                         #  40    0xa80cc  1      OPC=nop             
                                                                                                                                           
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE10pubseekoffExSt12_Ios_SeekdirSt13_Ios_Openmode

