  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, @function

#! file-offset 0x117460
#! rip-offset  0xd7460
#! capacity    192 bytes

# Text                                                #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj:  #        0xd7460  0      OPC=<label>          
  pushq %r12                                          #  1     0xd7460  2      OPC=pushq_r64_1      
  movl %edi, %edi                                     #  2     0xd7462  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                     #  3     0xd7464  2      OPC=movl_r32_r32     
  pushq %rbx                                          #  4     0xd7466  1      OPC=pushq_r64_1      
  subl $0x8, %esp                                     #  5     0xd7467  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                     #  6     0xd746a  3      OPC=addq_r64_r64     
  movl %edi, %edi                                     #  7     0xd746d  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                            #  8     0xd746f  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                               #  9     0xd7473  3      OPC=leal_r32_m16     
  movl %eax, %eax                                     #  10    0xd7476  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                           #  11    0xd7478  4      OPC=movl_r32_m32     
  cmpl %r12d, %esi                                    #  12    0xd747c  3      OPC=cmpl_r32_r32     
  nop                                                 #  13    0xd747f  1      OPC=nop              
  ja .L_d7500                                         #  14    0xd7480  2      OPC=ja_label         
  movl %ecx, %ecx                                     #  15    0xd7482  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %eax                            #  16    0xd7484  4      OPC=movl_r32_m32     
  leal -0xc(%rax), %ecx                               #  17    0xd7488  3      OPC=leal_r32_m16     
  movl %ecx, %ecx                                     #  18    0xd748b  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %ebx                            #  19    0xd748d  4      OPC=movl_r32_m32     
  cmpl %ebx, %r8d                                     #  20    0xd7491  3      OPC=cmpl_r32_r32     
  ja .L_d7500                                         #  21    0xd7494  2      OPC=ja_label         
  subl %esi, %r12d                                    #  22    0xd7496  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                            #  23    0xd7499  3      OPC=leal_r32_m16     
  cmpl %r12d, %edx                                    #  24    0xd749c  3      OPC=cmpl_r32_r32     
  nop                                                 #  25    0xd749f  1      OPC=nop              
  cmovbel %edx, %r12d                                 #  26    0xd74a0  4      OPC=cmovbel_r32_r32  
  subl %r8d, %ebx                                     #  27    0xd74a4  3      OPC=subl_r32_r32     
  leal (%rax,%r8,4), %r8d                             #  28    0xd74a7  4      OPC=leal_r32_m16     
  cmpl %ebx, %r9d                                     #  29    0xd74ab  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                                    #  30    0xd74ae  3      OPC=movl_r32_r32     
  cmovbel %r9d, %ebx                                  #  31    0xd74b1  4      OPC=cmovbel_r32_r32  
  movl %r8d, %esi                                     #  32    0xd74b5  3      OPC=movl_r32_r32     
  cmpl %r12d, %ebx                                    #  33    0xd74b8  3      OPC=cmpl_r32_r32     
  cmovbel %ebx, %edx                                  #  34    0xd74bb  3      OPC=cmovbel_r32_r32  
  xchgw %ax, %ax                                      #  35    0xd74be  2      OPC=xchgw_ax_r16     
  subl %ebx, %r12d                                    #  36    0xd74c0  3      OPC=subl_r32_r32     
  nop                                                 #  37    0xd74c3  1      OPC=nop              
  nop                                                 #  38    0xd74c4  1      OPC=nop              
  nop                                                 #  39    0xd74c5  1      OPC=nop              
  nop                                                 #  40    0xd74c6  1      OPC=nop              
  nop                                                 #  41    0xd74c7  1      OPC=nop              
  nop                                                 #  42    0xd74c8  1      OPC=nop              
  nop                                                 #  43    0xd74c9  1      OPC=nop              
  nop                                                 #  44    0xd74ca  1      OPC=nop              
  nop                                                 #  45    0xd74cb  1      OPC=nop              
  nop                                                 #  46    0xd74cc  1      OPC=nop              
  nop                                                 #  47    0xd74cd  1      OPC=nop              
  nop                                                 #  48    0xd74ce  1      OPC=nop              
  nop                                                 #  49    0xd74cf  1      OPC=nop              
  nop                                                 #  50    0xd74d0  1      OPC=nop              
  nop                                                 #  51    0xd74d1  1      OPC=nop              
  nop                                                 #  52    0xd74d2  1      OPC=nop              
  nop                                                 #  53    0xd74d3  1      OPC=nop              
  nop                                                 #  54    0xd74d4  1      OPC=nop              
  nop                                                 #  55    0xd74d5  1      OPC=nop              
  nop                                                 #  56    0xd74d6  1      OPC=nop              
  nop                                                 #  57    0xd74d7  1      OPC=nop              
  nop                                                 #  58    0xd74d8  1      OPC=nop              
  nop                                                 #  59    0xd74d9  1      OPC=nop              
  nop                                                 #  60    0xd74da  1      OPC=nop              
  callq .wmemcmp                                      #  61    0xd74db  5      OPC=callq_label      
  testl %eax, %eax                                    #  62    0xd74e0  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                                  #  63    0xd74e2  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                     #  64    0xd74e6  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                     #  65    0xd74e9  3      OPC=addq_r64_r64     
  popq %rbx                                           #  66    0xd74ec  1      OPC=popq_r64_1       
  popq %r12                                           #  67    0xd74ed  2      OPC=popq_r64_1       
  popq %r11                                           #  68    0xd74ef  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                             #  69    0xd74f1  7      OPC=andl_r32_imm32   
  nop                                                 #  70    0xd74f8  1      OPC=nop              
  nop                                                 #  71    0xd74f9  1      OPC=nop              
  nop                                                 #  72    0xd74fa  1      OPC=nop              
  nop                                                 #  73    0xd74fb  1      OPC=nop              
  addq %r15, %r11                                     #  74    0xd74fc  3      OPC=addq_r64_r64     
  jmpq %r11                                           #  75    0xd74ff  3      OPC=jmpq_r64         
  nop                                                 #  76    0xd7502  1      OPC=nop              
  nop                                                 #  77    0xd7503  1      OPC=nop              
  nop                                                 #  78    0xd7504  1      OPC=nop              
  nop                                                 #  79    0xd7505  1      OPC=nop              
  nop                                                 #  80    0xd7506  1      OPC=nop              
