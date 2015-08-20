  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj, @function

#! file-offset 0x1160c0
#! rip-offset  0xd60c0
#! capacity    128 bytes

# Text                                                #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj:         #        0xd60c0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                              #  1     0xd60c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                    #  2     0xd60c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                              #  3     0xd60c8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                               #  4     0xd60cd  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                     #  5     0xd60d2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                    #  6     0xd60d4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                     #  7     0xd60d7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                    #  8     0xd60da  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                    #  9     0xd60dd  3      OPC=movl_r32_r32   
  nop                                                 #  10    0xd60e0  1      OPC=nop            
  nop                                                 #  11    0xd60e1  1      OPC=nop            
  nop                                                 #  12    0xd60e2  1      OPC=nop            
  nop                                                 #  13    0xd60e3  1      OPC=nop            
  nop                                                 #  14    0xd60e4  1      OPC=nop            
  nop                                                 #  15    0xd60e5  1      OPC=nop            
  nop                                                 #  16    0xd60e6  1      OPC=nop            
  nop                                                 #  17    0xd60e7  1      OPC=nop            
  nop                                                 #  18    0xd60e8  1      OPC=nop            
  nop                                                 #  19    0xd60e9  1      OPC=nop            
  nop                                                 #  20    0xd60ea  1      OPC=nop            
  nop                                                 #  21    0xd60eb  1      OPC=nop            
  nop                                                 #  22    0xd60ec  1      OPC=nop            
  nop                                                 #  23    0xd60ed  1      OPC=nop            
  nop                                                 #  24    0xd60ee  1      OPC=nop            
  nop                                                 #  25    0xd60ef  1      OPC=nop            
  nop                                                 #  26    0xd60f0  1      OPC=nop            
  nop                                                 #  27    0xd60f1  1      OPC=nop            
  nop                                                 #  28    0xd60f2  1      OPC=nop            
  nop                                                 #  29    0xd60f3  1      OPC=nop            
  nop                                                 #  30    0xd60f4  1      OPC=nop            
  nop                                                 #  31    0xd60f5  1      OPC=nop            
  nop                                                 #  32    0xd60f6  1      OPC=nop            
  nop                                                 #  33    0xd60f7  1      OPC=nop            
  nop                                                 #  34    0xd60f8  1      OPC=nop            
  nop                                                 #  35    0xd60f9  1      OPC=nop            
  nop                                                 #  36    0xd60fa  1      OPC=nop            
  callq .wcslen                                       #  37    0xd60fb  5      OPC=callq_label    
  movl %r13d, %edx                                    #  38    0xd6100  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                    #  39    0xd6103  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                     #  40    0xd6106  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                #  41    0xd6108  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                   #  42    0xd610d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                     #  43    0xd6111  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                               #  44    0xd6113  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                    #  45    0xd6118  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                     #  46    0xd611b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                      #  47    0xd611e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwjj  #  48    0xd6120  5      OPC=jmpq_label_1   
  nop                                                 #  49    0xd6125  1      OPC=nop            
  nop                                                 #  50    0xd6126  1      OPC=nop            
  nop                                                 #  51    0xd6127  1      OPC=nop            
  nop                                                 #  52    0xd6128  1      OPC=nop            
  nop                                                 #  53    0xd6129  1      OPC=nop            
  nop                                                 #  54    0xd612a  1      OPC=nop            
  nop                                                 #  55    0xd612b  1      OPC=nop            
  nop                                                 #  56    0xd612c  1      OPC=nop            
  nop                                                 #  57    0xd612d  1      OPC=nop            
  nop                                                 #  58    0xd612e  1      OPC=nop            
  nop                                                 #  59    0xd612f  1      OPC=nop            
  nop                                                 #  60    0xd6130  1      OPC=nop            
  nop                                                 #  61    0xd6131  1      OPC=nop            
  nop                                                 #  62    0xd6132  1      OPC=nop            
  nop                                                 #  63    0xd6133  1      OPC=nop            
  nop                                                 #  64    0xd6134  1      OPC=nop            
  nop                                                 #  65    0xd6135  1      OPC=nop            
  nop                                                 #  66    0xd6136  1      OPC=nop            
  nop                                                 #  67    0xd6137  1      OPC=nop            
  nop                                                 #  68    0xd6138  1      OPC=nop            
  nop                                                 #  69    0xd6139  1      OPC=nop            
  nop                                                 #  70    0xd613a  1      OPC=nop            
  nop                                                 #  71    0xd613b  1      OPC=nop            
  nop                                                 #  72    0xd613c  1      OPC=nop            
  nop                                                 #  73    0xd613d  1      OPC=nop            
  nop                                                 #  74    0xd613e  1      OPC=nop            
  nop                                                 #  75    0xd613f  1      OPC=nop            
                                                                                                  
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindEPKwj

