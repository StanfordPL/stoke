  .text
  .globl __gmpn_submul_1
  .type __gmpn_submul_1, @function

#! file-offset 0x732e0
#! rip-offset  0x332e0
#! capacity    224 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.__gmpn_submul_1:           #        0x332e0  0      OPC=<label>         
  pushq %r12                #  1     0x332e0  2      OPC=pushq_r64_1     
  movl %esi, %esi           #  2     0x332e2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0x332e4  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  4     0x332e6  2      OPC=xorl_r32_r32    
  pushq %rbx                #  5     0x332e8  1      OPC=pushq_r64_1     
  movzwl %cx, %ebx          #  6     0x332e9  3      OPC=movzwl_r32_r16  
  movl %esi, %esi           #  7     0x332ec  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d  #  8     0x332ee  4      OPC=movl_r32_m32    
  shrl $0x10, %ecx          #  9     0x332f2  3      OPC=shrl_r32_imm8   
  jmpq .L_33320             #  10    0x332f5  2      OPC=jmpq_label      
  nop                       #  11    0x332f7  1      OPC=nop             
  nop                       #  12    0x332f8  1      OPC=nop             
  nop                       #  13    0x332f9  1      OPC=nop             
  nop                       #  14    0x332fa  1      OPC=nop             
  nop                       #  15    0x332fb  1      OPC=nop             
  nop                       #  16    0x332fc  1      OPC=nop             
  nop                       #  17    0x332fd  1      OPC=nop             
  nop                       #  18    0x332fe  1      OPC=nop             
  nop                       #  19    0x332ff  1      OPC=nop             
.L_33300:                   #        0x33300  0      OPC=<label>         
  addl $0x4, %esi           #  20    0x33300  3      OPC=addl_r32_imm8   
  addl $0x4, %edi           #  21    0x33303  3      OPC=addl_r32_imm8   
  movl %esi, %esi           #  22    0x33306  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d  #  23    0x33308  4      OPC=movl_r32_m32    
  nop                       #  24    0x3330c  1      OPC=nop             
  nop                       #  25    0x3330d  1      OPC=nop             
  nop                       #  26    0x3330e  1      OPC=nop             
  nop                       #  27    0x3330f  1      OPC=nop             
  nop                       #  28    0x33310  1      OPC=nop             
  nop                       #  29    0x33311  1      OPC=nop             
  nop                       #  30    0x33312  1      OPC=nop             
  nop                       #  31    0x33313  1      OPC=nop             
  nop                       #  32    0x33314  1      OPC=nop             
  nop                       #  33    0x33315  1      OPC=nop             
  nop                       #  34    0x33316  1      OPC=nop             
  nop                       #  35    0x33317  1      OPC=nop             
  nop                       #  36    0x33318  1      OPC=nop             
  nop                       #  37    0x33319  1      OPC=nop             
  nop                       #  38    0x3331a  1      OPC=nop             
  nop                       #  39    0x3331b  1      OPC=nop             
  nop                       #  40    0x3331c  1      OPC=nop             
  nop                       #  41    0x3331d  1      OPC=nop             
  nop                       #  42    0x3331e  1      OPC=nop             
  nop                       #  43    0x3331f  1      OPC=nop             
.L_33320:                   #        0x33320  0      OPC=<label>         
  movzwl %r8w, %r11d        #  44    0x33320  4      OPC=movzwl_r32_r16  
  shrl $0x10, %r8d          #  45    0x33324  4      OPC=shrl_r32_imm8   
  movl %r11d, %r10d         #  46    0x33328  3      OPC=movl_r32_r32    
  movl %r8d, %r9d           #  47    0x3332b  3      OPC=movl_r32_r32    
  imull %ebx, %r10d         #  48    0x3332e  4      OPC=imull_r32_r32   
  imull %ebx, %r9d          #  49    0x33332  4      OPC=imull_r32_r32   
  movl %r10d, %r12d         #  50    0x33336  3      OPC=movl_r32_r32    
  imull %ecx, %r11d         #  51    0x33339  4      OPC=imull_r32_r32   
  nop                       #  52    0x3333d  1      OPC=nop             
  nop                       #  53    0x3333e  1      OPC=nop             
  nop                       #  54    0x3333f  1      OPC=nop             
  shrl $0x10, %r12d         #  55    0x33340  4      OPC=shrl_r32_imm8   
  imull %ecx, %r8d          #  56    0x33344  4      OPC=imull_r32_r32   
  leal (%r9,%r11,1), %r11d  #  57    0x33348  4      OPC=leal_r32_m16    
  addl %r12d, %r11d         #  58    0x3334c  3      OPC=addl_r32_r32    
  leal 0x10000(%r8), %r12d  #  59    0x3334f  7      OPC=leal_r32_m16    
  cmpl %r11d, %r9d          #  60    0x33356  3      OPC=cmpl_r32_r32    
  movl %r11d, %r9d          #  61    0x33359  3      OPC=movl_r32_r32    
  cmoval %r12d, %r8d        #  62    0x3335c  4      OPC=cmoval_r32_r32  
  andl $0xffff, %r10d       #  63    0x33360  7      OPC=andl_r32_imm32  
  shll $0x10, %r9d          #  64    0x33367  4      OPC=shll_r32_imm8   
  addl %eax, %r10d          #  65    0x3336b  3      OPC=addl_r32_r32    
  addl %r9d, %r10d          #  66    0x3336e  3      OPC=addl_r32_r32    
  movl %edi, %edi           #  67    0x33371  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r9d  #  68    0x33373  4      OPC=movl_r32_m32    
  cmpl %eax, %r10d          #  69    0x33377  3      OPC=cmpl_r32_r32    
  setb %al                  #  70    0x3337a  3      OPC=setb_r8         
  nop                       #  71    0x3337d  1      OPC=nop             
  nop                       #  72    0x3337e  1      OPC=nop             
  nop                       #  73    0x3337f  1      OPC=nop             
  shrl $0x10, %r11d         #  74    0x33380  4      OPC=shrl_r32_imm8   
  movzbl %al, %eax          #  75    0x33384  3      OPC=movzbl_r32_r8   
  addl %r11d, %eax          #  76    0x33387  3      OPC=addl_r32_r32    
  subl %r10d, %r9d          #  77    0x3338a  3      OPC=subl_r32_r32    
  setb %r10b                #  78    0x3338d  4      OPC=setb_r8         
  movl %edi, %edi           #  79    0x33391  2      OPC=movl_r32_r32    
  movl %r9d, (%r15,%rdi,1)  #  80    0x33393  4      OPC=movl_m32_r32    
  movzbl %r10b, %r10d       #  81    0x33397  4      OPC=movzbl_r32_r8   
  addl %r10d, %eax          #  82    0x3339b  3      OPC=addl_r32_r32    
  xchgw %ax, %ax            #  83    0x3339e  2      OPC=xchgw_ax_r16    
  addl %r8d, %eax           #  84    0x333a0  3      OPC=addl_r32_r32    
  subl $0x1, %edx           #  85    0x333a3  3      OPC=subl_r32_imm8   
  jne .L_33300              #  86    0x333a6  6      OPC=jne_label_1     
  popq %rbx                 #  87    0x333ac  1      OPC=popq_r64_1      
  popq %r12                 #  88    0x333ad  2      OPC=popq_r64_1      
  popq %r11                 #  89    0x333af  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  90    0x333b1  7      OPC=andl_r32_imm32  
  nop                       #  91    0x333b8  1      OPC=nop             
  nop                       #  92    0x333b9  1      OPC=nop             
  nop                       #  93    0x333ba  1      OPC=nop             
  nop                       #  94    0x333bb  1      OPC=nop             
  addq %r15, %r11           #  95    0x333bc  3      OPC=addq_r64_r64    
  jmpq %r11                 #  96    0x333bf  3      OPC=jmpq_r64        
  nop                       #  97    0x333c2  1      OPC=nop             
  nop                       #  98    0x333c3  1      OPC=nop             
  nop                       #  99    0x333c4  1      OPC=nop             
  nop                       #  100   0x333c5  1      OPC=nop             
  nop                       #  101   0x333c6  1      OPC=nop             
                                                                         
.size __gmpn_submul_1, .-__gmpn_submul_1

