  .text
  .globl __gmpn_submul_1
  .type __gmpn_submul_1, @function

#! file-offset 0x728c0
#! rip-offset  0x328c0
#! capacity    224 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
.__gmpn_submul_1:           #        0x328c0  0      OPC=<label>         
  pushq %r12                #  1     0x328c0  2      OPC=pushq_r64_1     
  movl %esi, %esi           #  2     0x328c2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0x328c4  2      OPC=movl_r32_r32    
  xorl %eax, %eax           #  4     0x328c6  2      OPC=xorl_r32_r32    
  pushq %rbx                #  5     0x328c8  1      OPC=pushq_r64_1     
  movzwl %cx, %ebx          #  6     0x328c9  3      OPC=movzwl_r32_r16  
  movl %esi, %esi           #  7     0x328cc  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d  #  8     0x328ce  4      OPC=movl_r32_m32    
  shrl $0x10, %ecx          #  9     0x328d2  3      OPC=shrl_r32_imm8   
  jmpq .L_32900             #  10    0x328d5  2      OPC=jmpq_label      
  nop                       #  11    0x328d7  1      OPC=nop             
  nop                       #  12    0x328d8  1      OPC=nop             
  nop                       #  13    0x328d9  1      OPC=nop             
  nop                       #  14    0x328da  1      OPC=nop             
  nop                       #  15    0x328db  1      OPC=nop             
  nop                       #  16    0x328dc  1      OPC=nop             
  nop                       #  17    0x328dd  1      OPC=nop             
  nop                       #  18    0x328de  1      OPC=nop             
  nop                       #  19    0x328df  1      OPC=nop             
.L_328e0:                   #        0x328e0  0      OPC=<label>         
  addl $0x4, %esi           #  20    0x328e0  3      OPC=addl_r32_imm8   
  addl $0x4, %edi           #  21    0x328e3  3      OPC=addl_r32_imm8   
  movl %esi, %esi           #  22    0x328e6  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d  #  23    0x328e8  4      OPC=movl_r32_m32    
  nop                       #  24    0x328ec  1      OPC=nop             
  nop                       #  25    0x328ed  1      OPC=nop             
  nop                       #  26    0x328ee  1      OPC=nop             
  nop                       #  27    0x328ef  1      OPC=nop             
  nop                       #  28    0x328f0  1      OPC=nop             
  nop                       #  29    0x328f1  1      OPC=nop             
  nop                       #  30    0x328f2  1      OPC=nop             
  nop                       #  31    0x328f3  1      OPC=nop             
  nop                       #  32    0x328f4  1      OPC=nop             
  nop                       #  33    0x328f5  1      OPC=nop             
  nop                       #  34    0x328f6  1      OPC=nop             
  nop                       #  35    0x328f7  1      OPC=nop             
  nop                       #  36    0x328f8  1      OPC=nop             
  nop                       #  37    0x328f9  1      OPC=nop             
  nop                       #  38    0x328fa  1      OPC=nop             
  nop                       #  39    0x328fb  1      OPC=nop             
  nop                       #  40    0x328fc  1      OPC=nop             
  nop                       #  41    0x328fd  1      OPC=nop             
  nop                       #  42    0x328fe  1      OPC=nop             
  nop                       #  43    0x328ff  1      OPC=nop             
.L_32900:                   #        0x32900  0      OPC=<label>         
  movzwl %r8w, %r11d        #  44    0x32900  4      OPC=movzwl_r32_r16  
  shrl $0x10, %r8d          #  45    0x32904  4      OPC=shrl_r32_imm8   
  movl %r11d, %r10d         #  46    0x32908  3      OPC=movl_r32_r32    
  movl %r8d, %r9d           #  47    0x3290b  3      OPC=movl_r32_r32    
  imull %ebx, %r10d         #  48    0x3290e  4      OPC=imull_r32_r32   
  imull %ebx, %r9d          #  49    0x32912  4      OPC=imull_r32_r32   
  movl %r10d, %r12d         #  50    0x32916  3      OPC=movl_r32_r32    
  imull %ecx, %r11d         #  51    0x32919  4      OPC=imull_r32_r32   
  nop                       #  52    0x3291d  1      OPC=nop             
  nop                       #  53    0x3291e  1      OPC=nop             
  nop                       #  54    0x3291f  1      OPC=nop             
  shrl $0x10, %r12d         #  55    0x32920  4      OPC=shrl_r32_imm8   
  imull %ecx, %r8d          #  56    0x32924  4      OPC=imull_r32_r32   
  leal (%r9,%r11,1), %r11d  #  57    0x32928  4      OPC=leal_r32_m16    
  addl %r12d, %r11d         #  58    0x3292c  3      OPC=addl_r32_r32    
  leal 0x10000(%r8), %r12d  #  59    0x3292f  7      OPC=leal_r32_m16    
  cmpl %r11d, %r9d          #  60    0x32936  3      OPC=cmpl_r32_r32    
  movl %r11d, %r9d          #  61    0x32939  3      OPC=movl_r32_r32    
  cmoval %r12d, %r8d        #  62    0x3293c  4      OPC=cmoval_r32_r32  
  andl $0xffff, %r10d       #  63    0x32940  7      OPC=andl_r32_imm32  
  shll $0x10, %r9d          #  64    0x32947  4      OPC=shll_r32_imm8   
  addl %eax, %r10d          #  65    0x3294b  3      OPC=addl_r32_r32    
  addl %r9d, %r10d          #  66    0x3294e  3      OPC=addl_r32_r32    
  movl %edi, %edi           #  67    0x32951  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r9d  #  68    0x32953  4      OPC=movl_r32_m32    
  cmpl %eax, %r10d          #  69    0x32957  3      OPC=cmpl_r32_r32    
  setb %al                  #  70    0x3295a  3      OPC=setb_r8         
  nop                       #  71    0x3295d  1      OPC=nop             
  nop                       #  72    0x3295e  1      OPC=nop             
  nop                       #  73    0x3295f  1      OPC=nop             
  shrl $0x10, %r11d         #  74    0x32960  4      OPC=shrl_r32_imm8   
  movzbl %al, %eax          #  75    0x32964  3      OPC=movzbl_r32_r8   
  addl %r11d, %eax          #  76    0x32967  3      OPC=addl_r32_r32    
  subl %r10d, %r9d          #  77    0x3296a  3      OPC=subl_r32_r32    
  setb %r10b                #  78    0x3296d  4      OPC=setb_r8         
  movl %edi, %edi           #  79    0x32971  2      OPC=movl_r32_r32    
  movl %r9d, (%r15,%rdi,1)  #  80    0x32973  4      OPC=movl_m32_r32    
  movzbl %r10b, %r10d       #  81    0x32977  4      OPC=movzbl_r32_r8   
  addl %r10d, %eax          #  82    0x3297b  3      OPC=addl_r32_r32    
  xchgw %ax, %ax            #  83    0x3297e  2      OPC=xchgw_ax_r16    
  addl %r8d, %eax           #  84    0x32980  3      OPC=addl_r32_r32    
  subl $0x1, %edx           #  85    0x32983  3      OPC=subl_r32_imm8   
  jne .L_328e0              #  86    0x32986  6      OPC=jne_label_1     
  popq %rbx                 #  87    0x3298c  1      OPC=popq_r64_1      
  popq %r12                 #  88    0x3298d  2      OPC=popq_r64_1      
  popq %r11                 #  89    0x3298f  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d   #  90    0x32991  7      OPC=andl_r32_imm32  
  nop                       #  91    0x32998  1      OPC=nop             
  nop                       #  92    0x32999  1      OPC=nop             
  nop                       #  93    0x3299a  1      OPC=nop             
  nop                       #  94    0x3299b  1      OPC=nop             
  addq %r15, %r11           #  95    0x3299c  3      OPC=addq_r64_r64    
  jmpq %r11                 #  96    0x3299f  3      OPC=jmpq_r64        
  nop                       #  97    0x329a2  1      OPC=nop             
  nop                       #  98    0x329a3  1      OPC=nop             
  nop                       #  99    0x329a4  1      OPC=nop             
  nop                       #  100   0x329a5  1      OPC=nop             
  nop                       #  101   0x329a6  1      OPC=nop             
                                                                         
.size __gmpn_submul_1, .-__gmpn_submul_1

