  .text
  .globl _ZNKSt5ctypeIcE10do_tolowerEc
  .type _ZNKSt5ctypeIcE10do_tolowerEc, @function

#! file-offset 0x124e60
#! rip-offset  0xe4e60
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_tolowerEc:  #        0xe4e60  0      OPC=<label>         
  movl %edi, %edi                #  1     0xe4e60  2      OPC=movl_r32_r32    
  movzbl %sil, %edx              #  2     0xe4e62  4      OPC=movzbl_r32_r8   
  movl %esi, %eax                #  3     0xe4e66  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xe4e68  2      OPC=movl_r32_r32    
  addl 0x18(%r15,%rdi,1), %edx   #  5     0xe4e6a  5      OPC=addl_r32_m32    
  movl %edx, %edx                #  6     0xe4e6f  2      OPC=movl_r32_r32    
  testb $0x1, (%r15,%rdx,1)      #  7     0xe4e71  5      OPC=testb_m8_imm8   
  je .L_e4e80                    #  8     0xe4e76  2      OPC=je_label        
  addl $0x20, %eax               #  9     0xe4e78  3      OPC=addl_r32_imm8   
  nop                            #  10    0xe4e7b  1      OPC=nop             
  nop                            #  11    0xe4e7c  1      OPC=nop             
  nop                            #  12    0xe4e7d  1      OPC=nop             
  nop                            #  13    0xe4e7e  1      OPC=nop             
  nop                            #  14    0xe4e7f  1      OPC=nop             
.L_e4e80:                        #        0xe4e80  0      OPC=<label>         
  popq %r11                      #  15    0xe4e80  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  16    0xe4e82  7      OPC=andl_r32_imm32  
  nop                            #  17    0xe4e89  1      OPC=nop             
  nop                            #  18    0xe4e8a  1      OPC=nop             
  nop                            #  19    0xe4e8b  1      OPC=nop             
  nop                            #  20    0xe4e8c  1      OPC=nop             
  addq %r15, %r11                #  21    0xe4e8d  3      OPC=addq_r64_r64    
  jmpq %r11                      #  22    0xe4e90  3      OPC=jmpq_r64        
  nop                            #  23    0xe4e93  1      OPC=nop             
  nop                            #  24    0xe4e94  1      OPC=nop             
  nop                            #  25    0xe4e95  1      OPC=nop             
  nop                            #  26    0xe4e96  1      OPC=nop             
  nop                            #  27    0xe4e97  1      OPC=nop             
  nop                            #  28    0xe4e98  1      OPC=nop             
  nop                            #  29    0xe4e99  1      OPC=nop             
  nop                            #  30    0xe4e9a  1      OPC=nop             
  nop                            #  31    0xe4e9b  1      OPC=nop             
  nop                            #  32    0xe4e9c  1      OPC=nop             
  nop                            #  33    0xe4e9d  1      OPC=nop             
  nop                            #  34    0xe4e9e  1      OPC=nop             
  nop                            #  35    0xe4e9f  1      OPC=nop             
  nop                            #  36    0xe4ea0  1      OPC=nop             
  nop                            #  37    0xe4ea1  1      OPC=nop             
  nop                            #  38    0xe4ea2  1      OPC=nop             
  nop                            #  39    0xe4ea3  1      OPC=nop             
  nop                            #  40    0xe4ea4  1      OPC=nop             
  nop                            #  41    0xe4ea5  1      OPC=nop             
  nop                            #  42    0xe4ea6  1      OPC=nop             
                                                                              
.size _ZNKSt5ctypeIcE10do_tolowerEc, .-_ZNKSt5ctypeIcE10do_tolowerEc

