  .text
  .globl __gmpn_submul_1
  .type __gmpn_submul_1, @function

#! file-offset 0x72bc0
#! rip-offset  0x32bc0
#! capacity    224 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.__gmpn_submul_1:           #        0x32bc0  0      OPC=<label>         
  pushq %r12                #  1     0x32bc0  2      OPC=pushq_r64_1     
  movl %esi, %esi           #  2     0x32bc2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0x32bc4  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  4     0x32bc6  2      OPC=xorl_r32_r32    
  pushq %rbx                #  5     0x32bc8  1      OPC=pushq_r64_1     
  movzwl %cx, %ebx          #  6     0x32bc9  3      OPC=movzwl_r32_r16  
  movl %esi, %esi           #  7     0x32bcc  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d  #  8     0x32bce  4      OPC=movl_r32_m32    
  shrl $0x10, %ecx          #  9     0x32bd2  3      OPC=shrl_r32_imm8   
  jmpq .L_32c00             #  10    0x32bd5  2      OPC=jmpq_label      
  nop                       #  11    0x32bd7  1      OPC=nop             
  nop                       #  12    0x32bd8  1      OPC=nop             
  nop                       #  13    0x32bd9  1      OPC=nop             
  nop                       #  14    0x32bda  1      OPC=nop             
  nop                       #  15    0x32bdb  1      OPC=nop             
  nop                       #  16    0x32bdc  1      OPC=nop             
  nop                       #  17    0x32bdd  1      OPC=nop             
  nop                       #  18    0x32bde  1      OPC=nop             
  nop                       #  19    0x32bdf  1      OPC=nop             
.L_32be0:                   #        0x32be0  0      OPC=<label>         
  addl $0x4, %esi           #  20    0x32be0  3      OPC=addl_r32_imm8   
  addl $0x4, %edi           #  21    0x32be3  3      OPC=addl_r32_imm8   
  movl %esi, %esi           #  22    0x32be6  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d  #  23    0x32be8  4      OPC=movl_r32_m32    
  nop                       #  24    0x32bec  1      OPC=nop             
  nop                       #  25    0x32bed  1      OPC=nop             
  nop                       #  26    0x32bee  1      OPC=nop             
  nop                       #  27    0x32bef  1      OPC=nop             
  nop                       #  28    0x32bf0  1      OPC=nop             
  nop                       #  29    0x32bf1  1      OPC=nop             
  nop                       #  30    0x32bf2  1      OPC=nop             
  nop                       #  31    0x32bf3  1      OPC=nop             
  nop                       #  32    0x32bf4  1      OPC=nop             
  nop                       #  33    0x32bf5  1      OPC=nop             
  nop                       #  34    0x32bf6  1      OPC=nop             
  nop                       #  35    0x32bf7  1      OPC=nop             
  nop                       #  36    0x32bf8  1      OPC=nop             
  nop                       #  37    0x32bf9  1      OPC=nop             
  nop                       #  38    0x32bfa  1      OPC=nop             
  nop                       #  39    0x32bfb  1      OPC=nop             
  nop                       #  40    0x32bfc  1      OPC=nop             
  nop                       #  41    0x32bfd  1      OPC=nop             
  nop                       #  42    0x32bfe  1      OPC=nop             
  nop                       #  43    0x32bff  1      OPC=nop             
