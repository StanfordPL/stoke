  .text
  .globl _ZNKSt10error_code23default_error_conditionEv
  .type _ZNKSt10error_code23default_error_conditionEv, @function

#! file-offset 0x129a00
#! rip-offset  0xe9a00
#! capacity    96 bytes

# Text                                           #  Line  RIP      Bytes  Opcode              
._ZNKSt10error_code23default_error_conditionEv:  #        0xe9a00  0      OPC=<label>         
  movl %edi, %edx                                #  1     0xe9a00  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                #  2     0xe9a02  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                #  3     0xe9a05  3      OPC=addq_r64_r64    
  movl %edx, %edx                                #  4     0xe9a08  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdx,1), %edi                    #  5     0xe9a0a  5      OPC=movl_r32_m32    
  movl %edx, %edx                                #  6     0xe9a0f  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %esi                       #  7     0xe9a11  4      OPC=movl_r32_m32    
  movl %edi, %edi                                #  8     0xe9a15  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                       #  9     0xe9a17  4      OPC=movl_r32_m32    
  nop                                            #  10    0xe9a1b  1      OPC=nop             
  nop                                            #  11    0xe9a1c  1      OPC=nop             
  nop                                            #  12    0xe9a1d  1      OPC=nop             
  nop                                            #  13    0xe9a1e  1      OPC=nop             
  nop                                            #  14    0xe9a1f  1      OPC=nop             
  movl %eax, %eax                                #  15    0xe9a20  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                   #  16    0xe9a22  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                 #  17    0xe9a27  2      OPC=xchgw_ax_r16    
  nop                                            #  18    0xe9a29  1      OPC=nop             
  nop                                            #  19    0xe9a2a  1      OPC=nop             
  nop                                            #  20    0xe9a2b  1      OPC=nop             
  nop                                            #  21    0xe9a2c  1      OPC=nop             
  nop                                            #  22    0xe9a2d  1      OPC=nop             
  nop                                            #  23    0xe9a2e  1      OPC=nop             
  nop                                            #  24    0xe9a2f  1      OPC=nop             
  nop                                            #  25    0xe9a30  1      OPC=nop             
  nop                                            #  26    0xe9a31  1      OPC=nop             
  nop                                            #  27    0xe9a32  1      OPC=nop             
  nop                                            #  28    0xe9a33  1      OPC=nop             
  nop                                            #  29    0xe9a34  1      OPC=nop             
  nop                                            #  30    0xe9a35  1      OPC=nop             
  nop                                            #  31    0xe9a36  1      OPC=nop             
  nop                                            #  32    0xe9a37  1      OPC=nop             
  andl $0xffffffe0, %eax                         #  33    0xe9a38  6      OPC=andl_r32_imm32  
  nop                                            #  34    0xe9a3e  1      OPC=nop             
  nop                                            #  35    0xe9a3f  1      OPC=nop             
  nop                                            #  36    0xe9a40  1      OPC=nop             
  addq %r15, %rax                                #  37    0xe9a41  3      OPC=addq_r64_r64    
  callq %rax                                     #  38    0xe9a44  2      OPC=callq_r64       
  addl $0x8, %esp                                #  39    0xe9a46  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                #  40    0xe9a49  3      OPC=addq_r64_r64    
  popq %r11                                      #  41    0xe9a4c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                        #  42    0xe9a4e  7      OPC=andl_r32_imm32  
  nop                                            #  43    0xe9a55  1      OPC=nop             
  nop                                            #  44    0xe9a56  1      OPC=nop             
  nop                                            #  45    0xe9a57  1      OPC=nop             
  nop                                            #  46    0xe9a58  1      OPC=nop             
  addq %r15, %r11                                #  47    0xe9a59  3      OPC=addq_r64_r64    
  jmpq %r11                                      #  48    0xe9a5c  3      OPC=jmpq_r64        
  nop                                            #  49    0xe9a5f  1      OPC=nop             
  nop                                            #  50    0xe9a60  1      OPC=nop             
  nop                                            #  51    0xe9a61  1      OPC=nop             
  nop                                            #  52    0xe9a62  1      OPC=nop             
  nop                                            #  53    0xe9a63  1      OPC=nop             
  nop                                            #  54    0xe9a64  1      OPC=nop             
  nop                                            #  55    0xe9a65  1      OPC=nop             
  nop                                            #  56    0xe9a66  1      OPC=nop             
  nop                                            #  57    0xe9a67  1      OPC=nop             
  nop                                            #  58    0xe9a68  1      OPC=nop             
  nop                                            #  59    0xe9a69  1      OPC=nop             
  nop                                            #  60    0xe9a6a  1      OPC=nop             
  nop                                            #  61    0xe9a6b  1      OPC=nop             
  nop                                            #  62    0xe9a6c  1      OPC=nop             
                                                                                              
.size _ZNKSt10error_code23default_error_conditionEv, .-_ZNKSt10error_code23default_error_conditionEv

