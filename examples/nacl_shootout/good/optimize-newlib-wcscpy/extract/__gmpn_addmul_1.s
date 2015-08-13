  .text
  .globl __gmpn_addmul_1
  .type __gmpn_addmul_1, @function

#! file-offset 0x727e0
#! rip-offset  0x327e0
#! capacity    224 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.__gmpn_addmul_1:            #        0x327e0  0      OPC=<label>         
  pushq %r12                 #  1     0x327e0  2      OPC=pushq_r64_1     
  movl %esi, %esi            #  2     0x327e2  2      OPC=movl_r32_r32    
  movl %edi, %edi            #  3     0x327e4  2      OPC=movl_r32_r32    
  xorl %eax, %eax            #  4     0x327e6  2      OPC=xorl_r32_r32    
  pushq %rbx                 #  5     0x327e8  1      OPC=pushq_r64_1     
  movzwl %cx, %ebx           #  6     0x327e9  3      OPC=movzwl_r32_r16  
  movl %esi, %esi            #  7     0x327ec  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d   #  8     0x327ee  4      OPC=movl_r32_m32    
  shrl $0x10, %ecx           #  9     0x327f2  3      OPC=shrl_r32_imm8   
  jmpq .L_32820              #  10    0x327f5  2      OPC=jmpq_label      
  nop                        #  11    0x327f7  1      OPC=nop             
  nop                        #  12    0x327f8  1      OPC=nop             
  nop                        #  13    0x327f9  1      OPC=nop             
  nop                        #  14    0x327fa  1      OPC=nop             
  nop                        #  15    0x327fb  1      OPC=nop             
  nop                        #  16    0x327fc  1      OPC=nop             
  nop                        #  17    0x327fd  1      OPC=nop             
  nop                        #  18    0x327fe  1      OPC=nop             
  nop                        #  19    0x327ff  1      OPC=nop             
.L_32800:                    #        0x32800  0      OPC=<label>         
  addl $0x4, %esi            #  20    0x32800  3      OPC=addl_r32_imm8   
  addl $0x4, %edi            #  21    0x32803  3      OPC=addl_r32_imm8   
  movl %esi, %esi            #  22    0x32806  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d   #  23    0x32808  4      OPC=movl_r32_m32    
  nop                        #  24    0x3280c  1      OPC=nop             
  nop                        #  25    0x3280d  1      OPC=nop             
  nop                        #  26    0x3280e  1      OPC=nop             
  nop                        #  27    0x3280f  1      OPC=nop             
  nop                        #  28    0x32810  1      OPC=nop             
  nop                        #  29    0x32811  1      OPC=nop             
  nop                        #  30    0x32812  1      OPC=nop             
  nop                        #  31    0x32813  1      OPC=nop             
  nop                        #  32    0x32814  1      OPC=nop             
  nop                        #  33    0x32815  1      OPC=nop             
  nop                        #  34    0x32816  1      OPC=nop             
  nop                        #  35    0x32817  1      OPC=nop             
  nop                        #  36    0x32818  1      OPC=nop             
  nop                        #  37    0x32819  1      OPC=nop             
  nop                        #  38    0x3281a  1      OPC=nop             
  nop                        #  39    0x3281b  1      OPC=nop             
  nop                        #  40    0x3281c  1      OPC=nop             
  nop                        #  41    0x3281d  1      OPC=nop             
  nop                        #  42    0x3281e  1      OPC=nop             
  nop                        #  43    0x3281f  1      OPC=nop             
.L_32820:                    #        0x32820  0      OPC=<label>         
  movzwl %r8w, %r10d         #  44    0x32820  4      OPC=movzwl_r32_r16  
  shrl $0x10, %r8d           #  45    0x32824  4      OPC=shrl_r32_imm8   
  movl %r10d, %r9d           #  46    0x32828  3      OPC=movl_r32_r32    
  movl %r8d, %r11d           #  47    0x3282b  3      OPC=movl_r32_r32    
  imull %ebx, %r9d           #  48    0x3282e  4      OPC=imull_r32_r32   
  imull %ebx, %r11d          #  49    0x32832  4      OPC=imull_r32_r32   
  movl %r9d, %r12d           #  50    0x32836  3      OPC=movl_r32_r32    
  imull %ecx, %r10d          #  51    0x32839  4      OPC=imull_r32_r32   
  nop                        #  52    0x3283d  1      OPC=nop             
  nop                        #  53    0x3283e  1      OPC=nop             
  nop                        #  54    0x3283f  1      OPC=nop             
  shrl $0x10, %r12d          #  55    0x32840  4      OPC=shrl_r32_imm8   
  imull %ecx, %r8d           #  56    0x32844  4      OPC=imull_r32_r32   
  leal (%r11,%r10,1), %r10d  #  57    0x32848  4      OPC=leal_r32_m16    
  addl %r12d, %r10d          #  58    0x3284c  3      OPC=addl_r32_r32    
  leal 0x10000(%r8), %r12d   #  59    0x3284f  7      OPC=leal_r32_m16    
  cmpl %r10d, %r11d          #  60    0x32856  3      OPC=cmpl_r32_r32    
  movl %r10d, %r11d          #  61    0x32859  3      OPC=movl_r32_r32    
  cmoval %r12d, %r8d         #  62    0x3285c  4      OPC=cmoval_r32_r32  
  andl $0xffff, %r9d         #  63    0x32860  7      OPC=andl_r32_imm32  
  shll $0x10, %r11d          #  64    0x32867  4      OPC=shll_r32_imm8   
  addl %eax, %r9d            #  65    0x3286b  3      OPC=addl_r32_r32    
  addl %r11d, %r9d           #  66    0x3286e  3      OPC=addl_r32_r32    
  cmpl %eax, %r9d            #  67    0x32871  3      OPC=cmpl_r32_r32    
  setb %al                   #  68    0x32874  3      OPC=setb_r8         
  shrl $0x10, %r10d          #  69    0x32877  4      OPC=shrl_r32_imm8   
  movzbl %al, %eax           #  70    0x3287b  3      OPC=movzbl_r32_r8   
  xchgw %ax, %ax             #  71    0x3287e  2      OPC=xchgw_ax_r16    
  addl %r10d, %eax           #  72    0x32880  3      OPC=addl_r32_r32    
  movl %edi, %edi            #  73    0x32883  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %r9d   #  74    0x32885  4      OPC=addl_r32_m32    
  setb %r11b                 #  75    0x32889  4      OPC=setb_r8         
  movl %edi, %edi            #  76    0x3288d  2      OPC=movl_r32_r32    
  movl %r9d, (%r15,%rdi,1)   #  77    0x3288f  4      OPC=movl_m32_r32    
  movzbl %r11b, %r11d        #  78    0x32893  4      OPC=movzbl_r32_r8   
  addl %r11d, %eax           #  79    0x32897  3      OPC=addl_r32_r32    
  addl %r8d, %eax            #  80    0x3289a  3      OPC=addl_r32_r32    
  subl $0x1, %edx            #  81    0x3289d  3      OPC=subl_r32_imm8   
  jne .L_32800               #  82    0x328a0  6      OPC=jne_label_1     
  popq %rbx                  #  83    0x328a6  1      OPC=popq_r64_1      
  popq %r12                  #  84    0x328a7  2      OPC=popq_r64_1      
  popq %r11                  #  85    0x328a9  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  86    0x328ab  7      OPC=andl_r32_imm32  
  nop                        #  87    0x328b2  1      OPC=nop             
  nop                        #  88    0x328b3  1      OPC=nop             
  nop                        #  89    0x328b4  1      OPC=nop             
  nop                        #  90    0x328b5  1      OPC=nop             
  addq %r15, %r11            #  91    0x328b6  3      OPC=addq_r64_r64    
  jmpq %r11                  #  92    0x328b9  3      OPC=jmpq_r64        
  nop                        #  93    0x328bc  1      OPC=nop             
  nop                        #  94    0x328bd  1      OPC=nop             
  nop                        #  95    0x328be  1      OPC=nop             
  nop                        #  96    0x328bf  1      OPC=nop             
  nop                        #  97    0x328c0  1      OPC=nop             
  nop                        #  98    0x328c1  1      OPC=nop             
  nop                        #  99    0x328c2  1      OPC=nop             
  nop                        #  100   0x328c3  1      OPC=nop             
  nop                        #  101   0x328c4  1      OPC=nop             
  nop                        #  102   0x328c5  1      OPC=nop             
  nop                        #  103   0x328c6  1      OPC=nop             
                                                                          
.size __gmpn_addmul_1, .-__gmpn_addmul_1

