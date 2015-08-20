  .text
  .globl __gmpn_bdiv_dbm1c
  .type __gmpn_bdiv_dbm1c, @function

#! file-offset 0x95c20
#! rip-offset  0x55c20
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_bdiv_dbm1c:          #        0x55c20  0      OPC=<label>         
  pushq %r13                 #  1     0x55c20  2      OPC=pushq_r64_1     
  testl %edx, %edx           #  2     0x55c22  2      OPC=testl_r32_r32   
  movl %edi, %edi            #  3     0x55c24  2      OPC=movl_r32_r32    
  movl %esi, %esi            #  4     0x55c26  2      OPC=movl_r32_r32    
  pushq %r12                 #  5     0x55c28  2      OPC=pushq_r64_1     
  pushq %rbx                 #  6     0x55c2a  1      OPC=pushq_r64_1     
  jle .L_55ce0               #  7     0x55c2b  6      OPC=jle_label_1     
  movzwl %cx, %r12d          #  8     0x55c31  4      OPC=movzwl_r32_r16  
  xorl %r10d, %r10d          #  9     0x55c35  3      OPC=xorl_r32_r32    
  shrl $0x10, %ecx           #  10    0x55c38  3      OPC=shrl_r32_imm8   
  nop                        #  11    0x55c3b  1      OPC=nop             
  nop                        #  12    0x55c3c  1      OPC=nop             
  nop                        #  13    0x55c3d  1      OPC=nop             
  nop                        #  14    0x55c3e  1      OPC=nop             
  nop                        #  15    0x55c3f  1      OPC=nop             
.L_55c40:                    #        0x55c40  0      OPC=<label>         
  movl %esi, %eax            #  16    0x55c40  2      OPC=movl_r32_r32    
  movl %r12d, %ebx           #  17    0x55c42  3      OPC=movl_r32_r32    
  movl %r12d, %r11d          #  18    0x55c45  3      OPC=movl_r32_r32    
  movl %eax, %eax            #  19    0x55c48  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax   #  20    0x55c4a  4      OPC=movl_r32_m32    
  movzwl %ax, %r9d           #  21    0x55c4e  4      OPC=movzwl_r32_r16  
  shrl $0x10, %eax           #  22    0x55c52  3      OPC=shrl_r32_imm8   
  imull %r9d, %ebx           #  23    0x55c55  4      OPC=imull_r32_r32   
  imull %eax, %r11d          #  24    0x55c59  4      OPC=imull_r32_r32   
  movl %ebx, %r13d           #  25    0x55c5d  3      OPC=movl_r32_r32    
  imull %ecx, %r9d           #  26    0x55c60  4      OPC=imull_r32_r32   
  shrl $0x10, %r13d          #  27    0x55c64  4      OPC=shrl_r32_imm8   
  imull %ecx, %eax           #  28    0x55c68  3      OPC=imull_r32_r32   
  leal (%r11,%r9,1), %r9d    #  29    0x55c6b  4      OPC=leal_r32_m16    
  addl %r13d, %r9d           #  30    0x55c6f  3      OPC=addl_r32_r32    
  leal 0x10000(%rax), %r13d  #  31    0x55c72  7      OPC=leal_r32_m16    
  cmpl %r9d, %r11d           #  32    0x55c79  3      OPC=cmpl_r32_r32    
  movl %r9d, %r11d           #  33    0x55c7c  3      OPC=movl_r32_r32    
  nop                        #  34    0x55c7f  1      OPC=nop             
  cmoval %r13d, %eax         #  35    0x55c80  4      OPC=cmoval_r32_r32  
  andl $0xffff, %ebx         #  36    0x55c84  6      OPC=andl_r32_imm32  
  shll $0x10, %r11d          #  37    0x55c8a  4      OPC=shll_r32_imm8   
  addl %ebx, %r11d           #  38    0x55c8e  3      OPC=addl_r32_r32    
  movl %r8d, %ebx            #  39    0x55c91  3      OPC=movl_r32_r32    
  movl %edi, %r13d           #  40    0x55c94  3      OPC=movl_r32_r32    
  subl %r11d, %ebx           #  41    0x55c97  3      OPC=subl_r32_r32    
  shrl $0x10, %r9d           #  42    0x55c9a  4      OPC=shrl_r32_imm8   
  xchgw %ax, %ax             #  43    0x55c9e  2      OPC=xchgw_ax_r16    
  movl %r13d, %r13d          #  44    0x55ca0  3      OPC=movl_r32_r32    
  movl %ebx, (%r15,%r13,1)   #  45    0x55ca3  4      OPC=movl_m32_r32    
  subl %r9d, %ebx            #  46    0x55ca7  3      OPC=subl_r32_r32    
  cmpl %r11d, %r8d           #  47    0x55caa  3      OPC=cmpl_r32_r32    
  setb %r8b                  #  48    0x55cad  4      OPC=setb_r8         
  addl $0x1, %r10d           #  49    0x55cb1  4      OPC=addl_r32_imm8   
  addl $0x4, %esi            #  50    0x55cb5  3      OPC=addl_r32_imm8   
  movzbl %r8b, %r8d          #  51    0x55cb8  4      OPC=movzbl_r32_r8   
  addl $0x4, %edi            #  52    0x55cbc  3      OPC=addl_r32_imm8   
  nop                        #  53    0x55cbf  1      OPC=nop             
  subl %r8d, %ebx            #  54    0x55cc0  3      OPC=subl_r32_r32    
  movl %ebx, %r8d            #  55    0x55cc3  3      OPC=movl_r32_r32    
  subl %eax, %r8d            #  56    0x55cc6  3      OPC=subl_r32_r32    
  cmpl %edx, %r10d           #  57    0x55cc9  3      OPC=cmpl_r32_r32    
  jne .L_55c40               #  58    0x55ccc  6      OPC=jne_label_1     
  nop                        #  59    0x55cd2  1      OPC=nop             
  nop                        #  60    0x55cd3  1      OPC=nop             
  nop                        #  61    0x55cd4  1      OPC=nop             
  nop                        #  62    0x55cd5  1      OPC=nop             
  nop                        #  63    0x55cd6  1      OPC=nop             
  nop                        #  64    0x55cd7  1      OPC=nop             
  nop                        #  65    0x55cd8  1      OPC=nop             
  nop                        #  66    0x55cd9  1      OPC=nop             
  nop                        #  67    0x55cda  1      OPC=nop             
  nop                        #  68    0x55cdb  1      OPC=nop             
  nop                        #  69    0x55cdc  1      OPC=nop             
  nop                        #  70    0x55cdd  1      OPC=nop             
  nop                        #  71    0x55cde  1      OPC=nop             
  nop                        #  72    0x55cdf  1      OPC=nop             
.L_55ce0:                    #        0x55ce0  0      OPC=<label>         
  popq %rbx                  #  73    0x55ce0  1      OPC=popq_r64_1      
  popq %r12                  #  74    0x55ce1  2      OPC=popq_r64_1      
  popq %r13                  #  75    0x55ce3  2      OPC=popq_r64_1      
  popq %r11                  #  76    0x55ce5  2      OPC=popq_r64_1      
  movl %r8d, %eax            #  77    0x55ce7  3      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d    #  78    0x55cea  7      OPC=andl_r32_imm32  
  nop                        #  79    0x55cf1  1      OPC=nop             
  nop                        #  80    0x55cf2  1      OPC=nop             
  nop                        #  81    0x55cf3  1      OPC=nop             
  nop                        #  82    0x55cf4  1      OPC=nop             
  addq %r15, %r11            #  83    0x55cf5  3      OPC=addq_r64_r64    
  jmpq %r11                  #  84    0x55cf8  3      OPC=jmpq_r64        
  nop                        #  85    0x55cfb  1      OPC=nop             
  nop                        #  86    0x55cfc  1      OPC=nop             
  nop                        #  87    0x55cfd  1      OPC=nop             
  nop                        #  88    0x55cfe  1      OPC=nop             
  nop                        #  89    0x55cff  1      OPC=nop             
  nop                        #  90    0x55d00  1      OPC=nop             
  nop                        #  91    0x55d01  1      OPC=nop             
  nop                        #  92    0x55d02  1      OPC=nop             
  nop                        #  93    0x55d03  1      OPC=nop             
  nop                        #  94    0x55d04  1      OPC=nop             
  nop                        #  95    0x55d05  1      OPC=nop             
  nop                        #  96    0x55d06  1      OPC=nop             
                                                                          
.size __gmpn_bdiv_dbm1c, .-__gmpn_bdiv_dbm1c

