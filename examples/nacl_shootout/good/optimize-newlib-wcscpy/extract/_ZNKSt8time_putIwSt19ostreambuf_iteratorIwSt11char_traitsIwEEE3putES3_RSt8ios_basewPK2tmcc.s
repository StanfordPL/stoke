  .text
  .globl _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc
  .type _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc, @function

#! file-offset 0xf1980
#! rip-offset  0xb1980
#! capacity    96 bytes

# Text                                                                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc:  #        0xb1980  0      OPC=<label>         
  subl $0x18, %esp                                                                            #  1     0xb1980  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                             #  2     0xb1983  3      OPC=addq_r64_r64    
  movl %edi, %edi                                                                             #  3     0xb1986  2      OPC=movl_r32_r32    
  movl %edx, %edx                                                                             #  4     0xb1988  2      OPC=movl_r32_r32    
  movsbl 0x20(%rsp), %r10d                                                                    #  5     0xb198a  6      OPC=movsbl_r32_m8   
  movl %edi, %edi                                                                             #  6     0xb1990  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                                    #  7     0xb1992  4      OPC=movl_r32_m32    
  movsbl %r9b, %r9d                                                                           #  8     0xb1996  4      OPC=movsbl_r32_r8   
  movl %r10d, (%rsp)                                                                          #  9     0xb199a  4      OPC=movl_m32_r32    
  xchgw %ax, %ax                                                                              #  10    0xb199e  2      OPC=xchgw_ax_r16    
  movl %eax, %eax                                                                             #  11    0xb19a0  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                                 #  12    0xb19a2  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                                                              #  13    0xb19a7  2      OPC=xchgw_ax_r16    
  nop                                                                                         #  14    0xb19a9  1      OPC=nop             
  nop                                                                                         #  15    0xb19aa  1      OPC=nop             
  nop                                                                                         #  16    0xb19ab  1      OPC=nop             
  nop                                                                                         #  17    0xb19ac  1      OPC=nop             
  nop                                                                                         #  18    0xb19ad  1      OPC=nop             
  nop                                                                                         #  19    0xb19ae  1      OPC=nop             
  nop                                                                                         #  20    0xb19af  1      OPC=nop             
  nop                                                                                         #  21    0xb19b0  1      OPC=nop             
  nop                                                                                         #  22    0xb19b1  1      OPC=nop             
  nop                                                                                         #  23    0xb19b2  1      OPC=nop             
  nop                                                                                         #  24    0xb19b3  1      OPC=nop             
  nop                                                                                         #  25    0xb19b4  1      OPC=nop             
  nop                                                                                         #  26    0xb19b5  1      OPC=nop             
  nop                                                                                         #  27    0xb19b6  1      OPC=nop             
  nop                                                                                         #  28    0xb19b7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                                      #  29    0xb19b8  6      OPC=andl_r32_imm32  
  nop                                                                                         #  30    0xb19be  1      OPC=nop             
  nop                                                                                         #  31    0xb19bf  1      OPC=nop             
  nop                                                                                         #  32    0xb19c0  1      OPC=nop             
  addq %r15, %rax                                                                             #  33    0xb19c1  3      OPC=addq_r64_r64    
  callq %rax                                                                                  #  34    0xb19c4  2      OPC=callq_r64       
  addl $0x18, %esp                                                                            #  35    0xb19c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                             #  36    0xb19c9  3      OPC=addq_r64_r64    
  popq %r11                                                                                   #  37    0xb19cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                     #  38    0xb19ce  7      OPC=andl_r32_imm32  
  nop                                                                                         #  39    0xb19d5  1      OPC=nop             
  nop                                                                                         #  40    0xb19d6  1      OPC=nop             
  nop                                                                                         #  41    0xb19d7  1      OPC=nop             
  nop                                                                                         #  42    0xb19d8  1      OPC=nop             
  addq %r15, %r11                                                                             #  43    0xb19d9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                   #  44    0xb19dc  3      OPC=jmpq_r64        
  nop                                                                                         #  45    0xb19df  1      OPC=nop             
  nop                                                                                         #  46    0xb19e0  1      OPC=nop             
  nop                                                                                         #  47    0xb19e1  1      OPC=nop             
  nop                                                                                         #  48    0xb19e2  1      OPC=nop             
  nop                                                                                         #  49    0xb19e3  1      OPC=nop             
  nop                                                                                         #  50    0xb19e4  1      OPC=nop             
  nop                                                                                         #  51    0xb19e5  1      OPC=nop             
  nop                                                                                         #  52    0xb19e6  1      OPC=nop             
  nop                                                                                         #  53    0xb19e7  1      OPC=nop             
  nop                                                                                         #  54    0xb19e8  1      OPC=nop             
  nop                                                                                         #  55    0xb19e9  1      OPC=nop             
  nop                                                                                         #  56    0xb19ea  1      OPC=nop             
  nop                                                                                         #  57    0xb19eb  1      OPC=nop             
  nop                                                                                         #  58    0xb19ec  1      OPC=nop             
                                                                                                                                           
.size _ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc, .-_ZNKSt8time_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewPK2tmcc

