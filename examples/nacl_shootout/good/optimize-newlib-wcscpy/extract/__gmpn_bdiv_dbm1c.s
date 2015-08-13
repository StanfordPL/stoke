  .text
  .globl __gmpn_bdiv_dbm1c
  .type __gmpn_bdiv_dbm1c, @function

#! file-offset 0x95920
#! rip-offset  0x55920
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_bdiv_dbm1c:          #        0x55920  0      OPC=<label>         
  pushq %r13                 #  1     0x55920  2      OPC=pushq_r64_1     
  testl %edx, %edx           #  2     0x55922  2      OPC=testl_r32_r32   
  movl %edi, %edi            #  3     0x55924  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  4     0x55926  2      OPC=movl_r32_r32    
  pushq %r12                 #  5     0x55928  2      OPC=pushq_r64_1     
  pushq %rbx                 #  6     0x5592a  1      OPC=pushq_r64_1     
  jle .L_559e0               #  7     0x5592b  6      OPC=jle_label_1     
  movzwl %cx, %r12d          #  8     0x55931  4      OPC=movzwl_r32_r16  
  xorl %r10d, %r10d          #  9     0x55935  3      OPC=xorl_r32_r32    
  shrl $0x10, %ecx           #  10    0x55938  3      OPC=shrl_r32_imm8   
  nop                        #  11    0x5593b  1      OPC=nop             
  nop                        #  12    0x5593c  1      OPC=nop             
  nop                        #  13    0x5593d  1      OPC=nop             
  nop                        #  14    0x5593e  1      OPC=nop             
  nop                        #  15    0x5593f  1      OPC=nop             
.L_55940:                    #        0x55940  0      OPC=<label>         
  movl %esi, %eax            #  16    0x55940  2      OPC=movl_r32_r32    
  movl %r12d, %ebx           #  17    0x55942  3      OPC=movl_r32_r32    
  movl %r12d, %r11d          #  18    0x55945  3      OPC=movl_r32_r32    
  movl %eax, %eax            #  19    0x55948  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax   #  20    0x5594a  4      OPC=movl_r32_m32    
  movzwl %ax, %r9d           #  21    0x5594e  4      OPC=movzwl_r32_r16  
  shrl $0x10, %eax           #  22    0x55952  3      OPC=shrl_r32_imm8   
  imull %r9d, %ebx           #  23    0x55955  4      OPC=imull_r32_r32   
  imull %eax, %r11d          #  24    0x55959  4      OPC=imull_r32_r32   
  movl %ebx, %r13d           #  25    0x5595d  3      OPC=movl_r32_r32    
  imull %ecx, %r9d           #  26    0x55960  4      OPC=imull_r32_r32   
  shrl $0x10, %r13d          #  27    0x55964  4      OPC=shrl_r32_imm8   
  imull %ecx, %eax           #  28    0x55968  3      OPC=imull_r32_r32   
  leal (%r11,%r9,1), %r9d    #  29    0x5596b  4      OPC=leal_r32_m16    
  addl %r13d, %r9d           #  30    0x5596f  3      OPC=addl_r32_r32    
  leal 0x10000(%rax), %r13d  #  31    0x55972  7      OPC=leal_r32_m16    
  cmpl %r9d, %r11d           #  32    0x55979  3      OPC=cmpl_r32_r32    
  movl %r9d, %r11d           #  33    0x5597c  3      OPC=movl_r32_r32    
  nop                        #  34    0x5597f  1      OPC=nop             
  cmoval %r13d, %eax         #  35    0x55980  4      OPC=cmoval_r32_r32  
  andl $0xffff, %ebx         #  36    0x55984  6      OPC=andl_r32_imm32  
  shll $0x10, %r11d          #  37    0x5598a  4      OPC=shll_r32_imm8   
  addl %ebx, %r11d           #  38    0x5598e  3      OPC=addl_r32_r32    
  movl %r8d, %ebx            #  39    0x55991  3      OPC=movl_r32_r32    
  movl %edi, %r13d           #  40    0x55994  3      OPC=movl_r32_r32    
  subl %r11d, %ebx           #  41    0x55997  3      OPC=subl_r32_r32    
  shrl $0x10, %r9d           #  42    0x5599a  4      OPC=shrl_r32_imm8   
  xchgw %ax, %ax             #  43    0x5599e  2      OPC=xchgw_ax_r16    
  movl %r13d, %r13d          #  44    0x559a0  3      OPC=movl_r32_r32    
  movl %ebx, (%r15,%r13,1)   #  45    0x559a3  4      OPC=movl_m32_r32    
  subl %r9d, %ebx            #  46    0x559a7  3      OPC=subl_r32_r32    
  cmpl %r11d, %r8d           #  47    0x559aa  3      OPC=cmpl_r32_r32    
  setb %r8b                  #  48    0x559ad  4      OPC=setb_r8         
  addl $0x1, %r10d           #  49    0x559b1  4      OPC=addl_r32_imm8   
  addl $0x4, %esi            #  50    0x559b5  3      OPC=addl_r32_imm8   
  movzbl %r8b, %r8d          #  51    0x559b8  4      OPC=movzbl_r32_r8   
  addl $0x4, %edi            #  52    0x559bc  3      OPC=addl_r32_imm8   
  nop                        #  53    0x559bf  1      OPC=nop             
  subl %r8d, %ebx            #  54    0x559c0  3      OPC=subl_r32_r32    
  movl %ebx, %r8d            #  55    0x559c3  3      OPC=movl_r32_r32    
  subl %eax, %r8d            #  56    0x559c6  3      OPC=subl_r32_r32    
  cmpl %edx, %r10d           #  57    0x559c9  3      OPC=cmpl_r32_r32    
  jne .L_55940               #  58    0x559cc  6      OPC=jne_label_1     
  nop                        #  59    0x559d2  1      OPC=nop             
  nop                        #  60    0x559d3  1      OPC=nop             
  nop                        #  61    0x559d4  1      OPC=nop             
  nop                        #  62    0x559d5  1      OPC=nop             
  nop                        #  63    0x559d6  1      OPC=nop             
  nop                        #  64    0x559d7  1      OPC=nop             
  nop                        #  65    0x559d8  1      OPC=nop             
  nop                        #  66    0x559d9  1      OPC=nop             
  nop                        #  67    0x559da  1      OPC=nop             
  nop                        #  68    0x559db  1      OPC=nop             
  nop                        #  69    0x559dc  1      OPC=nop             
  nop                        #  70    0x559dd  1      OPC=nop             
  nop                        #  71    0x559de  1      OPC=nop             
  nop                        #  72    0x559df  1      OPC=nop             
.L_559e0:                    #        0x559e0  0      OPC=<label>         
  popq %rbx                  #  73    0x559e0  1      OPC=popq_r64_1      
  popq %r12                  #  74    0x559e1  2      OPC=popq_r64_1      
  popq %r13                  #  75    0x559e3  2      OPC=popq_r64_1      
  popq %r11                  #  76    0x559e5  2      OPC=popq_r64_1      
  movl %r8d, %eax            #  77    0x559e7  3      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d    #  78    0x559ea  7      OPC=andl_r32_imm32  
  nop                        #  79    0x559f1  1      OPC=nop             
  nop                        #  80    0x559f2  1      OPC=nop             
  nop                        #  81    0x559f3  1      OPC=nop             
  nop                        #  82    0x559f4  1      OPC=nop             
  addq %r15, %r11            #  83    0x559f5  3      OPC=addq_r64_r64    
  jmpq %r11                  #  84    0x559f8  3      OPC=jmpq_r64        
  nop                        #  85    0x559fb  1      OPC=nop             
  nop                        #  86    0x559fc  1      OPC=nop             
  nop                        #  87    0x559fd  1      OPC=nop             
  nop                        #  88    0x559fe  1      OPC=nop             
  nop                        #  89    0x559ff  1      OPC=nop             
  nop                        #  90    0x55a00  1      OPC=nop             
  nop                        #  91    0x55a01  1      OPC=nop             
  nop                        #  92    0x55a02  1      OPC=nop             
  nop                        #  93    0x55a03  1      OPC=nop             
  nop                        #  94    0x55a04  1      OPC=nop             
  nop                        #  95    0x55a05  1      OPC=nop             
  nop                        #  96    0x55a06  1      OPC=nop             
                                                                          
.size __gmpn_bdiv_dbm1c, .-__gmpn_bdiv_dbm1c

