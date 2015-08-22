  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl, @function

#! file-offset 0xf16a0
#! rip-offset  0xb16a0
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl:  #        0xb16a0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb16a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb16a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb16a5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb16a8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb16aa  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb16ac  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb16b0  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                          #  8     0xb16b2  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb16b7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb16b8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb16be  1      OPC=nop             
  nop                                                                                  #  12    0xb16bf  1      OPC=nop             
  nop                                                                                  #  13    0xb16c0  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb16c1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb16c4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb16c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb16c9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb16cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb16ce  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb16d5  1      OPC=nop             
  nop                                                                                  #  21    0xb16d6  1      OPC=nop             
  nop                                                                                  #  22    0xb16d7  1      OPC=nop             
  nop                                                                                  #  23    0xb16d8  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb16d9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb16dc  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb16df  1      OPC=nop             
  nop                                                                                  #  27    0xb16e0  1      OPC=nop             
  nop                                                                                  #  28    0xb16e1  1      OPC=nop             
  nop                                                                                  #  29    0xb16e2  1      OPC=nop             
  nop                                                                                  #  30    0xb16e3  1      OPC=nop             
  nop                                                                                  #  31    0xb16e4  1      OPC=nop             
  nop                                                                                  #  32    0xb16e5  1      OPC=nop             
  nop                                                                                  #  33    0xb16e6  1      OPC=nop             
  nop                                                                                  #  34    0xb16e7  1      OPC=nop             
  nop                                                                                  #  35    0xb16e8  1      OPC=nop             
  nop                                                                                  #  36    0xb16e9  1      OPC=nop             
  nop                                                                                  #  37    0xb16ea  1      OPC=nop             
  nop                                                                                  #  38    0xb16eb  1      OPC=nop             
  nop                                                                                  #  39    0xb16ec  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewl

