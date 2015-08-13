  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm, @function

#! file-offset 0xb7c60
#! rip-offset  0x77c60
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm:  #        0x77c60  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77c60  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77c62  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77c65  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77c68  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77c6a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77c6c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77c70  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x77c73  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                         #  9     0x77c75  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x77c7a  1      OPC=nop             
  nop                                                                                  #  11    0x77c7b  1      OPC=nop             
  nop                                                                                  #  12    0x77c7c  1      OPC=nop             
  nop                                                                                  #  13    0x77c7d  1      OPC=nop             
  nop                                                                                  #  14    0x77c7e  1      OPC=nop             
  nop                                                                                  #  15    0x77c7f  1      OPC=nop             
  nop                                                                                  #  16    0x77c80  1      OPC=nop             
  nop                                                                                  #  17    0x77c81  1      OPC=nop             
  nop                                                                                  #  18    0x77c82  1      OPC=nop             
  nop                                                                                  #  19    0x77c83  1      OPC=nop             
  nop                                                                                  #  20    0x77c84  1      OPC=nop             
  nop                                                                                  #  21    0x77c85  1      OPC=nop             
  nop                                                                                  #  22    0x77c86  1      OPC=nop             
  nop                                                                                  #  23    0x77c87  1      OPC=nop             
  nop                                                                                  #  24    0x77c88  1      OPC=nop             
  nop                                                                                  #  25    0x77c89  1      OPC=nop             
  nop                                                                                  #  26    0x77c8a  1      OPC=nop             
  nop                                                                                  #  27    0x77c8b  1      OPC=nop             
  nop                                                                                  #  28    0x77c8c  1      OPC=nop             
  nop                                                                                  #  29    0x77c8d  1      OPC=nop             
  nop                                                                                  #  30    0x77c8e  1      OPC=nop             
  nop                                                                                  #  31    0x77c8f  1      OPC=nop             
  nop                                                                                  #  32    0x77c90  1      OPC=nop             
  nop                                                                                  #  33    0x77c91  1      OPC=nop             
  nop                                                                                  #  34    0x77c92  1      OPC=nop             
  nop                                                                                  #  35    0x77c93  1      OPC=nop             
  nop                                                                                  #  36    0x77c94  1      OPC=nop             
  nop                                                                                  #  37    0x77c95  1      OPC=nop             
  nop                                                                                  #  38    0x77c96  1      OPC=nop             
  nop                                                                                  #  39    0x77c97  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x77c98  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x77c9e  1      OPC=nop             
  nop                                                                                  #  42    0x77c9f  1      OPC=nop             
  nop                                                                                  #  43    0x77ca0  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x77ca1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x77ca4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x77ca6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x77ca9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x77cac  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x77cae  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x77cb5  1      OPC=nop             
  nop                                                                                  #  51    0x77cb6  1      OPC=nop             
  nop                                                                                  #  52    0x77cb7  1      OPC=nop             
  nop                                                                                  #  53    0x77cb8  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x77cb9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x77cbc  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x77cbf  1      OPC=nop             
  nop                                                                                  #  57    0x77cc0  1      OPC=nop             
  nop                                                                                  #  58    0x77cc1  1      OPC=nop             
  nop                                                                                  #  59    0x77cc2  1      OPC=nop             
  nop                                                                                  #  60    0x77cc3  1      OPC=nop             
  nop                                                                                  #  61    0x77cc4  1      OPC=nop             
  nop                                                                                  #  62    0x77cc5  1      OPC=nop             
  nop                                                                                  #  63    0x77cc6  1      OPC=nop             
  nop                                                                                  #  64    0x77cc7  1      OPC=nop             
  nop                                                                                  #  65    0x77cc8  1      OPC=nop             
  nop                                                                                  #  66    0x77cc9  1      OPC=nop             
  nop                                                                                  #  67    0x77cca  1      OPC=nop             
  nop                                                                                  #  68    0x77ccb  1      OPC=nop             
  nop                                                                                  #  69    0x77ccc  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm

