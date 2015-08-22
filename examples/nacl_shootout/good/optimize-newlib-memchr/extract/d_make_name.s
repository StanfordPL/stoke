  .text
  .globl d_make_name
  .type d_make_name, @function

#! file-offset 0x13e860
#! rip-offset  0xfe860
#! capacity    160 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
.d_make_name:                   #        0xfe860  0      OPC=<label>         
  movl %edi, %edi               #  1     0xfe860  2      OPC=movl_r32_r32    
  movl %esi, %esi               #  2     0xfe862  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0xfe864  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %ecx  #  4     0xfe866  5      OPC=movl_r32_m32    
  movl %edi, %edi               #  5     0xfe86b  2      OPC=movl_r32_r32    
  cmpl 0x18(%r15,%rdi,1), %ecx  #  6     0xfe86d  5      OPC=cmpl_r32_m32    
  jge .L_fe8a0                  #  7     0xfe872  2      OPC=jge_label       
  leal (%rcx,%rcx,2), %eax      #  8     0xfe874  3      OPC=leal_r32_m16    
  addl $0x1, %ecx               #  9     0xfe877  3      OPC=addl_r32_imm8   
  nop                           #  10    0xfe87a  1      OPC=nop             
  nop                           #  11    0xfe87b  1      OPC=nop             
  nop                           #  12    0xfe87c  1      OPC=nop             
  nop                           #  13    0xfe87d  1      OPC=nop             
  nop                           #  14    0xfe87e  1      OPC=nop             
  nop                           #  15    0xfe87f  1      OPC=nop             
  movl %edi, %edi               #  16    0xfe880  2      OPC=movl_r32_r32    
  movl %ecx, 0x14(%r15,%rdi,1)  #  17    0xfe882  5      OPC=movl_m32_r32    
  shll $0x2, %eax               #  18    0xfe887  3      OPC=shll_r32_imm8   
  movl %edi, %edi               #  19    0xfe88a  2      OPC=movl_r32_r32    
  addl 0x10(%r15,%rdi,1), %eax  #  20    0xfe88c  5      OPC=addl_r32_m32    
  testq %rax, %rax              #  21    0xfe891  3      OPC=testq_r64_r64   
  jne .L_fe8c0                  #  22    0xfe894  2      OPC=jne_label       
  nop                           #  23    0xfe896  1      OPC=nop             
  nop                           #  24    0xfe897  1      OPC=nop             
  nop                           #  25    0xfe898  1      OPC=nop             
  nop                           #  26    0xfe899  1      OPC=nop             
  nop                           #  27    0xfe89a  1      OPC=nop             
  nop                           #  28    0xfe89b  1      OPC=nop             
  nop                           #  29    0xfe89c  1      OPC=nop             
  nop                           #  30    0xfe89d  1      OPC=nop             
  nop                           #  31    0xfe89e  1      OPC=nop             
  nop                           #  32    0xfe89f  1      OPC=nop             
