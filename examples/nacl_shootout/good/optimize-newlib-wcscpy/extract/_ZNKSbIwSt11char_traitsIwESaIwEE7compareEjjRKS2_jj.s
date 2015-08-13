  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, @function

#! file-offset 0x116a40
#! rip-offset  0xd6a40
#! capacity    192 bytes

# Text                                                #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj:  #        0xd6a40  0      OPC=<label>          
  pushq %r12                                          #  1     0xd6a40  2      OPC=pushq_r64_1      
  movl %edi, %edi                                     #  2     0xd6a42  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                     #  3     0xd6a44  2      OPC=movl_r32_r32     
  pushq %rbx                                          #  4     0xd6a46  1      OPC=pushq_r64_1      
  subl $0x8, %esp                                     #  5     0xd6a47  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                     #  6     0xd6a4a  3      OPC=addq_r64_r64     
  movl %edi, %edi                                     #  7     0xd6a4d  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                            #  8     0xd6a4f  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                               #  9     0xd6a53  3      OPC=leal_r32_m16     
  movl %eax, %eax                                     #  10    0xd6a56  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                           #  11    0xd6a58  4      OPC=movl_r32_m32     
  cmpl %r12d, %esi                                    #  12    0xd6a5c  3      OPC=cmpl_r32_r32     
  nop                                                 #  13    0xd6a5f  1      OPC=nop              
  ja .L_d6ae0                                         #  14    0xd6a60  2      OPC=ja_label         
  movl %ecx, %ecx                                     #  15    0xd6a62  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %eax                            #  16    0xd6a64  4      OPC=movl_r32_m32     
  leal -0xc(%rax), %ecx                               #  17    0xd6a68  3      OPC=leal_r32_m16     
  movl %ecx, %ecx                                     #  18    0xd6a6b  2      OPC=movl_r32_r32     
  movl (%r15,%rcx,1), %ebx                            #  19    0xd6a6d  4      OPC=movl_r32_m32     
  cmpl %ebx, %r8d                                     #  20    0xd6a71  3      OPC=cmpl_r32_r32     
  ja .L_d6ae0                                         #  21    0xd6a74  2      OPC=ja_label         
  subl %esi, %r12d                                    #  22    0xd6a76  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                            #  23    0xd6a79  3      OPC=leal_r32_m16     
  cmpl %r12d, %edx                                    #  24    0xd6a7c  3      OPC=cmpl_r32_r32     
  nop                                                 #  25    0xd6a7f  1      OPC=nop              
  cmovbel %edx, %r12d                                 #  26    0xd6a80  4      OPC=cmovbel_r32_r32  
  subl %r8d, %ebx                                     #  27    0xd6a84  3      OPC=subl_r32_r32     
  leal (%rax,%r8,4), %r8d                             #  28    0xd6a87  4      OPC=leal_r32_m16     
  cmpl %ebx, %r9d                                     #  29    0xd6a8b  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                                    #  30    0xd6a8e  3      OPC=movl_r32_r32     
  cmovbel %r9d, %ebx                                  #  31    0xd6a91  4      OPC=cmovbel_r32_r32  
  movl %r8d, %esi                                     #  32    0xd6a95  3      OPC=movl_r32_r32     
  cmpl %r12d, %ebx                                    #  33    0xd6a98  3      OPC=cmpl_r32_r32     
  cmovbel %ebx, %edx                                  #  34    0xd6a9b  3      OPC=cmovbel_r32_r32  
  xchgw %ax, %ax                                      #  35    0xd6a9e  2      OPC=xchgw_ax_r16     
  subl %ebx, %r12d                                    #  36    0xd6aa0  3      OPC=subl_r32_r32     
  nop                                                 #  37    0xd6aa3  1      OPC=nop              
  nop                                                 #  38    0xd6aa4  1      OPC=nop              
  nop                                                 #  39    0xd6aa5  1      OPC=nop              
  nop                                                 #  40    0xd6aa6  1      OPC=nop              
  nop                                                 #  41    0xd6aa7  1      OPC=nop              
  nop                                                 #  42    0xd6aa8  1      OPC=nop              
  nop                                                 #  43    0xd6aa9  1      OPC=nop              
  nop                                                 #  44    0xd6aaa  1      OPC=nop              
  nop                                                 #  45    0xd6aab  1      OPC=nop              
  nop                                                 #  46    0xd6aac  1      OPC=nop              
  nop                                                 #  47    0xd6aad  1      OPC=nop              
  nop                                                 #  48    0xd6aae  1      OPC=nop              
  nop                                                 #  49    0xd6aaf  1      OPC=nop              
  nop                                                 #  50    0xd6ab0  1      OPC=nop              
  nop                                                 #  51    0xd6ab1  1      OPC=nop              
  nop                                                 #  52    0xd6ab2  1      OPC=nop              
  nop                                                 #  53    0xd6ab3  1      OPC=nop              
  nop                                                 #  54    0xd6ab4  1      OPC=nop              
  nop                                                 #  55    0xd6ab5  1      OPC=nop              
  nop                                                 #  56    0xd6ab6  1      OPC=nop              
  nop                                                 #  57    0xd6ab7  1      OPC=nop              
  nop                                                 #  58    0xd6ab8  1      OPC=nop              
  nop                                                 #  59    0xd6ab9  1      OPC=nop              
  nop                                                 #  60    0xd6aba  1      OPC=nop              
  callq .wmemcmp                                      #  61    0xd6abb  5      OPC=callq_label      
  testl %eax, %eax                                    #  62    0xd6ac0  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                                  #  63    0xd6ac2  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                     #  64    0xd6ac6  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                     #  65    0xd6ac9  3      OPC=addq_r64_r64     
  popq %rbx                                           #  66    0xd6acc  1      OPC=popq_r64_1       
  popq %r12                                           #  67    0xd6acd  2      OPC=popq_r64_1       
  popq %r11                                           #  68    0xd6acf  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                             #  69    0xd6ad1  7      OPC=andl_r32_imm32   
  nop                                                 #  70    0xd6ad8  1      OPC=nop              
  nop                                                 #  71    0xd6ad9  1      OPC=nop              
  nop                                                 #  72    0xd6ada  1      OPC=nop              
  nop                                                 #  73    0xd6adb  1      OPC=nop              
  addq %r15, %r11                                     #  74    0xd6adc  3      OPC=addq_r64_r64     
  jmpq %r11                                           #  75    0xd6adf  3      OPC=jmpq_r64         
  nop                                                 #  76    0xd6ae2  1      OPC=nop              
  nop                                                 #  77    0xd6ae3  1      OPC=nop              
  nop                                                 #  78    0xd6ae4  1      OPC=nop              
  nop                                                 #  79    0xd6ae5  1      OPC=nop              
  nop                                                 #  80    0xd6ae6  1      OPC=nop              
