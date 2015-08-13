  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, @function

#! file-offset 0x1168a0
#! rip-offset  0xd68a0
#! capacity    160 bytes

# Text                                             #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj:  #        0xd68a0  0      OPC=<label>          
  pushq %r12                                       #  1     0xd68a0  2      OPC=pushq_r64_1      
  movl %edi, %edi                                  #  2     0xd68a2  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                  #  3     0xd68a4  2      OPC=movl_r32_r32     
  pushq %rbx                                       #  4     0xd68a6  1      OPC=pushq_r64_1      
  movl %r8d, %ebx                                  #  5     0xd68a7  3      OPC=movl_r32_r32     
  subl $0x8, %esp                                  #  6     0xd68aa  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                  #  7     0xd68ad  3      OPC=addq_r64_r64     
  movl %edi, %edi                                  #  8     0xd68b0  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                         #  9     0xd68b2  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                            #  10    0xd68b6  3      OPC=leal_r32_m16     
  movl %eax, %eax                                  #  11    0xd68b9  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                        #  12    0xd68bb  4      OPC=movl_r32_m32     
  nop                                              #  13    0xd68bf  1      OPC=nop              
  cmpl %r12d, %esi                                 #  14    0xd68c0  3      OPC=cmpl_r32_r32     
  ja .L_d6920                                      #  15    0xd68c3  2      OPC=ja_label         
  subl %esi, %r12d                                 #  16    0xd68c5  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                         #  17    0xd68c8  3      OPC=leal_r32_m16     
  movl %ecx, %esi                                  #  18    0xd68cb  2      OPC=movl_r32_r32     
  cmpl %r12d, %edx                                 #  19    0xd68cd  3      OPC=cmpl_r32_r32     
  cmovbel %edx, %r12d                              #  20    0xd68d0  4      OPC=cmovbel_r32_r32  
  cmpl %r12d, %r8d                                 #  21    0xd68d4  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                                 #  22    0xd68d7  3      OPC=movl_r32_r32     
  cmovbel %r8d, %edx                               #  23    0xd68da  4      OPC=cmovbel_r32_r32  
  xchgw %ax, %ax                                   #  24    0xd68de  2      OPC=xchgw_ax_r16     
  subl %ebx, %r12d                                 #  25    0xd68e0  3      OPC=subl_r32_r32     
  nop                                              #  26    0xd68e3  1      OPC=nop              
  nop                                              #  27    0xd68e4  1      OPC=nop              
  nop                                              #  28    0xd68e5  1      OPC=nop              
  nop                                              #  29    0xd68e6  1      OPC=nop              
  nop                                              #  30    0xd68e7  1      OPC=nop              
  nop                                              #  31    0xd68e8  1      OPC=nop              
  nop                                              #  32    0xd68e9  1      OPC=nop              
  nop                                              #  33    0xd68ea  1      OPC=nop              
  nop                                              #  34    0xd68eb  1      OPC=nop              
  nop                                              #  35    0xd68ec  1      OPC=nop              
  nop                                              #  36    0xd68ed  1      OPC=nop              
  nop                                              #  37    0xd68ee  1      OPC=nop              
  nop                                              #  38    0xd68ef  1      OPC=nop              
  nop                                              #  39    0xd68f0  1      OPC=nop              
  nop                                              #  40    0xd68f1  1      OPC=nop              
  nop                                              #  41    0xd68f2  1      OPC=nop              
  nop                                              #  42    0xd68f3  1      OPC=nop              
  nop                                              #  43    0xd68f4  1      OPC=nop              
  nop                                              #  44    0xd68f5  1      OPC=nop              
  nop                                              #  45    0xd68f6  1      OPC=nop              
  nop                                              #  46    0xd68f7  1      OPC=nop              
  nop                                              #  47    0xd68f8  1      OPC=nop              
  nop                                              #  48    0xd68f9  1      OPC=nop              
  nop                                              #  49    0xd68fa  1      OPC=nop              
  callq .wmemcmp                                   #  50    0xd68fb  5      OPC=callq_label      
  testl %eax, %eax                                 #  51    0xd6900  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                               #  52    0xd6902  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                  #  53    0xd6906  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                  #  54    0xd6909  3      OPC=addq_r64_r64     
  popq %rbx                                        #  55    0xd690c  1      OPC=popq_r64_1       
  popq %r12                                        #  56    0xd690d  2      OPC=popq_r64_1       
  popq %r11                                        #  57    0xd690f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                          #  58    0xd6911  7      OPC=andl_r32_imm32   
  nop                                              #  59    0xd6918  1      OPC=nop              
  nop                                              #  60    0xd6919  1      OPC=nop              
  nop                                              #  61    0xd691a  1      OPC=nop              
  nop                                              #  62    0xd691b  1      OPC=nop              
  addq %r15, %r11                                  #  63    0xd691c  3      OPC=addq_r64_r64     
  jmpq %r11                                        #  64    0xd691f  3      OPC=jmpq_r64         
  nop                                              #  65    0xd6922  1      OPC=nop              
  nop                                              #  66    0xd6923  1      OPC=nop              
  nop                                              #  67    0xd6924  1      OPC=nop              
  nop                                              #  68    0xd6925  1      OPC=nop              
  nop                                              #  69    0xd6926  1      OPC=nop              
.L_d6920:                                          #        0xd6927  0      OPC=<label>          
  movl $0x1003babd, %edi                           #  70    0xd6927  5      OPC=movl_r32_imm32   
  nop                                              #  71    0xd692c  1      OPC=nop              
  nop                                              #  72    0xd692d  1      OPC=nop              
  nop                                              #  73    0xd692e  1      OPC=nop              
  nop                                              #  74    0xd692f  1      OPC=nop              
  nop                                              #  75    0xd6930  1      OPC=nop              
  nop                                              #  76    0xd6931  1      OPC=nop              
  nop                                              #  77    0xd6932  1      OPC=nop              
  nop                                              #  78    0xd6933  1      OPC=nop              
  nop                                              #  79    0xd6934  1      OPC=nop              
  nop                                              #  80    0xd6935  1      OPC=nop              
  nop                                              #  81    0xd6936  1      OPC=nop              
  nop                                              #  82    0xd6937  1      OPC=nop              
  nop                                              #  83    0xd6938  1      OPC=nop              
  nop                                              #  84    0xd6939  1      OPC=nop              
  nop                                              #  85    0xd693a  1      OPC=nop              
  nop                                              #  86    0xd693b  1      OPC=nop              
  nop                                              #  87    0xd693c  1      OPC=nop              
  nop                                              #  88    0xd693d  1      OPC=nop              
  nop                                              #  89    0xd693e  1      OPC=nop              
  nop                                              #  90    0xd693f  1      OPC=nop              
  nop                                              #  91    0xd6940  1      OPC=nop              
  nop                                              #  92    0xd6941  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc             #  93    0xd6942  5      OPC=callq_label      
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj

