  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj, @function

#! file-offset 0x1169c0
#! rip-offset  0xd69c0
#! capacity    128 bytes

# Text                                               #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj:         #        0xd69c0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                             #  1     0xd69c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                   #  2     0xd69c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                             #  3     0xd69c8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                              #  4     0xd69cd  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                    #  5     0xd69d2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                   #  6     0xd69d4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                    #  7     0xd69d7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                   #  8     0xd69da  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                   #  9     0xd69dd  3      OPC=movl_r32_r32   
  nop                                                #  10    0xd69e0  1      OPC=nop            
  nop                                                #  11    0xd69e1  1      OPC=nop            
  nop                                                #  12    0xd69e2  1      OPC=nop            
  nop                                                #  13    0xd69e3  1      OPC=nop            
  nop                                                #  14    0xd69e4  1      OPC=nop            
  nop                                                #  15    0xd69e5  1      OPC=nop            
  nop                                                #  16    0xd69e6  1      OPC=nop            
  nop                                                #  17    0xd69e7  1      OPC=nop            
  nop                                                #  18    0xd69e8  1      OPC=nop            
  nop                                                #  19    0xd69e9  1      OPC=nop            
  nop                                                #  20    0xd69ea  1      OPC=nop            
  nop                                                #  21    0xd69eb  1      OPC=nop            
  nop                                                #  22    0xd69ec  1      OPC=nop            
  nop                                                #  23    0xd69ed  1      OPC=nop            
  nop                                                #  24    0xd69ee  1      OPC=nop            
  nop                                                #  25    0xd69ef  1      OPC=nop            
  nop                                                #  26    0xd69f0  1      OPC=nop            
  nop                                                #  27    0xd69f1  1      OPC=nop            
  nop                                                #  28    0xd69f2  1      OPC=nop            
  nop                                                #  29    0xd69f3  1      OPC=nop            
  nop                                                #  30    0xd69f4  1      OPC=nop            
  nop                                                #  31    0xd69f5  1      OPC=nop            
  nop                                                #  32    0xd69f6  1      OPC=nop            
  nop                                                #  33    0xd69f7  1      OPC=nop            
  nop                                                #  34    0xd69f8  1      OPC=nop            
  nop                                                #  35    0xd69f9  1      OPC=nop            
  nop                                                #  36    0xd69fa  1      OPC=nop            
  callq .wcslen                                      #  37    0xd69fb  5      OPC=callq_label    
  movl %r13d, %edx                                   #  38    0xd6a00  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                   #  39    0xd6a03  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                    #  40    0xd6a06  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                               #  41    0xd6a08  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                  #  42    0xd6a0d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                    #  43    0xd6a11  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                              #  44    0xd6a13  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                   #  45    0xd6a18  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                    #  46    0xd6a1b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                     #  47    0xd6a1e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwjj  #  48    0xd6a20  5      OPC=jmpq_label_1   
  nop                                                #  49    0xd6a25  1      OPC=nop            
  nop                                                #  50    0xd6a26  1      OPC=nop            
  nop                                                #  51    0xd6a27  1      OPC=nop            
  nop                                                #  52    0xd6a28  1      OPC=nop            
  nop                                                #  53    0xd6a29  1      OPC=nop            
  nop                                                #  54    0xd6a2a  1      OPC=nop            
  nop                                                #  55    0xd6a2b  1      OPC=nop            
  nop                                                #  56    0xd6a2c  1      OPC=nop            
  nop                                                #  57    0xd6a2d  1      OPC=nop            
  nop                                                #  58    0xd6a2e  1      OPC=nop            
  nop                                                #  59    0xd6a2f  1      OPC=nop            
  nop                                                #  60    0xd6a30  1      OPC=nop            
  nop                                                #  61    0xd6a31  1      OPC=nop            
  nop                                                #  62    0xd6a32  1      OPC=nop            
  nop                                                #  63    0xd6a33  1      OPC=nop            
  nop                                                #  64    0xd6a34  1      OPC=nop            
  nop                                                #  65    0xd6a35  1      OPC=nop            
  nop                                                #  66    0xd6a36  1      OPC=nop            
  nop                                                #  67    0xd6a37  1      OPC=nop            
  nop                                                #  68    0xd6a38  1      OPC=nop            
  nop                                                #  69    0xd6a39  1      OPC=nop            
  nop                                                #  70    0xd6a3a  1      OPC=nop            
  nop                                                #  71    0xd6a3b  1      OPC=nop            
  nop                                                #  72    0xd6a3c  1      OPC=nop            
  nop                                                #  73    0xd6a3d  1      OPC=nop            
  nop                                                #  74    0xd6a3e  1      OPC=nop            
  nop                                                #  75    0xd6a3f  1      OPC=nop            
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE4findEPKwj