.L_d6ae0:                                             #        0xd6ae7  0      OPC=<label>          
  movl $0x1003babd, %edi                              #  81    0xd6ae7  5      OPC=movl_r32_imm32   
  nop                                                 #  82    0xd6aec  1      OPC=nop              
  nop                                                 #  83    0xd6aed  1      OPC=nop              
  nop                                                 #  84    0xd6aee  1      OPC=nop              
  nop                                                 #  85    0xd6aef  1      OPC=nop              
  nop                                                 #  86    0xd6af0  1      OPC=nop              
  nop                                                 #  87    0xd6af1  1      OPC=nop              
  nop                                                 #  88    0xd6af2  1      OPC=nop              
  nop                                                 #  89    0xd6af3  1      OPC=nop              
  nop                                                 #  90    0xd6af4  1      OPC=nop              
  nop                                                 #  91    0xd6af5  1      OPC=nop              
  nop                                                 #  92    0xd6af6  1      OPC=nop              
  nop                                                 #  93    0xd6af7  1      OPC=nop              
  nop                                                 #  94    0xd6af8  1      OPC=nop              
  nop                                                 #  95    0xd6af9  1      OPC=nop              
  nop                                                 #  96    0xd6afa  1      OPC=nop              
  nop                                                 #  97    0xd6afb  1      OPC=nop              
  nop                                                 #  98    0xd6afc  1      OPC=nop              
  nop                                                 #  99    0xd6afd  1      OPC=nop              
  nop                                                 #  100   0xd6afe  1      OPC=nop              
  nop                                                 #  101   0xd6aff  1      OPC=nop              
  nop                                                 #  102   0xd6b00  1      OPC=nop              
  nop                                                 #  103   0xd6b01  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc                #  104   0xd6b02  5      OPC=callq_label      
                                                                                                    
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjRKS2_jj

