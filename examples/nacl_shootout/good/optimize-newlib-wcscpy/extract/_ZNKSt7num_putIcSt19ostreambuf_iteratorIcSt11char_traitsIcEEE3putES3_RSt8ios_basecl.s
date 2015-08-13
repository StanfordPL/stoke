  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl, @function

#! file-offset 0xb7c00
#! rip-offset  0x77c00
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl:  #        0x77c00  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x77c00  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x77c02  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x77c05  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x77c08  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x77c0a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x77c0c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x77c10  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x77c13  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                                                          #  9     0x77c15  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x77c1a  1      OPC=nop             
  nop                                                                                  #  11    0x77c1b  1      OPC=nop             
  nop                                                                                  #  12    0x77c1c  1      OPC=nop             
  nop                                                                                  #  13    0x77c1d  1      OPC=nop             
  nop                                                                                  #  14    0x77c1e  1      OPC=nop             
  nop                                                                                  #  15    0x77c1f  1      OPC=nop             
  nop                                                                                  #  16    0x77c20  1      OPC=nop             
  nop                                                                                  #  17    0x77c21  1      OPC=nop             
  nop                                                                                  #  18    0x77c22  1      OPC=nop             
  nop                                                                                  #  19    0x77c23  1      OPC=nop             
  nop                                                                                  #  20    0x77c24  1      OPC=nop             
  nop                                                                                  #  21    0x77c25  1      OPC=nop             
  nop                                                                                  #  22    0x77c26  1      OPC=nop             
  nop                                                                                  #  23    0x77c27  1      OPC=nop             
  nop                                                                                  #  24    0x77c28  1      OPC=nop             
  nop                                                                                  #  25    0x77c29  1      OPC=nop             
  nop                                                                                  #  26    0x77c2a  1      OPC=nop             
  nop                                                                                  #  27    0x77c2b  1      OPC=nop             
  nop                                                                                  #  28    0x77c2c  1      OPC=nop             
  nop                                                                                  #  29    0x77c2d  1      OPC=nop             
  nop                                                                                  #  30    0x77c2e  1      OPC=nop             
  nop                                                                                  #  31    0x77c2f  1      OPC=nop             
  nop                                                                                  #  32    0x77c30  1      OPC=nop             
  nop                                                                                  #  33    0x77c31  1      OPC=nop             
  nop                                                                                  #  34    0x77c32  1      OPC=nop             
  nop                                                                                  #  35    0x77c33  1      OPC=nop             
  nop                                                                                  #  36    0x77c34  1      OPC=nop             
  nop                                                                                  #  37    0x77c35  1      OPC=nop             
  nop                                                                                  #  38    0x77c36  1      OPC=nop             
  nop                                                                                  #  39    0x77c37  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x77c38  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x77c3e  1      OPC=nop             
  nop                                                                                  #  42    0x77c3f  1      OPC=nop             
  nop                                                                                  #  43    0x77c40  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x77c41  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x77c44  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x77c46  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x77c49  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x77c4c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x77c4e  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x77c55  1      OPC=nop             
  nop                                                                                  #  51    0x77c56  1      OPC=nop             
  nop                                                                                  #  52    0x77c57  1      OPC=nop             
  nop                                                                                  #  53    0x77c58  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x77c59  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x77c5c  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x77c5f  1      OPC=nop             
  nop                                                                                  #  57    0x77c60  1      OPC=nop             
  nop                                                                                  #  58    0x77c61  1      OPC=nop             
  nop                                                                                  #  59    0x77c62  1      OPC=nop             
  nop                                                                                  #  60    0x77c63  1      OPC=nop             
  nop                                                                                  #  61    0x77c64  1      OPC=nop             
  nop                                                                                  #  62    0x77c65  1      OPC=nop             
  nop                                                                                  #  63    0x77c66  1      OPC=nop             
  nop                                                                                  #  64    0x77c67  1      OPC=nop             
  nop                                                                                  #  65    0x77c68  1      OPC=nop             
  nop                                                                                  #  66    0x77c69  1      OPC=nop             
  nop                                                                                  #  67    0x77c6a  1      OPC=nop             
  nop                                                                                  #  68    0x77c6b  1      OPC=nop             
  nop                                                                                  #  69    0x77c6c  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecl

