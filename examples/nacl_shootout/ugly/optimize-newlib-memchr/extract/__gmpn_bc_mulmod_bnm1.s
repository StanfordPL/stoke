  .text
  .globl __gmpn_bc_mulmod_bnm1
  .type __gmpn_bc_mulmod_bnm1, @function

#! file-offset 0x93680
#! rip-offset  0x53680
#! capacity    192 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.__gmpn_bc_mulmod_bnm1:     #        0x53680  0      OPC=<label>         
  movq %r13, -0x8(%rsp)     #  1     0x53680  5      OPC=movq_m64_r64    
  movl %r8d, %r13d          #  2     0x53685  3      OPC=movl_r32_r32    
  movq %rbx, -0x18(%rsp)    #  3     0x53688  5      OPC=movq_m64_r64    
  movq %r12, -0x10(%rsp)    #  4     0x5368d  5      OPC=movq_m64_r64    
  movl %edi, %ebx           #  5     0x53692  2      OPC=movl_r32_r32    
  subl $0x18, %esp          #  6     0x53694  3      OPC=subl_r32_imm8   
  addq %r15, %rsp           #  7     0x53697  3      OPC=addq_r64_r64    
  movl %ecx, %r12d          #  8     0x5369a  3      OPC=movl_r32_r32    
  movl %esi, %esi           #  9     0x5369d  2      OPC=movl_r32_r32    
  nop                       #  10    0x5369f  1      OPC=nop             
  movl %edx, %edx           #  11    0x536a0  2      OPC=movl_r32_r32    
  movl %r13d, %edi          #  12    0x536a2  3      OPC=movl_r32_r32    
  nop                       #  13    0x536a5  1      OPC=nop             
  nop                       #  14    0x536a6  1      OPC=nop             
  nop                       #  15    0x536a7  1      OPC=nop             
  nop                       #  16    0x536a8  1      OPC=nop             
  nop                       #  17    0x536a9  1      OPC=nop             
  nop                       #  18    0x536aa  1      OPC=nop             
  nop                       #  19    0x536ab  1      OPC=nop             
  nop                       #  20    0x536ac  1      OPC=nop             
  nop                       #  21    0x536ad  1      OPC=nop             
  nop                       #  22    0x536ae  1      OPC=nop             
  nop                       #  23    0x536af  1      OPC=nop             
  nop                       #  24    0x536b0  1      OPC=nop             
  nop                       #  25    0x536b1  1      OPC=nop             
  nop                       #  26    0x536b2  1      OPC=nop             
  nop                       #  27    0x536b3  1      OPC=nop             
  nop                       #  28    0x536b4  1      OPC=nop             
  nop                       #  29    0x536b5  1      OPC=nop             
  nop                       #  30    0x536b6  1      OPC=nop             
  nop                       #  31    0x536b7  1      OPC=nop             
  nop                       #  32    0x536b8  1      OPC=nop             
  nop                       #  33    0x536b9  1      OPC=nop             
  nop                       #  34    0x536ba  1      OPC=nop             
  callq .__gmpn_mul_n       #  35    0x536bb  5      OPC=callq_label     
  leal (%r13,%r12,4), %edx  #  36    0x536c0  5      OPC=leal_r32_m16    
  movl %r12d, %ecx          #  37    0x536c5  3      OPC=movl_r32_r32    
  movl %r13d, %esi          #  38    0x536c8  3      OPC=movl_r32_r32    
  movl %ebx, %edi           #  39    0x536cb  2      OPC=movl_r32_r32    
  nop                       #  40    0x536cd  1      OPC=nop             
  nop                       #  41    0x536ce  1      OPC=nop             
  nop                       #  42    0x536cf  1      OPC=nop             
  nop                       #  43    0x536d0  1      OPC=nop             
  nop                       #  44    0x536d1  1      OPC=nop             
  nop                       #  45    0x536d2  1      OPC=nop             
  nop                       #  46    0x536d3  1      OPC=nop             
  nop                       #  47    0x536d4  1      OPC=nop             
  nop                       #  48    0x536d5  1      OPC=nop             
  nop                       #  49    0x536d6  1      OPC=nop             
  nop                       #  50    0x536d7  1      OPC=nop             
  nop                       #  51    0x536d8  1      OPC=nop             
  nop                       #  52    0x536d9  1      OPC=nop             
  nop                       #  53    0x536da  1      OPC=nop             
  callq .__gmpn_add_n       #  54    0x536db  5      OPC=callq_label     
  movl %ebx, %ebx           #  55    0x536e0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx  #  56    0x536e2  4      OPC=movl_r32_m32    
  addl %eax, %edx           #  57    0x536e6  2      OPC=addl_r32_r32    
  cmpl %edx, %eax           #  58    0x536e8  2      OPC=cmpl_r32_r32    
  movl %ebx, %ebx           #  59    0x536ea  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rbx,1)  #  60    0x536ec  4      OPC=movl_m32_r32    
  jbe .L_53720              #  61    0x536f0  2      OPC=jbe_label       
  nop                       #  62    0x536f2  1      OPC=nop             
  nop                       #  63    0x536f3  1      OPC=nop             
  nop                       #  64    0x536f4  1      OPC=nop             
  nop                       #  65    0x536f5  1      OPC=nop             
  nop                       #  66    0x536f6  1      OPC=nop             
  nop                       #  67    0x536f7  1      OPC=nop             
  nop                       #  68    0x536f8  1      OPC=nop             
  nop                       #  69    0x536f9  1      OPC=nop             
  nop                       #  70    0x536fa  1      OPC=nop             
  nop                       #  71    0x536fb  1      OPC=nop             
  nop                       #  72    0x536fc  1      OPC=nop             
  nop                       #  73    0x536fd  1      OPC=nop             
  nop                       #  74    0x536fe  1      OPC=nop             
  nop                       #  75    0x536ff  1      OPC=nop             