.L_d7500:                                             #        0xd7507  0      OPC=<label>          
  movl $0x1003babd, %edi                              #  81    0xd7507  5      OPC=movl_r32_imm32   
  nop                                                 #  82    0xd750c  1      OPC=nop              
  nop                                                 #  83    0xd750d  1      OPC=nop              
  nop                                                 #  84    0xd750e  1      OPC=nop              
  nop                                                 #  85    0xd750f  1      OPC=nop              
  nop                                                 #  86    0xd7510  1      OPC=nop              
  nop                                                 #  87    0xd7511  1      OPC=nop              
  nop                                                 #  88    0xd7512  1      OPC=nop              
  nop                                                 #  89    0xd7513  1      OPC=nop              
  nop                                                 #  90    0xd7514  1      OPC=nop              
  nop                                                 #  91    0xd7515  1      OPC=nop              
  nop                                                 #  92    0xd7516  1      OPC=nop              
  nop                                                 #  93    0xd7517  1      OPC=nop              
  nop                                                 #  94    0xd7518  1      OPC=nop              
  nop                                                 #  95    0xd7519  1      OPC=nop              
  nop                                                 #  96    0xd751a  1      OPC=nop              
  nop                                                 #  97    0xd751b  1      OPC=nop              
  nop                                                 #  98    0xd751c  1      OPC=nop              
  nop                                                 #  99    0xd751d  1      OPC=nop              
  nop                                                 #  100   0xd751e  1      OPC=nop              
  nop                                                 #  101   0xd751f  1      OPC=nop              
  nop                                                 #  102   0xd7520  1      OPC=nop              
  nop                                                 #  103   0xd7521  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc                #  104   0xd7522  5      OPC=callq_label      
                                                                                                    
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj

