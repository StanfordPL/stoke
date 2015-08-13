  .text
  .globl __gmpn_bc_mulmod_bnm1
  .type __gmpn_bc_mulmod_bnm1, @function

#! file-offset 0x92c60
#! rip-offset  0x52c60
#! capacity    192 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.__gmpn_bc_mulmod_bnm1:     #        0x52c60  0      OPC=<label>         
  movq %r13, -0x8(%rsp)     #  1     0x52c60  5      OPC=movq_m64_r64    
  movl %r8d, %r13d          #  2     0x52c65  3      OPC=movl_r32_r32    
  movq %rbx, -0x18(%rsp)    #  3     0x52c68  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)    #  4     0x52c6d  5      OPC=movq_m64_r64    
  movl %edi, %ebx           #  5     0x52c72  2      OPC=movl_r32_r32    
  subl $0x18, %esp          #  6     0x52c74  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  7     0x52c77  3      OPC=addq_r64_r64    
  movl %ecx, %r12d          #  8     0x52c7a  3      OPC=movl_r32_r32    
  movl %esi, %esi           #  9     0x52c7d  2      OPC=movl_r32_r32    
  nop                       #  10    0x52c7f  1      OPC=nop             
  movl %edx, %edx           #  11    0x52c80  2      OPC=movl_r32_r32    
  movl %r13d, %edi          #  12    0x52c82  3      OPC=movl_r32_r32    
  nop                       #  13    0x52c85  1      OPC=nop             
  nop                       #  14    0x52c86  1      OPC=nop             
  nop                       #  15    0x52c87  1      OPC=nop             
  nop                       #  16    0x52c88  1      OPC=nop             
  nop                       #  17    0x52c89  1      OPC=nop             
  nop                       #  18    0x52c8a  1      OPC=nop             
  nop                       #  19    0x52c8b  1      OPC=nop             
  nop                       #  20    0x52c8c  1      OPC=nop             
  nop                       #  21    0x52c8d  1      OPC=nop             
  nop                       #  22    0x52c8e  1      OPC=nop             
  nop                       #  23    0x52c8f  1      OPC=nop             
  nop                       #  24    0x52c90  1      OPC=nop             
  nop                       #  25    0x52c91  1      OPC=nop             
  nop                       #  26    0x52c92  1      OPC=nop             
  nop                       #  27    0x52c93  1      OPC=nop             
  nop                       #  28    0x52c94  1      OPC=nop             
  nop                       #  29    0x52c95  1      OPC=nop             
  nop                       #  30    0x52c96  1      OPC=nop             
  nop                       #  31    0x52c97  1      OPC=nop             
  nop                       #  32    0x52c98  1      OPC=nop             
  nop                       #  33    0x52c99  1      OPC=nop             
  nop                       #  34    0x52c9a  1      OPC=nop             
  callq .__gmpn_mul_n       #  35    0x52c9b  5      OPC=callq_label     
  leal (%r13,%r12,4), %edx  #  36    0x52ca0  5      OPC=leal_r32_m16    
  movl %r12d, %ecx          #  37    0x52ca5  3      OPC=movl_r32_r32    
  movl %r13d, %esi          #  38    0x52ca8  3      OPC=movl_r32_r32    
  movl %ebx, %edi           #  39    0x52cab  2      OPC=movl_r32_r32    
  nop                       #  40    0x52cad  1      OPC=nop             
  nop                       #  41    0x52cae  1      OPC=nop             
  nop                       #  42    0x52caf  1      OPC=nop             
  nop                       #  43    0x52cb0  1      OPC=nop             
  nop                       #  44    0x52cb1  1      OPC=nop             
  nop                       #  45    0x52cb2  1      OPC=nop             
  nop                       #  46    0x52cb3  1      OPC=nop             
  nop                       #  47    0x52cb4  1      OPC=nop             
  nop                       #  48    0x52cb5  1      OPC=nop             
  nop                       #  49    0x52cb6  1      OPC=nop             
  nop                       #  50    0x52cb7  1      OPC=nop             
  nop                       #  51    0x52cb8  1      OPC=nop             
  nop                       #  52    0x52cb9  1      OPC=nop             
  nop                       #  53    0x52cba  1      OPC=nop             
  callq .__gmpn_add_n       #  54    0x52cbb  5      OPC=callq_label     
  movl %ebx, %ebx           #  55    0x52cc0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx  #  56    0x52cc2  4      OPC=movl_r32_m32    
  addl %eax, %edx           #  57    0x52cc6  2      OPC=addl_r32_r32    
  cmpl %edx, %eax           #  58    0x52cc8  2      OPC=cmpl_r32_r32    
  movl %ebx, %ebx           #  59    0x52cca  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)  #  60    0x52ccc  4      OPC=movl_m32_r32    
  jbe .L_52d00              #  61    0x52cd0  2      OPC=jbe_label       
  nop                       #  62    0x52cd2  1      OPC=nop             
  nop                       #  63    0x52cd3  1      OPC=nop             
  nop                       #  64    0x52cd4  1      OPC=nop             
  nop                       #  65    0x52cd5  1      OPC=nop             
  nop                       #  66    0x52cd6  1      OPC=nop             
  nop                       #  67    0x52cd7  1      OPC=nop             
  nop                       #  68    0x52cd8  1      OPC=nop             
  nop                       #  69    0x52cd9  1      OPC=nop             
  nop                       #  70    0x52cda  1      OPC=nop             
  nop                       #  71    0x52cdb  1      OPC=nop             
  nop                       #  72    0x52cdc  1      OPC=nop             
  nop                       #  73    0x52cdd  1      OPC=nop             
  nop                       #  74    0x52cde  1      OPC=nop             
  nop                       #  75    0x52cdf  1      OPC=nop             
.L_52ce0:                   #        0x52ce0  0      OPC=<label>         
  addl $0x4, %ebx           #  76    0x52ce0  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx           #  77    0x52ce3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax  #  78    0x52ce5  4      OPC=movl_r32_m32    
  addl $0x1, %eax           #  79    0x52ce9  3      OPC=addl_r32_imm8   
  testl %eax, %eax          #  80    0x52cec  2      OPC=testl_r32_r32   
  movl %ebx, %ebx           #  81    0x52cee  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)  #  82    0x52cf0  4      OPC=movl_m32_r32    
  je .L_52ce0               #  83    0x52cf4  2      OPC=je_label        
  nop                       #  84    0x52cf6  1      OPC=nop             
  nop                       #  85    0x52cf7  1      OPC=nop             
  nop                       #  86    0x52cf8  1      OPC=nop             
  nop                       #  87    0x52cf9  1      OPC=nop             
  nop                       #  88    0x52cfa  1      OPC=nop             
  nop                       #  89    0x52cfb  1      OPC=nop             
  nop                       #  90    0x52cfc  1      OPC=nop             
  nop                       #  91    0x52cfd  1      OPC=nop             
  nop                       #  92    0x52cfe  1      OPC=nop             
  nop                       #  93    0x52cff  1      OPC=nop             
.L_52d00:                   #        0x52d00  0      OPC=<label>         
  movq (%rsp), %rbx         #  94    0x52d00  4      OPC=movq_r64_m64    
  movq 0x8(%rsp), %r12      #  95    0x52d04  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13     #  96    0x52d09  5      OPC=movq_r64_m64    
  addl $0x18, %esp          #  97    0x52d0e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  98    0x52d11  3      OPC=addq_r64_r64    
  popq %r11                 #  99    0x52d14  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  100   0x52d16  7      OPC=andl_r32_imm32  
  nop                       #  101   0x52d1d  1      OPC=nop             
  nop                       #  102   0x52d1e  1      OPC=nop             
  nop                       #  103   0x52d1f  1      OPC=nop             
  nop                       #  104   0x52d20  1      OPC=nop             
  addq %r15, %r11           #  105   0x52d21  3      OPC=addq_r64_r64    
  jmpq %r11                 #  106   0x52d24  3      OPC=jmpq_r64        
                                                                         
.size __gmpn_bc_mulmod_bnm1, .-__gmpn_bc_mulmod_bnm1