.L_32c00:                   #        0x32c00  0      OPC=<label>         
  movzwl %r8w, %r11d        #  44    0x32c00  4      OPC=movzwl_r32_r16  
  shrl $0x10, %r8d          #  45    0x32c04  4      OPC=shrl_r32_imm8   
  movl %r11d, %r10d         #  46    0x32c08  3      OPC=movl_r32_r32    
  movl %r8d, %r9d           #  47    0x32c0b  3      OPC=movl_r32_r32    
  imull %ebx, %r10d         #  48    0x32c0e  4      OPC=imull_r32_r32   
  imull %ebx, %r9d          #  49    0x32c12  4      OPC=imull_r32_r32   
  movl %r10d, %r12d         #  50    0x32c16  3      OPC=movl_r32_r32    
  imull %ecx, %r11d         #  51    0x32c19  4      OPC=imull_r32_r32   
  nop                       #  52    0x32c1d  1      OPC=nop             
  nop                       #  53    0x32c1e  1      OPC=nop             
  nop                       #  54    0x32c1f  1      OPC=nop             
  shrl $0x10, %r12d         #  55    0x32c20  4      OPC=shrl_r32_imm8   
  imull %ecx, %r8d          #  56    0x32c24  4      OPC=imull_r32_r32   
  leal (%r9,%r11,1), %r11d  #  57    0x32c28  4      OPC=leal_r32_m16    
  addl %r12d, %r11d         #  58    0x32c2c  3      OPC=addl_r32_r32    
  leal 0x10000(%r8), %r12d  #  59    0x32c2f  7      OPC=leal_r32_m16    
  cmpl %r11d, %r9d          #  60    0x32c36  3      OPC=cmpl_r32_r32    
  movl %r11d, %r9d          #  61    0x32c39  3      OPC=movl_r32_r32    
  cmoval %r12d, %r8d        #  62    0x32c3c  4      OPC=cmoval_r32_r32  
  andl $0xffff, %r10d       #  63    0x32c40  7      OPC=andl_r32_imm32  
  shll $0x10, %r9d          #  64    0x32c47  4      OPC=shll_r32_imm8   
  addl %eax, %r10d          #  65    0x32c4b  3      OPC=addl_r32_r32    
  addl %r9d, %r10d          #  66    0x32c4e  3      OPC=addl_r32_r32    
  movl %edi, %edi           #  67    0x32c51  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r9d  #  68    0x32c53  4      OPC=movl_r32_m32    
  cmpl %eax, %r10d          #  69    0x32c57  3      OPC=cmpl_r32_r32    
  setb %al                  #  70    0x32c5a  3      OPC=setb_r8         
  nop                       #  71    0x32c5d  1      OPC=nop             
  nop                       #  72    0x32c5e  1      OPC=nop             
  nop                       #  73    0x32c5f  1      OPC=nop             
  shrl $0x10, %r11d         #  74    0x32c60  4      OPC=shrl_r32_imm8   
  movzbl %al, %eax          #  75    0x32c64  3      OPC=movzbl_r32_r8   
  addl %r11d, %eax          #  76    0x32c67  3      OPC=addl_r32_r32    
  subl %r10d, %r9d          #  77    0x32c6a  3      OPC=subl_r32_r32    
  setb %r10b                #  78    0x32c6d  4      OPC=setb_r8         
  movl %edi, %edi           #  79    0x32c71  2      OPC=movl_r32_r32    
  movl %r9d, (%r15,%rdi,1)  #  80    0x32c73  4      OPC=movl_m32_r32    
  movzbl %r10b, %r10d       #  81    0x32c77  4      OPC=movzbl_r32_r8   
  addl %r10d, %eax          #  82    0x32c7b  3      OPC=addl_r32_r32    
  xchgw %ax, %ax            #  83    0x32c7e  2      OPC=xchgw_ax_r16    
  addl %r8d, %eax           #  84    0x32c80  3      OPC=addl_r32_r32    
  subl $0x1, %edx           #  85    0x32c83  3      OPC=subl_r32_imm8   
  jne .L_32be0              #  86    0x32c86  6      OPC=jne_label_1     
  popq %rbx                 #  87    0x32c8c  1      OPC=popq_r64_1      
  popq %r12                 #  88    0x32c8d  2      OPC=popq_r64_1      
  popq %r11                 #  89    0x32c8f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  90    0x32c91  7      OPC=andl_r32_imm32  
  nop                       #  91    0x32c98  1      OPC=nop             
  nop                       #  92    0x32c99  1      OPC=nop             
  nop                       #  93    0x32c9a  1      OPC=nop             
  nop                       #  94    0x32c9b  1      OPC=nop             
  addq %r15, %r11           #  95    0x32c9c  3      OPC=addq_r64_r64    
  jmpq %r11                 #  96    0x32c9f  3      OPC=jmpq_r64        
  nop                       #  97    0x32ca2  1      OPC=nop             
  nop                       #  98    0x32ca3  1      OPC=nop             
  nop                       #  99    0x32ca4  1      OPC=nop             
  nop                       #  100   0x32ca5  1      OPC=nop             
  nop                       #  101   0x32ca6  1      OPC=nop             
                                                                         
.size __gmpn_submul_1, .-__gmpn_submul_1