.L_fe8a0:                       #        0xfe8a0  0      OPC=<label>         
  xorl %eax, %eax               #  33    0xfe8a0  2      OPC=xorl_r32_r32    
  popq %r11                     #  34    0xfe8a2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  35    0xfe8a4  7      OPC=andl_r32_imm32  
  nop                           #  36    0xfe8ab  1      OPC=nop             
  nop                           #  37    0xfe8ac  1      OPC=nop             
  nop                           #  38    0xfe8ad  1      OPC=nop             
  nop                           #  39    0xfe8ae  1      OPC=nop             
  addq %r15, %r11               #  40    0xfe8af  3      OPC=addq_r64_r64    
  jmpq %r11                     #  41    0xfe8b2  3      OPC=jmpq_r64        
  nop                           #  42    0xfe8b5  1      OPC=nop             
  nop                           #  43    0xfe8b6  1      OPC=nop             
  nop                           #  44    0xfe8b7  1      OPC=nop             
  nop                           #  45    0xfe8b8  1      OPC=nop             
  nop                           #  46    0xfe8b9  1      OPC=nop             
  nop                           #  47    0xfe8ba  1      OPC=nop             
  nop                           #  48    0xfe8bb  1      OPC=nop             
  nop                           #  49    0xfe8bc  1      OPC=nop             
  nop                           #  50    0xfe8bd  1      OPC=nop             
  nop                           #  51    0xfe8be  1      OPC=nop             
  nop                           #  52    0xfe8bf  1      OPC=nop             
  nop                           #  53    0xfe8c0  1      OPC=nop             
  nop                           #  54    0xfe8c1  1      OPC=nop             
  nop                           #  55    0xfe8c2  1      OPC=nop             
  nop                           #  56    0xfe8c3  1      OPC=nop             
  nop                           #  57    0xfe8c4  1      OPC=nop             
  nop                           #  58    0xfe8c5  1      OPC=nop             
  nop                           #  59    0xfe8c6  1      OPC=nop             
.L_fe8c0:                       #        0xfe8c7  0      OPC=<label>         
  testq %rsi, %rsi              #  60    0xfe8c7  3      OPC=testq_r64_r64   
  je .L_fe8a0                   #  61    0xfe8ca  2      OPC=je_label        
  testl %edx, %edx              #  62    0xfe8cc  2      OPC=testl_r32_r32   
  je .L_fe8a0                   #  63    0xfe8ce  2      OPC=je_label        
  movl %eax, %eax               #  64    0xfe8d0  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rax,1)      #  65    0xfe8d2  8      OPC=movl_m32_imm32  
  movl %eax, %eax               #  66    0xfe8da  2      OPC=movl_r32_r32    
  movl %esi, 0x4(%r15,%rax,1)   #  67    0xfe8dc  5      OPC=movl_m32_r32    
  nop                           #  68    0xfe8e1  1      OPC=nop             
  nop                           #  69    0xfe8e2  1      OPC=nop             
  nop                           #  70    0xfe8e3  1      OPC=nop             
  nop                           #  71    0xfe8e4  1      OPC=nop             
  nop                           #  72    0xfe8e5  1      OPC=nop             
  nop                           #  73    0xfe8e6  1      OPC=nop             
  movl %eax, %eax               #  74    0xfe8e7  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rax,1)   #  75    0xfe8e9  5      OPC=movl_m32_r32    
  popq %r11                     #  76    0xfe8ee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  77    0xfe8f0  7      OPC=andl_r32_imm32  
  nop                           #  78    0xfe8f7  1      OPC=nop             
  nop                           #  79    0xfe8f8  1      OPC=nop             
  nop                           #  80    0xfe8f9  1      OPC=nop             
  nop                           #  81    0xfe8fa  1      OPC=nop             
  addq %r15, %r11               #  82    0xfe8fb  3      OPC=addq_r64_r64    
  jmpq %r11                     #  83    0xfe8fe  3      OPC=jmpq_r64        
  nop                           #  84    0xfe901  1      OPC=nop             
  nop                           #  85    0xfe902  1      OPC=nop             
  nop                           #  86    0xfe903  1      OPC=nop             
  nop                           #  87    0xfe904  1      OPC=nop             
  nop                           #  88    0xfe905  1      OPC=nop             
  nop                           #  89    0xfe906  1      OPC=nop             
  nop                           #  90    0xfe907  1      OPC=nop             
  nop                           #  91    0xfe908  1      OPC=nop             
  nop                           #  92    0xfe909  1      OPC=nop             
  nop                           #  93    0xfe90a  1      OPC=nop             
  nop                           #  94    0xfe90b  1      OPC=nop             
  nop                           #  95    0xfe90c  1      OPC=nop             
  nop                           #  96    0xfe90d  1      OPC=nop             
                                                                             
.size d_make_name, .-d_make_name

