  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm, @function

#! file-offset 0xb8680
#! rip-offset  0x78680
#! capacity    96 bytes

# Text                                                                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm:  #        0x78680  0      OPC=<label>         
  movl %edi, %edi                                                                      #  1     0x78680  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                                                      #  2     0x78682  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                      #  3     0x78685  3      OPC=addq_r64_r64    
  movl %edx, %edx                                                                      #  4     0x78688  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                      #  5     0x7868a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                             #  6     0x7868c  4      OPC=movl_r32_m32    
  movsbl %cl, %ecx                                                                     #  7     0x78690  3      OPC=movsbl_r32_r8   
  movl %eax, %eax                                                                      #  8     0x78693  2      OPC=movl_r32_r32    
  movl 0x10(%r15,%rax,1), %eax                                                         #  9     0x78695  5      OPC=movl_r32_m32    
  nop                                                                                  #  10    0x7869a  1      OPC=nop             
  nop                                                                                  #  11    0x7869b  1      OPC=nop             
  nop                                                                                  #  12    0x7869c  1      OPC=nop             
  nop                                                                                  #  13    0x7869d  1      OPC=nop             
  nop                                                                                  #  14    0x7869e  1      OPC=nop             
  nop                                                                                  #  15    0x7869f  1      OPC=nop             
  nop                                                                                  #  16    0x786a0  1      OPC=nop             
  nop                                                                                  #  17    0x786a1  1      OPC=nop             
  nop                                                                                  #  18    0x786a2  1      OPC=nop             
  nop                                                                                  #  19    0x786a3  1      OPC=nop             
  nop                                                                                  #  20    0x786a4  1      OPC=nop             
  nop                                                                                  #  21    0x786a5  1      OPC=nop             
  nop                                                                                  #  22    0x786a6  1      OPC=nop             
  nop                                                                                  #  23    0x786a7  1      OPC=nop             
  nop                                                                                  #  24    0x786a8  1      OPC=nop             
  nop                                                                                  #  25    0x786a9  1      OPC=nop             
  nop                                                                                  #  26    0x786aa  1      OPC=nop             
  nop                                                                                  #  27    0x786ab  1      OPC=nop             
  nop                                                                                  #  28    0x786ac  1      OPC=nop             
  nop                                                                                  #  29    0x786ad  1      OPC=nop             
  nop                                                                                  #  30    0x786ae  1      OPC=nop             
  nop                                                                                  #  31    0x786af  1      OPC=nop             
  nop                                                                                  #  32    0x786b0  1      OPC=nop             
  nop                                                                                  #  33    0x786b1  1      OPC=nop             
  nop                                                                                  #  34    0x786b2  1      OPC=nop             
  nop                                                                                  #  35    0x786b3  1      OPC=nop             
  nop                                                                                  #  36    0x786b4  1      OPC=nop             
  nop                                                                                  #  37    0x786b5  1      OPC=nop             
  nop                                                                                  #  38    0x786b6  1      OPC=nop             
  nop                                                                                  #  39    0x786b7  1      OPC=nop             
  andl $0xffffffe0, %eax                                                               #  40    0x786b8  6      OPC=andl_r32_imm32  
  nop                                                                                  #  41    0x786be  1      OPC=nop             
  nop                                                                                  #  42    0x786bf  1      OPC=nop             
  nop                                                                                  #  43    0x786c0  1      OPC=nop             
  addq %r15, %rax                                                                      #  44    0x786c1  3      OPC=addq_r64_r64    
  callq %rax                                                                           #  45    0x786c4  2      OPC=callq_r64       
  addl $0x8, %esp                                                                      #  46    0x786c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                      #  47    0x786c9  3      OPC=addq_r64_r64    
  popq %r11                                                                            #  48    0x786cc  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                              #  49    0x786ce  7      OPC=andl_r32_imm32  
  nop                                                                                  #  50    0x786d5  1      OPC=nop             
  nop                                                                                  #  51    0x786d6  1      OPC=nop             
  nop                                                                                  #  52    0x786d7  1      OPC=nop             
  nop                                                                                  #  53    0x786d8  1      OPC=nop             
  addq %r15, %r11                                                                      #  54    0x786d9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                            #  55    0x786dc  3      OPC=jmpq_r64        
  nop                                                                                  #  56    0x786df  1      OPC=nop             
  nop                                                                                  #  57    0x786e0  1      OPC=nop             
  nop                                                                                  #  58    0x786e1  1      OPC=nop             
  nop                                                                                  #  59    0x786e2  1      OPC=nop             
  nop                                                                                  #  60    0x786e3  1      OPC=nop             
  nop                                                                                  #  61    0x786e4  1      OPC=nop             
  nop                                                                                  #  62    0x786e5  1      OPC=nop             
  nop                                                                                  #  63    0x786e6  1      OPC=nop             
  nop                                                                                  #  64    0x786e7  1      OPC=nop             
  nop                                                                                  #  65    0x786e8  1      OPC=nop             
  nop                                                                                  #  66    0x786e9  1      OPC=nop             
  nop                                                                                  #  67    0x786ea  1      OPC=nop             
  nop                                                                                  #  68    0x786eb  1      OPC=nop             
  nop                                                                                  #  69    0x786ec  1      OPC=nop             
                                                                                                                                    
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE3putES3_RSt8ios_basecm

