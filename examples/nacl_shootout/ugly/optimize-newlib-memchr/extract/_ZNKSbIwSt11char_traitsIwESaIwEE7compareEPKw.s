  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, @function

#! file-offset 0x1165c0
#! rip-offset  0xd65c0
#! capacity    160 bytes

# Text                                          #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw:  #        0xd65c0  0      OPC=<label>          
  movq %r13, -0x10(%rsp)                        #  1     0xd65c0  5      OPC=movq_m64_r64     
  movl %edi, %r13d                              #  2     0xd65c5  3      OPC=movl_r32_r32     
  movq %rbx, -0x20(%rsp)                        #  3     0xd65c8  5      OPC=movq_m64_r64     
  movq %r14, -0x8(%rsp)                         #  4     0xd65cd  5      OPC=movq_m64_r64     
  movq %r12, -0x18(%rsp)                        #  5     0xd65d2  5      OPC=movq_m64_r64     
  subl $0x28, %esp                              #  6     0xd65d7  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                               #  7     0xd65da  3      OPC=addq_r64_r64     
  nop                                           #  8     0xd65dd  1      OPC=nop              
  nop                                           #  9     0xd65de  1      OPC=nop              
  nop                                           #  10    0xd65df  1      OPC=nop              
  movl %r13d, %r13d                             #  11    0xd65e0  3      OPC=movl_r32_r32     
  movl (%r15,%r13,1), %eax                      #  12    0xd65e3  4      OPC=movl_r32_m32     
  movl %esi, %r14d                              #  13    0xd65e7  3      OPC=movl_r32_r32     
  movl %r14d, %edi                              #  14    0xd65ea  3      OPC=movl_r32_r32     
  subl $0xc, %eax                               #  15    0xd65ed  3      OPC=subl_r32_imm8    
  movl %eax, %eax                               #  16    0xd65f0  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                     #  17    0xd65f2  4      OPC=movl_r32_m32     
  nop                                           #  18    0xd65f6  1      OPC=nop              
  nop                                           #  19    0xd65f7  1      OPC=nop              
  nop                                           #  20    0xd65f8  1      OPC=nop              
  nop                                           #  21    0xd65f9  1      OPC=nop              
  nop                                           #  22    0xd65fa  1      OPC=nop              
  callq .wcslen                                 #  23    0xd65fb  5      OPC=callq_label      
  movl %r13d, %r13d                             #  24    0xd6600  3      OPC=movl_r32_r32     
  movl (%r15,%r13,1), %edi                      #  25    0xd6603  4      OPC=movl_r32_m32     
  movl %eax, %ebx                               #  26    0xd6607  2      OPC=movl_r32_r32     
  movl %r14d, %esi                              #  27    0xd6609  3      OPC=movl_r32_r32     
  cmpl %r12d, %eax                              #  28    0xd660c  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                              #  29    0xd660f  3      OPC=movl_r32_r32     
  cmovbel %eax, %edx                            #  30    0xd6612  3      OPC=cmovbel_r32_r32  
  subl %ebx, %r12d                              #  31    0xd6615  3      OPC=subl_r32_r32     
  nop                                           #  32    0xd6618  1      OPC=nop              
  nop                                           #  33    0xd6619  1      OPC=nop              
  nop                                           #  34    0xd661a  1      OPC=nop              
  callq .wmemcmp                                #  35    0xd661b  5      OPC=callq_label      
  testl %eax, %eax                              #  36    0xd6620  2      OPC=testl_r32_r32    
  movq 0x8(%rsp), %rbx                          #  37    0xd6622  5      OPC=movq_r64_m64     
  movq 0x18(%rsp), %r13                         #  38    0xd6627  5      OPC=movq_r64_m64     
  cmovel %r12d, %eax                            #  39    0xd662c  4      OPC=cmovel_r32_r32   
  movq 0x20(%rsp), %r14                         #  40    0xd6630  5      OPC=movq_r64_m64     
  movq 0x10(%rsp), %r12                         #  41    0xd6635  5      OPC=movq_r64_m64     
  addl $0x28, %esp                              #  42    0xd663a  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                               #  43    0xd663d  3      OPC=addq_r64_r64     
  popq %r11                                     #  44    0xd6640  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                       #  45    0xd6642  7      OPC=andl_r32_imm32   
  nop                                           #  46    0xd6649  1      OPC=nop              
  nop                                           #  47    0xd664a  1      OPC=nop              
  nop                                           #  48    0xd664b  1      OPC=nop              
  nop                                           #  49    0xd664c  1      OPC=nop              
  addq %r15, %r11                               #  50    0xd664d  3      OPC=addq_r64_r64     
  jmpq %r11                                     #  51    0xd6650  3      OPC=jmpq_r64         
  nop                                           #  52    0xd6653  1      OPC=nop              
  nop                                           #  53    0xd6654  1      OPC=nop              
  nop                                           #  54    0xd6655  1      OPC=nop              
  nop                                           #  55    0xd6656  1      OPC=nop              
  nop                                           #  56    0xd6657  1      OPC=nop              
  nop                                           #  57    0xd6658  1      OPC=nop              
  nop                                           #  58    0xd6659  1      OPC=nop              
  nop                                           #  59    0xd665a  1      OPC=nop              
  nop                                           #  60    0xd665b  1      OPC=nop              
  nop                                           #  61    0xd665c  1      OPC=nop              
  nop                                           #  62    0xd665d  1      OPC=nop              
  nop                                           #  63    0xd665e  1      OPC=nop              
  nop                                           #  64    0xd665f  1      OPC=nop              
  nop                                           #  65    0xd6660  1      OPC=nop              
  nop                                           #  66    0xd6661  1      OPC=nop              
  nop                                           #  67    0xd6662  1      OPC=nop              
  nop                                           #  68    0xd6663  1      OPC=nop              
  nop                                           #  69    0xd6664  1      OPC=nop              
  nop                                           #  70    0xd6665  1      OPC=nop              
  nop                                           #  71    0xd6666  1      OPC=nop              
                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEPKw

