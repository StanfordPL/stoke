  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj, @function

#! file-offset 0x1165c0
#! rip-offset  0xd65c0
#! capacity    128 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj:         #        0xd65c0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                                           #  1     0xd65c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                                 #  2     0xd65c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                                           #  3     0xd65c8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                                            #  4     0xd65cd  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                                  #  5     0xd65d2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                                 #  6     0xd65d4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                                  #  7     0xd65d7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                                 #  8     0xd65da  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                                 #  9     0xd65dd  3      OPC=movl_r32_r32   
  nop                                                              #  10    0xd65e0  1      OPC=nop            
  nop                                                              #  11    0xd65e1  1      OPC=nop            
  nop                                                              #  12    0xd65e2  1      OPC=nop            
  nop                                                              #  13    0xd65e3  1      OPC=nop            
  nop                                                              #  14    0xd65e4  1      OPC=nop            
  nop                                                              #  15    0xd65e5  1      OPC=nop            
  nop                                                              #  16    0xd65e6  1      OPC=nop            
  nop                                                              #  17    0xd65e7  1      OPC=nop            
  nop                                                              #  18    0xd65e8  1      OPC=nop            
  nop                                                              #  19    0xd65e9  1      OPC=nop            
  nop                                                              #  20    0xd65ea  1      OPC=nop            
  nop                                                              #  21    0xd65eb  1      OPC=nop            
  nop                                                              #  22    0xd65ec  1      OPC=nop            
  nop                                                              #  23    0xd65ed  1      OPC=nop            
  nop                                                              #  24    0xd65ee  1      OPC=nop            
  nop                                                              #  25    0xd65ef  1      OPC=nop            
  nop                                                              #  26    0xd65f0  1      OPC=nop            
  nop                                                              #  27    0xd65f1  1      OPC=nop            
  nop                                                              #  28    0xd65f2  1      OPC=nop            
  nop                                                              #  29    0xd65f3  1      OPC=nop            
  nop                                                              #  30    0xd65f4  1      OPC=nop            
  nop                                                              #  31    0xd65f5  1      OPC=nop            
  nop                                                              #  32    0xd65f6  1      OPC=nop            
  nop                                                              #  33    0xd65f7  1      OPC=nop            
  nop                                                              #  34    0xd65f8  1      OPC=nop            
  nop                                                              #  35    0xd65f9  1      OPC=nop            
  nop                                                              #  36    0xd65fa  1      OPC=nop            
  callq .wcslen                                                    #  37    0xd65fb  5      OPC=callq_label    
  movl %r13d, %edx                                                 #  38    0xd6600  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                                 #  39    0xd6603  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                                  #  40    0xd6606  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                             #  41    0xd6608  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                                #  42    0xd660d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                                  #  43    0xd6611  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                                            #  44    0xd6613  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                                 #  45    0xd6618  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                                  #  46    0xd661b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                                   #  47    0xd661e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwjj  #  48    0xd6620  5      OPC=jmpq_label_1   
  nop                                                              #  49    0xd6625  1      OPC=nop            
  nop                                                              #  50    0xd6626  1      OPC=nop            
  nop                                                              #  51    0xd6627  1      OPC=nop            
  nop                                                              #  52    0xd6628  1      OPC=nop            
  nop                                                              #  53    0xd6629  1      OPC=nop            
  nop                                                              #  54    0xd662a  1      OPC=nop            
  nop                                                              #  55    0xd662b  1      OPC=nop            
  nop                                                              #  56    0xd662c  1      OPC=nop            
  nop                                                              #  57    0xd662d  1      OPC=nop            
  nop                                                              #  58    0xd662e  1      OPC=nop            
  nop                                                              #  59    0xd662f  1      OPC=nop            
  nop                                                              #  60    0xd6630  1      OPC=nop            
  nop                                                              #  61    0xd6631  1      OPC=nop            
  nop                                                              #  62    0xd6632  1      OPC=nop            
  nop                                                              #  63    0xd6633  1      OPC=nop            
  nop                                                              #  64    0xd6634  1      OPC=nop            
  nop                                                              #  65    0xd6635  1      OPC=nop            
  nop                                                              #  66    0xd6636  1      OPC=nop            
  nop                                                              #  67    0xd6637  1      OPC=nop            
  nop                                                              #  68    0xd6638  1      OPC=nop            
  nop                                                              #  69    0xd6639  1      OPC=nop            
  nop                                                              #  70    0xd663a  1      OPC=nop            
  nop                                                              #  71    0xd663b  1      OPC=nop            
  nop                                                              #  72    0xd663c  1      OPC=nop            
  nop                                                              #  73    0xd663d  1      OPC=nop            
  nop                                                              #  74    0xd663e  1      OPC=nop            
  nop                                                              #  75    0xd663f  1      OPC=nop            
                                                                                                               
.size _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj

