  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, @function

#! file-offset 0x116d40
#! rip-offset  0xd6d40
#! capacity    192 bytes

# Text                                                #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj:  #        0xd6d40  0      OPC=<label>          
  pushq %r12                                          #  1     0xd6d40  2      OPC=pushq_r64_1      
  movl %edi, %edi                                     #  2     0xd6d42  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                     #  3     0xd6d44  2      OPC=movl_r32_r32     
  pushq %rbx                                          #  4     0xd6d46  1      OPC=pushq_r64_1      
  subl $0x8, %esp                                     #  5     0xd6d47  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                     #  6     0xd6d4a  3      OPC=addq_r64_r64     
  movl %edi, %edi                                     #  7     0xd6d4d  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                            #  8     0xd6d4f  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                               #  9     0xd6d53  3      OPC=leal_r32_m16     
  movl %eax, %eax                                     #  10    0xd6d56  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                           #  11    0xd6d58  4      OPC=movl_r32_m32     
  cmpl %r12d, %esi                                    #  12    0xd6d5c  3      OPC=cmpl_r32_r32     
  nop                                                 #  13    0xd6d5f  1      OPC=nop              
  ja .L_d6de0                                         #  14    0xd6d60  2      OPC=ja_label         
  movl %ecx, %ecx                                     #  15    0xd6d62  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %eax                            #  16    0xd6d64  4      OPC=movl_r32_m32     
  leal -0xc(%rax), %ecx                               #  17    0xd6d68  3      OPC=leal_r32_m16     
  movl %ecx, %ecx                                     #  18    0xd6d6b  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %ebx                            #  19    0xd6d6d  4      OPC=movl_r32_m32     
  cmpl %ebx, %r8d                                     #  20    0xd6d71  3      OPC=cmpl_r32_r32     
  ja .L_d6de0                                         #  21    0xd6d74  2      OPC=ja_label         
  subl %esi, %r12d                                    #  22    0xd6d76  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                            #  23    0xd6d79  3      OPC=leal_r32_m16     
  cmpl %r12d, %edx                                    #  24    0xd6d7c  3      OPC=cmpl_r32_r32     
  nop                                                 #  25    0xd6d7f  1      OPC=nop              
  cmovbel %edx, %r12d                                 #  26    0xd6d80  4      OPC=cmovbel_r32_r32  
  subl %r8d, %ebx                                     #  27    0xd6d84  3      OPC=subl_r32_r32     
  leal (%rax,%r8,4), %r8d                             #  28    0xd6d87  4      OPC=leal_r32_m16     
  cmpl %ebx, %r9d                                     #  29    0xd6d8b  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                                    #  30    0xd6d8e  3      OPC=movl_r32_r32     
  cmovbel %r9d, %ebx                                  #  31    0xd6d91  4      OPC=cmovbel_r32_r32  
  movl %r8d, %esi                                     #  32    0xd6d95  3      OPC=movl_r32_r32     
  cmpl %r12d, %ebx                                    #  33    0xd6d98  3      OPC=cmpl_r32_r32     
  cmovbel %ebx, %edx                                  #  34    0xd6d9b  3      OPC=cmovbel_r32_r32  
  xchgw %ax, %ax                                      #  35    0xd6d9e  2      OPC=xchgw_ax_r16     
  subl %ebx, %r12d                                    #  36    0xd6da0  3      OPC=subl_r32_r32     
  nop                                                 #  37    0xd6da3  1      OPC=nop              
  nop                                                 #  38    0xd6da4  1      OPC=nop              
  nop                                                 #  39    0xd6da5  1      OPC=nop              
  nop                                                 #  40    0xd6da6  1      OPC=nop              
  nop                                                 #  41    0xd6da7  1      OPC=nop              
  nop                                                 #  42    0xd6da8  1      OPC=nop              
  nop                                                 #  43    0xd6da9  1      OPC=nop              
  nop                                                 #  44    0xd6daa  1      OPC=nop              
  nop                                                 #  45    0xd6dab  1      OPC=nop              
  nop                                                 #  46    0xd6dac  1      OPC=nop              
  nop                                                 #  47    0xd6dad  1      OPC=nop              
  nop                                                 #  48    0xd6dae  1      OPC=nop              
  nop                                                 #  49    0xd6daf  1      OPC=nop              
  nop                                                 #  50    0xd6db0  1      OPC=nop              
  nop                                                 #  51    0xd6db1  1      OPC=nop              
  nop                                                 #  52    0xd6db2  1      OPC=nop              
  nop                                                 #  53    0xd6db3  1      OPC=nop              
  nop                                                 #  54    0xd6db4  1      OPC=nop              
  nop                                                 #  55    0xd6db5  1      OPC=nop              
  nop                                                 #  56    0xd6db6  1      OPC=nop              
  nop                                                 #  57    0xd6db7  1      OPC=nop              
  nop                                                 #  58    0xd6db8  1      OPC=nop              
  nop                                                 #  59    0xd6db9  1      OPC=nop              
  nop                                                 #  60    0xd6dba  1      OPC=nop              
  callq .wmemcmp                                      #  61    0xd6dbb  5      OPC=callq_label      
  testl %eax, %eax                                    #  62    0xd6dc0  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                                  #  63    0xd6dc2  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                     #  64    0xd6dc6  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                     #  65    0xd6dc9  3      OPC=addq_r64_r64     
  popq %rbx                                           #  66    0xd6dcc  1      OPC=popq_r64_1       
  popq %r12                                           #  67    0xd6dcd  2      OPC=popq_r64_1       
  popq %r11                                           #  68    0xd6dcf  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                             #  69    0xd6dd1  7      OPC=andl_r32_imm32   
  nop                                                 #  70    0xd6dd8  1      OPC=nop              
  nop                                                 #  71    0xd6dd9  1      OPC=nop              
  nop                                                 #  72    0xd6dda  1      OPC=nop              
  nop                                                 #  73    0xd6ddb  1      OPC=nop              
  addq %r15, %r11                                     #  74    0xd6ddc  3      OPC=addq_r64_r64     
  jmpq %r11                                           #  75    0xd6ddf  3      OPC=jmpq_r64         
  nop                                                 #  76    0xd6de2  1      OPC=nop              
  nop                                                 #  77    0xd6de3  1      OPC=nop              
  nop                                                 #  78    0xd6de4  1      OPC=nop              
  nop                                                 #  79    0xd6de5  1      OPC=nop              
  nop                                                 #  80    0xd6de6  1      OPC=nop              
.L_d6de0:                                             #        0xd6de7  0      OPC=<label>          
  movl $0x1003babd, %edi                              #  81    0xd6de7  5      OPC=movl_r32_imm32   
  nop                                                 #  82    0xd6dec  1      OPC=nop              
  nop                                                 #  83    0xd6ded  1      OPC=nop              
  nop                                                 #  84    0xd6dee  1      OPC=nop              
  nop                                                 #  85    0xd6def  1      OPC=nop              
  nop                                                 #  86    0xd6df0  1      OPC=nop              
  nop                                                 #  87    0xd6df1  1      OPC=nop              
  nop                                                 #  88    0xd6df2  1      OPC=nop              
  nop                                                 #  89    0xd6df3  1      OPC=nop              
  nop                                                 #  90    0xd6df4  1      OPC=nop              
  nop                                                 #  91    0xd6df5  1      OPC=nop              
  nop                                                 #  92    0xd6df6  1      OPC=nop              
  nop                                                 #  93    0xd6df7  1      OPC=nop              
  nop                                                 #  94    0xd6df8  1      OPC=nop              
  nop                                                 #  95    0xd6df9  1      OPC=nop              
  nop                                                 #  96    0xd6dfa  1      OPC=nop              
  nop                                                 #  97    0xd6dfb  1      OPC=nop              
  nop                                                 #  98    0xd6dfc  1      OPC=nop              
  nop                                                 #  99    0xd6dfd  1      OPC=nop              
  nop                                                 #  100   0xd6dfe  1      OPC=nop              
  nop                                                 #  101   0xd6dff  1      OPC=nop              
  nop                                                 #  102   0xd6e00  1      OPC=nop              
  nop                                                 #  103   0xd6e01  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc                #  104   0xd6e02  5      OPC=callq_label      
                                                                                                    
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj

