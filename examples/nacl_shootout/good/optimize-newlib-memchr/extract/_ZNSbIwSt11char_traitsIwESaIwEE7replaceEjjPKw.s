  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKw, @function

#! file-offset 0x11b0c0
#! rip-offset  0xdb0c0
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKw:         #        0xdb0c0  0      OPC=<label>        
  movq %r14, -0x8(%rsp)                                 #  1     0xdb0c0  5      OPC=movq_m64_r64   
  movl %ecx, %r14d                                      #  2     0xdb0c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)                                #  3     0xdb0c8  5      OPC=movq_m64_r64   
  movq %r12, -0x18(%rsp)                                #  4     0xdb0cd  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)                                #  5     0xdb0d2  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                      #  6     0xdb0d7  3      OPC=movl_r32_r32   
  subl $0x28, %esp                                      #  7     0xdb0da  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                       #  8     0xdb0dd  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                      #  9     0xdb0e0  3      OPC=movl_r32_r32   
  movl %edi, %ebx                                       #  10    0xdb0e3  2      OPC=movl_r32_r32   
  movl %r14d, %edi                                      #  11    0xdb0e5  3      OPC=movl_r32_r32   
  nop                                                   #  12    0xdb0e8  1      OPC=nop            
  nop                                                   #  13    0xdb0e9  1      OPC=nop            
  nop                                                   #  14    0xdb0ea  1      OPC=nop            
  nop                                                   #  15    0xdb0eb  1      OPC=nop            
  nop                                                   #  16    0xdb0ec  1      OPC=nop            
  nop                                                   #  17    0xdb0ed  1      OPC=nop            
  nop                                                   #  18    0xdb0ee  1      OPC=nop            
  nop                                                   #  19    0xdb0ef  1      OPC=nop            
  nop                                                   #  20    0xdb0f0  1      OPC=nop            
  nop                                                   #  21    0xdb0f1  1      OPC=nop            
  nop                                                   #  22    0xdb0f2  1      OPC=nop            
  nop                                                   #  23    0xdb0f3  1      OPC=nop            
  nop                                                   #  24    0xdb0f4  1      OPC=nop            
  nop                                                   #  25    0xdb0f5  1      OPC=nop            
  nop                                                   #  26    0xdb0f6  1      OPC=nop            
  nop                                                   #  27    0xdb0f7  1      OPC=nop            
  nop                                                   #  28    0xdb0f8  1      OPC=nop            
  nop                                                   #  29    0xdb0f9  1      OPC=nop            
  nop                                                   #  30    0xdb0fa  1      OPC=nop            
  callq .wcslen                                         #  31    0xdb0fb  5      OPC=callq_label    
  movl %r14d, %ecx                                      #  32    0xdb100  3      OPC=movl_r32_r32   
  movl %r13d, %edx                                      #  33    0xdb103  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                      #  34    0xdb106  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                       #  35    0xdb109  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                                 #  36    0xdb10b  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                                  #  37    0xdb110  5      OPC=movq_r64_m64   
  movq 0x18(%rsp), %r13                                 #  38    0xdb115  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14                                 #  39    0xdb11a  5      OPC=movq_r64_m64   
  nop                                                   #  40    0xdb11f  1      OPC=nop            
  movl %eax, %r8d                                       #  41    0xdb120  3      OPC=movl_r32_r32   
  addl $0x28, %esp                                      #  42    0xdb123  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                       #  43    0xdb126  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj  #  44    0xdb129  5      OPC=jmpq_label_1   
  nop                                                   #  45    0xdb12e  1      OPC=nop            
  nop                                                   #  46    0xdb12f  1      OPC=nop            
  nop                                                   #  47    0xdb130  1      OPC=nop            
  nop                                                   #  48    0xdb131  1      OPC=nop            
  nop                                                   #  49    0xdb132  1      OPC=nop            
  nop                                                   #  50    0xdb133  1      OPC=nop            
  nop                                                   #  51    0xdb134  1      OPC=nop            
  nop                                                   #  52    0xdb135  1      OPC=nop            
  nop                                                   #  53    0xdb136  1      OPC=nop            
  nop                                                   #  54    0xdb137  1      OPC=nop            
  nop                                                   #  55    0xdb138  1      OPC=nop            
  nop                                                   #  56    0xdb139  1      OPC=nop            
  nop                                                   #  57    0xdb13a  1      OPC=nop            
  nop                                                   #  58    0xdb13b  1      OPC=nop            
  nop                                                   #  59    0xdb13c  1      OPC=nop            
  nop                                                   #  60    0xdb13d  1      OPC=nop            
  nop                                                   #  61    0xdb13e  1      OPC=nop            
  nop                                                   #  62    0xdb13f  1      OPC=nop            
                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKw

