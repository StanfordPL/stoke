  .text
  .globl __gmpn_bc_mulmod_bnm1
  .type __gmpn_bc_mulmod_bnm1, @function

#! file-offset 0x92f60
#! rip-offset  0x52f60
#! capacity    192 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.__gmpn_bc_mulmod_bnm1:     #        0x52f60  0      OPC=<label>         
  movq %r13, -0x8(%rsp)     #  1     0x52f60  5      OPC=movq_m64_r64    
  movl %r8d, %r13d          #  2     0x52f65  3      OPC=movl_r32_r32    
  movq %rbx, -0x18(%rsp)    #  3     0x52f68  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)    #  4     0x52f6d  5      OPC=movq_m64_r64    
  movl %edi, %ebx           #  5     0x52f72  2      OPC=movl_r32_r32    
  subl $0x18, %esp          #  6     0x52f74  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  7     0x52f77  3      OPC=addq_r64_r64    
  movl %ecx, %r12d          #  8     0x52f7a  3      OPC=movl_r32_r32    
  movl %esi, %esi           #  9     0x52f7d  2      OPC=movl_r32_r32    
  nop                       #  10    0x52f7f  1      OPC=nop             
  movl %edx, %edx           #  11    0x52f80  2      OPC=movl_r32_r32    
  movl %r13d, %edi          #  12    0x52f82  3      OPC=movl_r32_r32    
  nop                       #  13    0x52f85  1      OPC=nop             
  nop                       #  14    0x52f86  1      OPC=nop             
  nop                       #  15    0x52f87  1      OPC=nop             
  nop                       #  16    0x52f88  1      OPC=nop             
  nop                       #  17    0x52f89  1      OPC=nop             
  nop                       #  18    0x52f8a  1      OPC=nop             
  nop                       #  19    0x52f8b  1      OPC=nop             
  nop                       #  20    0x52f8c  1      OPC=nop             
  nop                       #  21    0x52f8d  1      OPC=nop             
  nop                       #  22    0x52f8e  1      OPC=nop             
  nop                       #  23    0x52f8f  1      OPC=nop             
  nop                       #  24    0x52f90  1      OPC=nop             
  nop                       #  25    0x52f91  1      OPC=nop             
  nop                       #  26    0x52f92  1      OPC=nop             
  nop                       #  27    0x52f93  1      OPC=nop             
  nop                       #  28    0x52f94  1      OPC=nop             
  nop                       #  29    0x52f95  1      OPC=nop             
  nop                       #  30    0x52f96  1      OPC=nop             
  nop                       #  31    0x52f97  1      OPC=nop             
  nop                       #  32    0x52f98  1      OPC=nop             
  nop                       #  33    0x52f99  1      OPC=nop             
  nop                       #  34    0x52f9a  1      OPC=nop             
  callq .__gmpn_mul_n       #  35    0x52f9b  5      OPC=callq_label     
  leal (%r13,%r12,4), %edx  #  36    0x52fa0  5      OPC=leal_r32_m16    
  movl %r12d, %ecx          #  37    0x52fa5  3      OPC=movl_r32_r32    
  movl %r13d, %esi          #  38    0x52fa8  3      OPC=movl_r32_r32    
  movl %ebx, %edi           #  39    0x52fab  2      OPC=movl_r32_r32    
  nop                       #  40    0x52fad  1      OPC=nop             
  nop                       #  41    0x52fae  1      OPC=nop             
  nop                       #  42    0x52faf  1      OPC=nop             
  nop                       #  43    0x52fb0  1      OPC=nop             
  nop                       #  44    0x52fb1  1      OPC=nop             
  nop                       #  45    0x52fb2  1      OPC=nop             
  nop                       #  46    0x52fb3  1      OPC=nop             
  nop                       #  47    0x52fb4  1      OPC=nop             
  nop                       #  48    0x52fb5  1      OPC=nop             
  nop                       #  49    0x52fb6  1      OPC=nop             
  nop                       #  50    0x52fb7  1      OPC=nop             
  nop                       #  51    0x52fb8  1      OPC=nop             
  nop                       #  52    0x52fb9  1      OPC=nop             
  nop                       #  53    0x52fba  1      OPC=nop             
  callq .__gmpn_add_n       #  54    0x52fbb  5      OPC=callq_label     
  movl %ebx, %ebx           #  55    0x52fc0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx  #  56    0x52fc2  4      OPC=movl_r32_m32    
  addl %eax, %edx           #  57    0x52fc6  2      OPC=addl_r32_r32    
  cmpl %edx, %eax           #  58    0x52fc8  2      OPC=cmpl_r32_r32    
  movl %ebx, %ebx           #  59    0x52fca  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)  #  60    0x52fcc  4      OPC=movl_m32_r32    
  jbe .L_53000              #  61    0x52fd0  2      OPC=jbe_label       
  nop                       #  62    0x52fd2  1      OPC=nop             
  nop                       #  63    0x52fd3  1      OPC=nop             
  nop                       #  64    0x52fd4  1      OPC=nop             
  nop                       #  65    0x52fd5  1      OPC=nop             
  nop                       #  66    0x52fd6  1      OPC=nop             
  nop                       #  67    0x52fd7  1      OPC=nop             
  nop                       #  68    0x52fd8  1      OPC=nop             
  nop                       #  69    0x52fd9  1      OPC=nop             
  nop                       #  70    0x52fda  1      OPC=nop             
  nop                       #  71    0x52fdb  1      OPC=nop             
  nop                       #  72    0x52fdc  1      OPC=nop             
  nop                       #  73    0x52fdd  1      OPC=nop             
  nop                       #  74    0x52fde  1      OPC=nop             
  nop                       #  75    0x52fdf  1      OPC=nop             
.L_52fe0:                   #        0x52fe0  0      OPC=<label>         
  addl $0x4, %ebx           #  76    0x52fe0  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx           #  77    0x52fe3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax  #  78    0x52fe5  4      OPC=movl_r32_m32    
  addl $0x1, %eax           #  79    0x52fe9  3      OPC=addl_r32_imm8   
  testl %eax, %eax          #  80    0x52fec  2      OPC=testl_r32_r32   
  movl %ebx, %ebx           #  81    0x52fee  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)  #  82    0x52ff0  4      OPC=movl_m32_r32    
  je .L_52fe0               #  83    0x52ff4  2      OPC=je_label        
  nop                       #  84    0x52ff6  1      OPC=nop             
  nop                       #  85    0x52ff7  1      OPC=nop             
  nop                       #  86    0x52ff8  1      OPC=nop             
  nop                       #  87    0x52ff9  1      OPC=nop             
  nop                       #  88    0x52ffa  1      OPC=nop             
  nop                       #  89    0x52ffb  1      OPC=nop             
  nop                       #  90    0x52ffc  1      OPC=nop             
  nop                       #  91    0x52ffd  1      OPC=nop             
  nop                       #  92    0x52ffe  1      OPC=nop             
  nop                       #  93    0x52fff  1      OPC=nop             
.L_53000:                   #        0x53000  0      OPC=<label>         
  movq (%rsp), %rbx         #  94    0x53000  4      OPC=movq_r64_m64    
  movq 0x8(%rsp), %r12      #  95    0x53004  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13     #  96    0x53009  5      OPC=movq_r64_m64    
  addl $0x18, %esp          #  97    0x5300e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  98    0x53011  3      OPC=addq_r64_r64    
  popq %r11                 #  99    0x53014  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  100   0x53016  7      OPC=andl_r32_imm32  
  nop                       #  101   0x5301d  1      OPC=nop             
  nop                       #  102   0x5301e  1      OPC=nop             
  nop                       #  103   0x5301f  1      OPC=nop             
  nop                       #  104   0x53020  1      OPC=nop             
  addq %r15, %r11           #  105   0x53021  3      OPC=addq_r64_r64    
  jmpq %r11                 #  106   0x53024  3      OPC=jmpq_r64        
                                                                         
.size __gmpn_bc_mulmod_bnm1, .-__gmpn_bc_mulmod_bnm1

