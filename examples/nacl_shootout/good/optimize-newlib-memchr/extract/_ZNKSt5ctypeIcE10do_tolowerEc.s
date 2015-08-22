  .text
  .globl _ZNKSt5ctypeIcE10do_tolowerEc
  .type _ZNKSt5ctypeIcE10do_tolowerEc, @function

#! file-offset 0x125580
#! rip-offset  0xe5580
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNKSt5ctypeIcE10do_tolowerEc:  #        0xe5580  0      OPC=<label>         
  movl %edi, %edi                #  1     0xe5580  2      OPC=movl_r32_r32    
  movzbl %sil, %edx              #  2     0xe5582  4      OPC=movzbl_r32_r8   
  movl %esi, %eax                #  3     0xe5586  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  4     0xe5588  2      OPC=movl_r32_r32    
  addl 0x18(%r15,%rdi,1), %edx   #  5     0xe558a  5      OPC=addl_r32_m32    
  movl %edx, %edx                #  6     0xe558f  2      OPC=movl_r32_r32    
  testb $0x1, (%r15,%rdx,1)      #  7     0xe5591  5      OPC=testb_m8_imm8   
  je .L_e55a0                    #  8     0xe5596  2      OPC=je_label        
  addl $0x20, %eax               #  9     0xe5598  3      OPC=addl_r32_imm8   
  nop                            #  10    0xe559b  1      OPC=nop             
  nop                            #  11    0xe559c  1      OPC=nop             
  nop                            #  12    0xe559d  1      OPC=nop             
  nop                            #  13    0xe559e  1      OPC=nop             
  nop                            #  14    0xe559f  1      OPC=nop             
.L_e55a0:                        #        0xe55a0  0      OPC=<label>         
  popq %r11                      #  15    0xe55a0  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  16    0xe55a2  7      OPC=andl_r32_imm32  
  nop                            #  17    0xe55a9  1      OPC=nop             
  nop                            #  18    0xe55aa  1      OPC=nop             
  nop                            #  19    0xe55ab  1      OPC=nop             
  nop                            #  20    0xe55ac  1      OPC=nop             
  addq %r15, %r11                #  21    0xe55ad  3      OPC=addq_r64_r64    
  jmpq %r11                      #  22    0xe55b0  3      OPC=jmpq_r64        
  nop                            #  23    0xe55b3  1      OPC=nop             
  nop                            #  24    0xe55b4  1      OPC=nop             
  nop                            #  25    0xe55b5  1      OPC=nop             
  nop                            #  26    0xe55b6  1      OPC=nop             
  nop                            #  27    0xe55b7  1      OPC=nop             
  nop                            #  28    0xe55b8  1      OPC=nop             
  nop                            #  29    0xe55b9  1      OPC=nop             
  nop                            #  30    0xe55ba  1      OPC=nop             
  nop                            #  31    0xe55bb  1      OPC=nop             
  nop                            #  32    0xe55bc  1      OPC=nop             
  nop                            #  33    0xe55bd  1      OPC=nop             
  nop                            #  34    0xe55be  1      OPC=nop             
  nop                            #  35    0xe55bf  1      OPC=nop             
  nop                            #  36    0xe55c0  1      OPC=nop             
  nop                            #  37    0xe55c1  1      OPC=nop             
  nop                            #  38    0xe55c2  1      OPC=nop             
  nop                            #  39    0xe55c3  1      OPC=nop             
  nop                            #  40    0xe55c4  1      OPC=nop             
  nop                            #  41    0xe55c5  1      OPC=nop             
  nop                            #  42    0xe55c6  1      OPC=nop             
                                                                              
.size _ZNKSt5ctypeIcE10do_tolowerEc, .-_ZNKSt5ctypeIcE10do_tolowerEc

