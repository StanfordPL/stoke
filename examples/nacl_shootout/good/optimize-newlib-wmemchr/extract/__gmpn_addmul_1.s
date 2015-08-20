  .text
  .globl __gmpn_addmul_1
  .type __gmpn_addmul_1, @function

#! file-offset 0x72ae0
#! rip-offset  0x32ae0
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_addmul_1:            #        0x32ae0  0      OPC=<label>         
  pushq %r12                 #  1     0x32ae0  2      OPC=pushq_r64_1     
  movl %esi, %esi            #  2     0x32ae2  2      OPC=movl_r32_r32    
  movl %edi, %edi            #  3     0x32ae4  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  4     0x32ae6  2      OPC=xorl_r32_r32    
  pushq %rbx                 #  5     0x32ae8  1      OPC=pushq_r64_1     
  movzwl %cx, %ebx           #  6     0x32ae9  3      OPC=movzwl_r32_r16  
  movl %esi, %esi            #  7     0x32aec  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d   #  8     0x32aee  4      OPC=movl_r32_m32    
  shrl $0x10, %ecx           #  9     0x32af2  3      OPC=shrl_r32_imm8   
  jmpq .L_32b20              #  10    0x32af5  2      OPC=jmpq_label      
  nop                        #  11    0x32af7  1      OPC=nop             
  nop                        #  12    0x32af8  1      OPC=nop             
  nop                        #  13    0x32af9  1      OPC=nop             
  nop                        #  14    0x32afa  1      OPC=nop             
  nop                        #  15    0x32afb  1      OPC=nop             
  nop                        #  16    0x32afc  1      OPC=nop             
  nop                        #  17    0x32afd  1      OPC=nop             
  nop                        #  18    0x32afe  1      OPC=nop             
  nop                        #  19    0x32aff  1      OPC=nop             
.L_32b00:                    #        0x32b00  0      OPC=<label>         
  addl $0x4, %esi            #  20    0x32b00  3      OPC=addl_r32_imm8   
  addl $0x4, %edi            #  21    0x32b03  3      OPC=addl_r32_imm8   
  movl %esi, %esi            #  22    0x32b06  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d   #  23    0x32b08  4      OPC=movl_r32_m32    
  nop                        #  24    0x32b0c  1      OPC=nop             
  nop                        #  25    0x32b0d  1      OPC=nop             
  nop                        #  26    0x32b0e  1      OPC=nop             
  nop                        #  27    0x32b0f  1      OPC=nop             
  nop                        #  28    0x32b10  1      OPC=nop             
  nop                        #  29    0x32b11  1      OPC=nop             
  nop                        #  30    0x32b12  1      OPC=nop             
  nop                        #  31    0x32b13  1      OPC=nop             
  nop                        #  32    0x32b14  1      OPC=nop             
  nop                        #  33    0x32b15  1      OPC=nop             
  nop                        #  34    0x32b16  1      OPC=nop             
  nop                        #  35    0x32b17  1      OPC=nop             
  nop                        #  36    0x32b18  1      OPC=nop             
  nop                        #  37    0x32b19  1      OPC=nop             
  nop                        #  38    0x32b1a  1      OPC=nop             
  nop                        #  39    0x32b1b  1      OPC=nop             
  nop                        #  40    0x32b1c  1      OPC=nop             
  nop                        #  41    0x32b1d  1      OPC=nop             
  nop                        #  42    0x32b1e  1      OPC=nop             
  nop                        #  43    0x32b1f  1      OPC=nop             
.L_32b20:                    #        0x32b20  0      OPC=<label>         
  movzwl %r8w, %r10d         #  44    0x32b20  4      OPC=movzwl_r32_r16  
  shrl $0x10, %r8d           #  45    0x32b24  4      OPC=shrl_r32_imm8   
  movl %r10d, %r9d           #  46    0x32b28  3      OPC=movl_r32_r32    
  movl %r8d, %r11d           #  47    0x32b2b  3      OPC=movl_r32_r32    
  imull %ebx, %r9d           #  48    0x32b2e  4      OPC=imull_r32_r32   
  imull %ebx, %r11d          #  49    0x32b32  4      OPC=imull_r32_r32   
  movl %r9d, %r12d           #  50    0x32b36  3      OPC=movl_r32_r32    
  imull %ecx, %r10d          #  51    0x32b39  4      OPC=imull_r32_r32   
  nop                        #  52    0x32b3d  1      OPC=nop             
  nop                        #  53    0x32b3e  1      OPC=nop             
  nop                        #  54    0x32b3f  1      OPC=nop             
  shrl $0x10, %r12d          #  55    0x32b40  4      OPC=shrl_r32_imm8   
  imull %ecx, %r8d           #  56    0x32b44  4      OPC=imull_r32_r32   
  leal (%r11,%r10,1), %r10d  #  57    0x32b48  4      OPC=leal_r32_m16    
  addl %r12d, %r10d          #  58    0x32b4c  3      OPC=addl_r32_r32    
  leal 0x10000(%r8), %r12d   #  59    0x32b4f  7      OPC=leal_r32_m16    
  cmpl %r10d, %r11d          #  60    0x32b56  3      OPC=cmpl_r32_r32    
  movl %r10d, %r11d          #  61    0x32b59  3      OPC=movl_r32_r32    
  cmoval %r12d, %r8d         #  62    0x32b5c  4      OPC=cmoval_r32_r32  
  andl $0xffff, %r9d         #  63    0x32b60  7      OPC=andl_r32_imm32  
  shll $0x10, %r11d          #  64    0x32b67  4      OPC=shll_r32_imm8   
  addl %eax, %r9d            #  65    0x32b6b  3      OPC=addl_r32_r32    
  addl %r11d, %r9d           #  66    0x32b6e  3      OPC=addl_r32_r32    
  cmpl %eax, %r9d            #  67    0x32b71  3      OPC=cmpl_r32_r32    
  setb %al                   #  68    0x32b74  3      OPC=setb_r8         
  shrl $0x10, %r10d          #  69    0x32b77  4      OPC=shrl_r32_imm8   
  movzbl %al, %eax           #  70    0x32b7b  3      OPC=movzbl_r32_r8   
  xchgw %ax, %ax             #  71    0x32b7e  2      OPC=xchgw_ax_r16    
  addl %r10d, %eax           #  72    0x32b80  3      OPC=addl_r32_r32    
  movl %edi, %edi            #  73    0x32b83  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %r9d   #  74    0x32b85  4      OPC=addl_r32_m32    
  setb %r11b                 #  75    0x32b89  4      OPC=setb_r8         
  movl %edi, %edi            #  76    0x32b8d  2      OPC=movl_r32_r32    
  movl %r9d, (%r15,%rdi,1)   #  77    0x32b8f  4      OPC=movl_m32_r32    
  movzbl %r11b, %r11d        #  78    0x32b93  4      OPC=movzbl_r32_r8   
  addl %r11d, %eax           #  79    0x32b97  3      OPC=addl_r32_r32    
  addl %r8d, %eax            #  80    0x32b9a  3      OPC=addl_r32_r32    
  subl $0x1, %edx            #  81    0x32b9d  3      OPC=subl_r32_imm8   
  jne .L_32b00               #  82    0x32ba0  6      OPC=jne_label_1     
  popq %rbx                  #  83    0x32ba6  1      OPC=popq_r64_1      
  popq %r12                  #  84    0x32ba7  2      OPC=popq_r64_1      
  popq %r11                  #  85    0x32ba9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  86    0x32bab  7      OPC=andl_r32_imm32  
  nop                        #  87    0x32bb2  1      OPC=nop             
  nop                        #  88    0x32bb3  1      OPC=nop             
  nop                        #  89    0x32bb4  1      OPC=nop             
  nop                        #  90    0x32bb5  1      OPC=nop             
  addq %r15, %r11            #  91    0x32bb6  3      OPC=addq_r64_r64    
  jmpq %r11                  #  92    0x32bb9  3      OPC=jmpq_r64        
  nop                        #  93    0x32bbc  1      OPC=nop             
  nop                        #  94    0x32bbd  1      OPC=nop             
  nop                        #  95    0x32bbe  1      OPC=nop             
  nop                        #  96    0x32bbf  1      OPC=nop             
  nop                        #  97    0x32bc0  1      OPC=nop             
  nop                        #  98    0x32bc1  1      OPC=nop             
  nop                        #  99    0x32bc2  1      OPC=nop             
  nop                        #  100   0x32bc3  1      OPC=nop             
  nop                        #  101   0x32bc4  1      OPC=nop             
  nop                        #  102   0x32bc5  1      OPC=nop             
  nop                        #  103   0x32bc6  1      OPC=nop             
                                                                          
.size __gmpn_addmul_1, .-__gmpn_addmul_1