.L_53700:                   #        0x53700  0      OPC=<label>         
  addl $0x4, %ebx           #  76    0x53700  3      OPC=addl_r32_imm8   
  movl %ebx, %ebx           #  77    0x53703  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax  #  78    0x53705  4      OPC=movl_r32_m32    
  addl $0x1, %eax           #  79    0x53709  3      OPC=addl_r32_imm8   
  testl %eax, %eax          #  80    0x5370c  2      OPC=testl_r32_r32   
  movl %ebx, %ebx           #  81    0x5370e  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)  #  82    0x53710  4      OPC=movl_m32_r32    
  je .L_53700               #  83    0x53714  2      OPC=je_label        
  nop                       #  84    0x53716  1      OPC=nop             
  nop                       #  85    0x53717  1      OPC=nop             
  nop                       #  86    0x53718  1      OPC=nop             
  nop                       #  87    0x53719  1      OPC=nop             
  nop                       #  88    0x5371a  1      OPC=nop             
  nop                       #  89    0x5371b  1      OPC=nop             
  nop                       #  90    0x5371c  1      OPC=nop             
  nop                       #  91    0x5371d  1      OPC=nop             
  nop                       #  92    0x5371e  1      OPC=nop             
  nop                       #  93    0x5371f  1      OPC=nop             
.L_53720:                   #        0x53720  0      OPC=<label>         
  movq (%rsp), %rbx         #  94    0x53720  4      OPC=movq_r64_m64    
  movq 0x8(%rsp), %r12      #  95    0x53724  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r13     #  96    0x53729  5      OPC=movq_r64_m64    
  addl $0x18, %esp          #  97    0x5372e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp           #  98    0x53731  3      OPC=addq_r64_r64    
  popq %r11                 #  99    0x53734  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  100   0x53736  7      OPC=andl_r32_imm32  
  nop                       #  101   0x5373d  1      OPC=nop             
  nop                       #  102   0x5373e  1      OPC=nop             
  nop                       #  103   0x5373f  1      OPC=nop             
  nop                       #  104   0x53740  1      OPC=nop             
  addq %r15, %r11           #  105   0x53741  3      OPC=addq_r64_r64    
  jmpq %r11                 #  106   0x53744  3      OPC=jmpq_r64        
                                                                         
.size __gmpn_bc_mulmod_bnm1, .-__gmpn_bc_mulmod_bnm1

