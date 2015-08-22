  .text
  .globl _ZNKSt5ctypeIcE10do_toupperEc
  .type _ZNKSt5ctypeIcE10do_toupperEc, @function

#! file-offset 0x1254c0
#! rip-offset  0xe54c0
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_toupperEc:  #        0xe54c0  0      OPC=<label>         
  movl %edi, %edi                #  1     0xe54c0  2      OPC=movl_r32_r32    
  movzbl %sil, %edx              #  2     0xe54c2  4      OPC=movzbl_r32_r8   
  movl %esi, %eax                #  3     0xe54c6  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xe54c8  2      OPC=movl_r32_r32    
  addl 0x18(%r15,%rdi,1), %edx   #  5     0xe54ca  5      OPC=addl_r32_m32    
  movl %edx, %edx                #  6     0xe54cf  2      OPC=movl_r32_r32    
  testb $0x2, (%r15,%rdx,1)      #  7     0xe54d1  5      OPC=testb_m8_imm8   
  je .L_e54e0                    #  8     0xe54d6  2      OPC=je_label        
  subl $0x20, %eax               #  9     0xe54d8  3      OPC=subl_r32_imm8   
  nop                            #  10    0xe54db  1      OPC=nop             
  nop                            #  11    0xe54dc  1      OPC=nop             
  nop                            #  12    0xe54dd  1      OPC=nop             
  nop                            #  13    0xe54de  1      OPC=nop             
  nop                            #  14    0xe54df  1      OPC=nop             
.L_e54e0:                        #        0xe54e0  0      OPC=<label>         
  popq %r11                      #  15    0xe54e0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  16    0xe54e2  7      OPC=andl_r32_imm32  
  nop                            #  17    0xe54e9  1      OPC=nop             
  nop                            #  18    0xe54ea  1      OPC=nop             
  nop                            #  19    0xe54eb  1      OPC=nop             
  nop                            #  20    0xe54ec  1      OPC=nop             
  addq %r15, %r11                #  21    0xe54ed  3      OPC=addq_r64_r64    
  jmpq %r11                      #  22    0xe54f0  3      OPC=jmpq_r64        
  nop                            #  23    0xe54f3  1      OPC=nop             
  nop                            #  24    0xe54f4  1      OPC=nop             
  nop                            #  25    0xe54f5  1      OPC=nop             
  nop                            #  26    0xe54f6  1      OPC=nop             
  nop                            #  27    0xe54f7  1      OPC=nop             
  nop                            #  28    0xe54f8  1      OPC=nop             
  nop                            #  29    0xe54f9  1      OPC=nop             
  nop                            #  30    0xe54fa  1      OPC=nop             
  nop                            #  31    0xe54fb  1      OPC=nop             
  nop                            #  32    0xe54fc  1      OPC=nop             
  nop                            #  33    0xe54fd  1      OPC=nop             
  nop                            #  34    0xe54fe  1      OPC=nop             
  nop                            #  35    0xe54ff  1      OPC=nop             
  nop                            #  36    0xe5500  1      OPC=nop             
  nop                            #  37    0xe5501  1      OPC=nop             
  nop                            #  38    0xe5502  1      OPC=nop             
  nop                            #  39    0xe5503  1      OPC=nop             
  nop                            #  40    0xe5504  1      OPC=nop             
  nop                            #  41    0xe5505  1      OPC=nop             
  nop                            #  42    0xe5506  1      OPC=nop             
                                                                              
.size _ZNKSt5ctypeIcE10do_toupperEc, .-_ZNKSt5ctypeIcE10do_toupperEc

