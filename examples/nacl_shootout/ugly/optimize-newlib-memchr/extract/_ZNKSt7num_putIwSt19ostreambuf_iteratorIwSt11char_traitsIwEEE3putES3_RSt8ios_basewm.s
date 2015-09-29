  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm, @function

#! file-offset 0xf16e0
#! rip-offset  0xb16e0
#! capacity    64 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm:  #        0xb16e0  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb16e0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb16e2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb16e5  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb16e8  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb16ea  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb16ec  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                                      #  7     0xb16f0  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                         #  8     0xb16f2  5      OPC=movl_r32_m32    
  nop                                                                                  #  9     0xb16f7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  10    0xb16f8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  11    0xb16fe  1      OPC=nop             
  nop                                                                                  #  12    0xb16ff  1      OPC=nop             
  nop                                                                                  #  13    0xb1700  1      OPC=nop             
  addq %r15, %rax                                                                      #  14    0xb1701  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  15    0xb1704  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  16    0xb1706  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  17    0xb1709  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  18    0xb170c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  19    0xb170e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  20    0xb1715  1      OPC=nop             
  nop                                                                                  #  21    0xb1716  1      OPC=nop             
  nop                                                                                  #  22    0xb1717  1      OPC=nop             
  nop                                                                                  #  23    0xb1718  1      OPC=nop             
  addq %r15, %r11                                                                      #  24    0xb1719  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  25    0xb171c  3      OPC=jmpq_r64        
  nop                                                                                  #  26    0xb171f  1      OPC=nop             
  nop                                                                                  #  27    0xb1720  1      OPC=nop             
  nop                                                                                  #  28    0xb1721  1      OPC=nop             
  nop                                                                                  #  29    0xb1722  1      OPC=nop             
  nop                                                                                  #  30    0xb1723  1      OPC=nop             
  nop                                                                                  #  31    0xb1724  1      OPC=nop             
  nop                                                                                  #  32    0xb1725  1      OPC=nop             
  nop                                                                                  #  33    0xb1726  1      OPC=nop             
  nop                                                                                  #  34    0xb1727  1      OPC=nop             
  nop                                                                                  #  35    0xb1728  1      OPC=nop             
  nop                                                                                  #  36    0xb1729  1      OPC=nop             
  nop                                                                                  #  37    0xb172a  1      OPC=nop             
  nop                                                                                  #  38    0xb172b  1      OPC=nop             
  nop                                                                                  #  39    0xb172c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewm

