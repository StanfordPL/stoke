  .text
  .globl __gmpn_bdiv_dbm1c
  .type __gmpn_bdiv_dbm1c, @function

#! file-offset 0x96340
#! rip-offset  0x56340
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_bdiv_dbm1c:          #        0x56340  0      OPC=<label>         
  pushq %r13                 #  1     0x56340  2      OPC=pushq_r64_1     
  testl %edx, %edx           #  2     0x56342  2      OPC=testl_r32_r32   
  movl %edi, %edi            #  3     0x56344  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  4     0x56346  2      OPC=movl_r32_r32    
  pushq %r12                 #  5     0x56348  2      OPC=pushq_r64_1     
  pushq %rbx                 #  6     0x5634a  1      OPC=pushq_r64_1     
  jle .L_56400               #  7     0x5634b  6      OPC=jle_label_1     
  movzwl %cx, %r12d          #  8     0x56351  4      OPC=movzwl_r32_r16  
  xorl %r10d, %r10d          #  9     0x56355  3      OPC=xorl_r32_r32    
  shrl $0x10, %ecx           #  10    0x56358  3      OPC=shrl_r32_imm8   
  nop                        #  11    0x5635b  1      OPC=nop             
  nop                        #  12    0x5635c  1      OPC=nop             
  nop                        #  13    0x5635d  1      OPC=nop             
  nop                        #  14    0x5635e  1      OPC=nop             
  nop                        #  15    0x5635f  1      OPC=nop             
.L_56360:                    #        0x56360  0      OPC=<label>         
  movl %esi, %eax            #  16    0x56360  2      OPC=movl_r32_r32    
  movl %r12d, %ebx           #  17    0x56362  3      OPC=movl_r32_r32    
  movl %r12d, %r11d          #  18    0x56365  3      OPC=movl_r32_r32    
  movl %eax, %eax            #  19    0x56368  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax   #  20    0x5636a  4      OPC=movl_r32_m32    
  movzwl %ax, %r9d           #  21    0x5636e  4      OPC=movzwl_r32_r16  
  shrl $0x10, %eax           #  22    0x56372  3      OPC=shrl_r32_imm8   
  imull %r9d, %ebx           #  23    0x56375  4      OPC=imull_r32_r32   
  imull %eax, %r11d          #  24    0x56379  4      OPC=imull_r32_r32   
  movl %ebx, %r13d           #  25    0x5637d  3      OPC=movl_r32_r32    
  imull %ecx, %r9d           #  26    0x56380  4      OPC=imull_r32_r32   
  shrl $0x10, %r13d          #  27    0x56384  4      OPC=shrl_r32_imm8   
  imull %ecx, %eax           #  28    0x56388  3      OPC=imull_r32_r32   
  leal (%r11,%r9,1), %r9d    #  29    0x5638b  4      OPC=leal_r32_m16    
  addl %r13d, %r9d           #  30    0x5638f  3      OPC=addl_r32_r32    
  leal 0x10000(%rax), %r13d  #  31    0x56392  7      OPC=leal_r32_m16    
  cmpl %r9d, %r11d           #  32    0x56399  3      OPC=cmpl_r32_r32    
  movl %r9d, %r11d           #  33    0x5639c  3      OPC=movl_r32_r32    
  nop                        #  34    0x5639f  1      OPC=nop             
  cmoval %r13d, %eax         #  35    0x563a0  4      OPC=cmoval_r32_r32  
  andl $0xffff, %ebx         #  36    0x563a4  6      OPC=andl_r32_imm32  
  shll $0x10, %r11d          #  37    0x563aa  4      OPC=shll_r32_imm8   
  addl %ebx, %r11d           #  38    0x563ae  3      OPC=addl_r32_r32    
  movl %r8d, %ebx            #  39    0x563b1  3      OPC=movl_r32_r32    
  movl %edi, %r13d           #  40    0x563b4  3      OPC=movl_r32_r32    
  subl %r11d, %ebx           #  41    0x563b7  3      OPC=subl_r32_r32    
  shrl $0x10, %r9d           #  42    0x563ba  4      OPC=shrl_r32_imm8   
  xchgw %ax, %ax             #  43    0x563be  2      OPC=xchgw_ax_r16    
  movl %r13d, %r13d          #  44    0x563c0  3      OPC=movl_r32_r32    
  movl %ebx, (%r15,%r13,1)   #  45    0x563c3  4      OPC=movl_m32_r32    
  subl %r9d, %ebx            #  46    0x563c7  3      OPC=subl_r32_r32    
  cmpl %r11d, %r8d           #  47    0x563ca  3      OPC=cmpl_r32_r32    
  setb %r8b                  #  48    0x563cd  4      OPC=setb_r8         
  addl $0x1, %r10d           #  49    0x563d1  4      OPC=addl_r32_imm8   
  addl $0x4, %esi            #  50    0x563d5  3      OPC=addl_r32_imm8   
  movzbl %r8b, %r8d          #  51    0x563d8  4      OPC=movzbl_r32_r8   
  addl $0x4, %edi            #  52    0x563dc  3      OPC=addl_r32_imm8   
  nop                        #  53    0x563df  1      OPC=nop             
  subl %r8d, %ebx            #  54    0x563e0  3      OPC=subl_r32_r32    
  movl %ebx, %r8d            #  55    0x563e3  3      OPC=movl_r32_r32    
  subl %eax, %r8d            #  56    0x563e6  3      OPC=subl_r32_r32    
  cmpl %edx, %r10d           #  57    0x563e9  3      OPC=cmpl_r32_r32    
  jne .L_56360               #  58    0x563ec  6      OPC=jne_label_1     
  nop                        #  59    0x563f2  1      OPC=nop             
  nop                        #  60    0x563f3  1      OPC=nop             
  nop                        #  61    0x563f4  1      OPC=nop             
  nop                        #  62    0x563f5  1      OPC=nop             
  nop                        #  63    0x563f6  1      OPC=nop             
  nop                        #  64    0x563f7  1      OPC=nop             
  nop                        #  65    0x563f8  1      OPC=nop             
  nop                        #  66    0x563f9  1      OPC=nop             
  nop                        #  67    0x563fa  1      OPC=nop             
  nop                        #  68    0x563fb  1      OPC=nop             
  nop                        #  69    0x563fc  1      OPC=nop             
  nop                        #  70    0x563fd  1      OPC=nop             
  nop                        #  71    0x563fe  1      OPC=nop             
  nop                        #  72    0x563ff  1      OPC=nop             
.L_56400:                    #        0x56400  0      OPC=<label>         
  popq %rbx                  #  73    0x56400  1      OPC=popq_r64_1      
  popq %r12                  #  74    0x56401  2      OPC=popq_r64_1      
  popq %r13                  #  75    0x56403  2      OPC=popq_r64_1      
  popq %r11                  #  76    0x56405  2      OPC=popq_r64_1      
  movl %r8d, %eax            #  77    0x56407  3      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d    #  78    0x5640a  7      OPC=andl_r32_imm32  
  nop                        #  79    0x56411  1      OPC=nop             
  nop                        #  80    0x56412  1      OPC=nop             
  nop                        #  81    0x56413  1      OPC=nop             
  nop                        #  82    0x56414  1      OPC=nop             
  addq %r15, %r11            #  83    0x56415  3      OPC=addq_r64_r64    
  jmpq %r11                  #  84    0x56418  3      OPC=jmpq_r64        
  nop                        #  85    0x5641b  1      OPC=nop             
  nop                        #  86    0x5641c  1      OPC=nop             
  nop                        #  87    0x5641d  1      OPC=nop             
  nop                        #  88    0x5641e  1      OPC=nop             
  nop                        #  89    0x5641f  1      OPC=nop             
  nop                        #  90    0x56420  1      OPC=nop             
  nop                        #  91    0x56421  1      OPC=nop             
  nop                        #  92    0x56422  1      OPC=nop             
  nop                        #  93    0x56423  1      OPC=nop             
  nop                        #  94    0x56424  1      OPC=nop             
  nop                        #  95    0x56425  1      OPC=nop             
  nop                        #  96    0x56426  1      OPC=nop             
                                                                          
.size __gmpn_bdiv_dbm1c, .-__gmpn_bdiv_dbm1c

