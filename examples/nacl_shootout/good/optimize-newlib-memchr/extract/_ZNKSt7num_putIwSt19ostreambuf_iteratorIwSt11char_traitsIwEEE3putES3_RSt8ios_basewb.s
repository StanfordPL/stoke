  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewb
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewb, @function

#! file-offset 0xf1640
#! rip-offset  0xb1640
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewb:  #        0xb1640  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0xb1640  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0xb1642  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0xb1645  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0xb1648  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0xb164a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0xb164c  4      OPC=movl_r32_m32    
  movzbl %r8b, %r8d                                                                    #  7     0xb1650  4      OPC=movzbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0xb1654  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                          #  9     0xb1656  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0xb165b  1      OPC=nop             
  nop                                                                                  #  11    0xb165c  1      OPC=nop             
  nop                                                                                  #  12    0xb165d  1      OPC=nop             
  nop                                                                                  #  13    0xb165e  1      OPC=nop             
  nop                                                                                  #  14    0xb165f  1      OPC=nop             
  nop                                                                                  #  15    0xb1660  1      OPC=nop             
  nop                                                                                  #  16    0xb1661  1      OPC=nop             
  nop                                                                                  #  17    0xb1662  1      OPC=nop             
  nop                                                                                  #  18    0xb1663  1      OPC=nop             
  nop                                                                                  #  19    0xb1664  1      OPC=nop             
  nop                                                                                  #  20    0xb1665  1      OPC=nop             
  nop                                                                                  #  21    0xb1666  1      OPC=nop             
  nop                                                                                  #  22    0xb1667  1      OPC=nop             
  nop                                                                                  #  23    0xb1668  1      OPC=nop             
  nop                                                                                  #  24    0xb1669  1      OPC=nop             
  nop                                                                                  #  25    0xb166a  1      OPC=nop             
  nop                                                                                  #  26    0xb166b  1      OPC=nop             
  nop                                                                                  #  27    0xb166c  1      OPC=nop             
  nop                                                                                  #  28    0xb166d  1      OPC=nop             
  nop                                                                                  #  29    0xb166e  1      OPC=nop             
  nop                                                                                  #  30    0xb166f  1      OPC=nop             
  nop                                                                                  #  31    0xb1670  1      OPC=nop             
  nop                                                                                  #  32    0xb1671  1      OPC=nop             
  nop                                                                                  #  33    0xb1672  1      OPC=nop             
  nop                                                                                  #  34    0xb1673  1      OPC=nop             
  nop                                                                                  #  35    0xb1674  1      OPC=nop             
  nop                                                                                  #  36    0xb1675  1      OPC=nop             
  nop                                                                                  #  37    0xb1676  1      OPC=nop             
  nop                                                                                  #  38    0xb1677  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  39    0xb1678  6      OPC=andl_r32_imm32  
  nop                                                                                  #  40    0xb167e  1      OPC=nop             
  nop                                                                                  #  41    0xb167f  1      OPC=nop             
  nop                                                                                  #  42    0xb1680  1      OPC=nop             
  addq %r15, %rax                                                                      #  43    0xb1681  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  44    0xb1684  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  45    0xb1686  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  46    0xb1689  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  47    0xb168c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  48    0xb168e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  49    0xb1695  1      OPC=nop             
  nop                                                                                  #  50    0xb1696  1      OPC=nop             
  nop                                                                                  #  51    0xb1697  1      OPC=nop             
  nop                                                                                  #  52    0xb1698  1      OPC=nop             
  addq %r15, %r11                                                                      #  53    0xb1699  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  54    0xb169c  3      OPC=jmpq_r64        
  nop                                                                                  #  55    0xb169f  1      OPC=nop             
  nop                                                                                  #  56    0xb16a0  1      OPC=nop             
  nop                                                                                  #  57    0xb16a1  1      OPC=nop             
  nop                                                                                  #  58    0xb16a2  1      OPC=nop             
  nop                                                                                  #  59    0xb16a3  1      OPC=nop             
  nop                                                                                  #  60    0xb16a4  1      OPC=nop             
  nop                                                                                  #  61    0xb16a5  1      OPC=nop             
  nop                                                                                  #  62    0xb16a6  1      OPC=nop             
  nop                                                                                  #  63    0xb16a7  1      OPC=nop             
  nop                                                                                  #  64    0xb16a8  1      OPC=nop             
  nop                                                                                  #  65    0xb16a9  1      OPC=nop             
  nop                                                                                  #  66    0xb16aa  1      OPC=nop             
  nop                                                                                  #  67    0xb16ab  1      OPC=nop             
  nop                                                                                  #  68    0xb16ac  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewb, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE3putES3_RSt8ios_basewb

