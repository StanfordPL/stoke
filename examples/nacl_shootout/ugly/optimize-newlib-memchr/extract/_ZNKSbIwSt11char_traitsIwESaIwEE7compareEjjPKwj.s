  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, @function

#! file-offset 0x1172c0
#! rip-offset  0xd72c0
#! capacity    160 bytes

# Text                                             #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj:  #        0xd72c0  0      OPC=<label>          
  pushq %r12                                       #  1     0xd72c0  2      OPC=pushq_r64_1      
  movl %edi, %edi                                  #  2     0xd72c2  2      OPC=movl_r32_r32     
  movl %ecx, %ecx                                  #  3     0xd72c4  2      OPC=movl_r32_r32     
  pushq %rbx                                       #  4     0xd72c6  1      OPC=pushq_r64_1      
  movl %r8d, %ebx                                  #  5     0xd72c7  3      OPC=movl_r32_r32     
  subl $0x8, %esp                                  #  6     0xd72ca  3      OPC=subl_r32_imm8    
  addq %r15, %rsp                                  #  7     0xd72cd  3      OPC=addq_r64_r64     
  movl %edi, %edi                                  #  8     0xd72d0  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %edi                         #  9     0xd72d2  4      OPC=movl_r32_m32     
  leal -0xc(%rdi), %eax                            #  10    0xd72d6  3      OPC=leal_r32_m16     
  movl %eax, %eax                                  #  11    0xd72d9  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %r12d                        #  12    0xd72db  4      OPC=movl_r32_m32     
  nop                                              #  13    0xd72df  1      OPC=nop              
  cmpl %r12d, %esi                                 #  14    0xd72e0  3      OPC=cmpl_r32_r32     
  ja .L_d7340                                      #  15    0xd72e3  2      OPC=ja_label         
  subl %esi, %r12d                                 #  16    0xd72e5  3      OPC=subl_r32_r32     
  leal (%rdi,%rsi,4), %edi                         #  17    0xd72e8  3      OPC=leal_r32_m16     
  movl %ecx, %esi                                  #  18    0xd72eb  2      OPC=movl_r32_r32     
  cmpl %r12d, %edx                                 #  19    0xd72ed  3      OPC=cmpl_r32_r32     
  cmovbel %edx, %r12d                              #  20    0xd72f0  4      OPC=cmovbel_r32_r32  
  cmpl %r12d, %r8d                                 #  21    0xd72f4  3      OPC=cmpl_r32_r32     
  movl %r12d, %edx                                 #  22    0xd72f7  3      OPC=movl_r32_r32     
  cmovbel %r8d, %edx                               #  23    0xd72fa  4      OPC=cmovbel_r32_r32  
  xchgw %ax, %ax                                   #  24    0xd72fe  2      OPC=xchgw_ax_r16     
  subl %ebx, %r12d                                 #  25    0xd7300  3      OPC=subl_r32_r32     
  nop                                              #  26    0xd7303  1      OPC=nop              
  nop                                              #  27    0xd7304  1      OPC=nop              
  nop                                              #  28    0xd7305  1      OPC=nop              
  nop                                              #  29    0xd7306  1      OPC=nop              
  nop                                              #  30    0xd7307  1      OPC=nop              
  nop                                              #  31    0xd7308  1      OPC=nop              
  nop                                              #  32    0xd7309  1      OPC=nop              
  nop                                              #  33    0xd730a  1      OPC=nop              
  nop                                              #  34    0xd730b  1      OPC=nop              
  nop                                              #  35    0xd730c  1      OPC=nop              
  nop                                              #  36    0xd730d  1      OPC=nop              
  nop                                              #  37    0xd730e  1      OPC=nop              
  nop                                              #  38    0xd730f  1      OPC=nop              
  nop                                              #  39    0xd7310  1      OPC=nop              
  nop                                              #  40    0xd7311  1      OPC=nop              
  nop                                              #  41    0xd7312  1      OPC=nop              
  nop                                              #  42    0xd7313  1      OPC=nop              
  nop                                              #  43    0xd7314  1      OPC=nop              
  nop                                              #  44    0xd7315  1      OPC=nop              
  nop                                              #  45    0xd7316  1      OPC=nop              
  nop                                              #  46    0xd7317  1      OPC=nop              
  nop                                              #  47    0xd7318  1      OPC=nop              
  nop                                              #  48    0xd7319  1      OPC=nop              
  nop                                              #  49    0xd731a  1      OPC=nop              
  callq .wmemcmp                                   #  50    0xd731b  5      OPC=callq_label      
  testl %eax, %eax                                 #  51    0xd7320  2      OPC=testl_r32_r32    
  cmovel %r12d, %eax                               #  52    0xd7322  4      OPC=cmovel_r32_r32   
  addl $0x8, %esp                                  #  53    0xd7326  3      OPC=addl_r32_imm8    
  addq %r15, %rsp                                  #  54    0xd7329  3      OPC=addq_r64_r64     
  popq %rbx                                        #  55    0xd732c  1      OPC=popq_r64_1       
  popq %r12                                        #  56    0xd732d  2      OPC=popq_r64_1       
  popq %r11                                        #  57    0xd732f  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d                          #  58    0xd7331  7      OPC=andl_r32_imm32   
  nop                                              #  59    0xd7338  1      OPC=nop              
  nop                                              #  60    0xd7339  1      OPC=nop              
  nop                                              #  61    0xd733a  1      OPC=nop              
  nop                                              #  62    0xd733b  1      OPC=nop              
  addq %r15, %r11                                  #  63    0xd733c  3      OPC=addq_r64_r64     
  jmpq %r11                                        #  64    0xd733f  3      OPC=jmpq_r64         
  nop                                              #  65    0xd7342  1      OPC=nop              
  nop                                              #  66    0xd7343  1      OPC=nop              
  nop                                              #  67    0xd7344  1      OPC=nop              
  nop                                              #  68    0xd7345  1      OPC=nop              
  nop                                              #  69    0xd7346  1      OPC=nop              
