  .text
  .globl _ZNKSt5ctypeIcE10do_toupperEc
  .type _ZNKSt5ctypeIcE10do_toupperEc, @function

#! file-offset 0x124da0
#! rip-offset  0xe4da0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_toupperEc:  #        0xe4da0  0      OPC=<label>         
  movl %edi, %edi                #  1     0xe4da0  2      OPC=movl_r32_r32    
  movzbl %sil, %edx              #  2     0xe4da2  4      OPC=movzbl_r32_r8   
  movl %esi, %eax                #  3     0xe4da6  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xe4da8  2      OPC=movl_r32_r32    
  addl 0x18(%r15,%rdi,1), %edx   #  5     0xe4daa  5      OPC=addl_r32_m32    
  movl %edx, %edx                #  6     0xe4daf  2      OPC=movl_r32_r32    
  testb $0x2, (%r15,%rdx,1)      #  7     0xe4db1  5      OPC=testb_m8_imm8   
  je .L_e4dc0                    #  8     0xe4db6  2      OPC=je_label        
  subl $0x20, %eax               #  9     0xe4db8  3      OPC=subl_r32_imm8   
  nop                            #  10    0xe4dbb  1      OPC=nop             
  nop                            #  11    0xe4dbc  1      OPC=nop             
  nop                            #  12    0xe4dbd  1      OPC=nop             
  nop                            #  13    0xe4dbe  1      OPC=nop             
  nop                            #  14    0xe4dbf  1      OPC=nop             
.L_e4dc0:                        #        0xe4dc0  0      OPC=<label>         
  popq %r11                      #  15    0xe4dc0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  16    0xe4dc2  7      OPC=andl_r32_imm32  
  nop                            #  17    0xe4dc9  1      OPC=nop             
  nop                            #  18    0xe4dca  1      OPC=nop             
  nop                            #  19    0xe4dcb  1      OPC=nop             
  nop                            #  20    0xe4dcc  1      OPC=nop             
  addq %r15, %r11                #  21    0xe4dcd  3      OPC=addq_r64_r64    
  jmpq %r11                      #  22    0xe4dd0  3      OPC=jmpq_r64        
  nop                            #  23    0xe4dd3  1      OPC=nop             
  nop                            #  24    0xe4dd4  1      OPC=nop             
  nop                            #  25    0xe4dd5  1      OPC=nop             
  nop                            #  26    0xe4dd6  1      OPC=nop             
  nop                            #  27    0xe4dd7  1      OPC=nop             
  nop                            #  28    0xe4dd8  1      OPC=nop             
  nop                            #  29    0xe4dd9  1      OPC=nop             
  nop                            #  30    0xe4dda  1      OPC=nop             
  nop                            #  31    0xe4ddb  1      OPC=nop             
  nop                            #  32    0xe4ddc  1      OPC=nop             
  nop                            #  33    0xe4ddd  1      OPC=nop             
  nop                            #  34    0xe4dde  1      OPC=nop             
  nop                            #  35    0xe4ddf  1      OPC=nop             
  nop                            #  36    0xe4de0  1      OPC=nop             
  nop                            #  37    0xe4de1  1      OPC=nop             
  nop                            #  38    0xe4de2  1      OPC=nop             
  nop                            #  39    0xe4de3  1      OPC=nop             
  nop                            #  40    0xe4de4  1      OPC=nop             
  nop                            #  41    0xe4de5  1      OPC=nop             
  nop                            #  42    0xe4de6  1      OPC=nop             
                                                                              
.size _ZNKSt5ctypeIcE10do_toupperEc, .-_ZNKSt5ctypeIcE10do_toupperEc