.L_d7340:                                          #        0xd7347  0      OPC=<label>          
  movl $0x1003babd, %edi                           #  70    0xd7347  5      OPC=movl_r32_imm32   
  nop                                              #  71    0xd734c  1      OPC=nop              
  nop                                              #  72    0xd734d  1      OPC=nop              
  nop                                              #  73    0xd734e  1      OPC=nop              
  nop                                              #  74    0xd734f  1      OPC=nop              
  nop                                              #  75    0xd7350  1      OPC=nop              
  nop                                              #  76    0xd7351  1      OPC=nop              
  nop                                              #  77    0xd7352  1      OPC=nop              
  nop                                              #  78    0xd7353  1      OPC=nop              
  nop                                              #  79    0xd7354  1      OPC=nop              
  nop                                              #  80    0xd7355  1      OPC=nop              
  nop                                              #  81    0xd7356  1      OPC=nop              
  nop                                              #  82    0xd7357  1      OPC=nop              
  nop                                              #  83    0xd7358  1      OPC=nop              
  nop                                              #  84    0xd7359  1      OPC=nop              
  nop                                              #  85    0xd735a  1      OPC=nop              
  nop                                              #  86    0xd735b  1      OPC=nop              
  nop                                              #  87    0xd735c  1      OPC=nop              
  nop                                              #  88    0xd735d  1      OPC=nop              
  nop                                              #  89    0xd735e  1      OPC=nop              
  nop                                              #  90    0xd735f  1      OPC=nop              
  nop                                              #  91    0xd7360  1      OPC=nop              
  nop                                              #  92    0xd7361  1      OPC=nop              
  callq ._ZSt20__throw_out_of_rangePKc             #  93    0xd7362  5      OPC=callq_label      
                                                                                                 
.size _ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE7compareEjjPKwj

