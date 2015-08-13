  .text
  .globl Grow
  .type Grow, @function

#! file-offset 0x66fe0
#! rip-offset  0x26fe0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode               
.Grow:                         #        0x26fe0  0      OPC=<label>          
  pushq %rbx                   #  1     0x26fe0  1      OPC=pushq_r64_1      
  movl %edi, %ebx              #  2     0x26fe1  2      OPC=movl_r32_r32     
  movl %ebx, %ebx              #  3     0x26fe3  2      OPC=movl_r32_r32     
  movl 0x4(%r15,%rbx,1), %eax  #  4     0x26fe5  5      OPC=movl_r32_m32     
  cmpl $0x1ff, %eax            #  5     0x26fea  5      OPC=cmpl_eax_imm32   
  jle .L_27040                 #  6     0x26fef  2      OPC=jle_label        
  movl $0x200, %edx            #  7     0x26ff1  5      OPC=movl_r32_imm32   
  nop                          #  8     0x26ff6  1      OPC=nop              
  nop                          #  9     0x26ff7  1      OPC=nop              
  nop                          #  10    0x26ff8  1      OPC=nop              
  nop                          #  11    0x26ff9  1      OPC=nop              
  nop                          #  12    0x26ffa  1      OPC=nop              
  nop                          #  13    0x26ffb  1      OPC=nop              
  nop                          #  14    0x26ffc  1      OPC=nop              
  nop                          #  15    0x26ffd  1      OPC=nop              
  nop                          #  16    0x26ffe  1      OPC=nop              
  nop                          #  17    0x26fff  1      OPC=nop              
.L_27000:                      #        0x27000  0      OPC=<label>          
  leal (%rdx,%rax,1), %eax     #  18    0x27000  3      OPC=leal_r32_m16     
  movl %ebx, %ebx              #  19    0x27003  2      OPC=movl_r32_r32     
  movl %eax, 0x4(%r15,%rbx,1)  #  20    0x27005  5      OPC=movl_m32_r32     
  leal (,%rax,4), %esi         #  21    0x2700a  7      OPC=leal_r32_m16     
  movl %ebx, %ebx              #  22    0x27011  2      OPC=movl_r32_r32     
  movl (%r15,%rbx,1), %edi     #  23    0x27013  4      OPC=movl_r32_m32     
  nop                          #  24    0x27017  1      OPC=nop              
  nop                          #  25    0x27018  1      OPC=nop              
  nop                          #  26    0x27019  1      OPC=nop              
  nop                          #  27    0x2701a  1      OPC=nop              
  callq .realloc               #  28    0x2701b  5      OPC=callq_label      
  movl %eax, %eax              #  29    0x27020  2      OPC=movl_r32_r32     
  movl %ebx, %ebx              #  30    0x27022  2      OPC=movl_r32_r32     
  movl %eax, (%r15,%rbx,1)     #  31    0x27024  4      OPC=movl_m32_r32     
  testq %rax, %rax             #  32    0x27028  3      OPC=testq_r64_r64    
  je .L_27060                  #  33    0x2702b  2      OPC=je_label         
  popq %rbx                    #  34    0x2702d  1      OPC=popq_r64_1       
  popq %r11                    #  35    0x2702e  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d      #  36    0x27030  7      OPC=andl_r32_imm32   
  nop                          #  37    0x27037  1      OPC=nop              
  nop                          #  38    0x27038  1      OPC=nop              
  nop                          #  39    0x27039  1      OPC=nop              
  nop                          #  40    0x2703a  1      OPC=nop              
  addq %r15, %r11              #  41    0x2703b  3      OPC=addq_r64_r64     
  jmpq %r11                    #  42    0x2703e  3      OPC=jmpq_r64         
  nop                          #  43    0x27041  1      OPC=nop              
  nop                          #  44    0x27042  1      OPC=nop              
  nop                          #  45    0x27043  1      OPC=nop              
  nop                          #  46    0x27044  1      OPC=nop              
  nop                          #  47    0x27045  1      OPC=nop              
  nop                          #  48    0x27046  1      OPC=nop              
.L_27040:                      #        0x27047  0      OPC=<label>          
  movl $0x2, %edx              #  49    0x27047  5      OPC=movl_r32_imm32   
  cmpl $0x2, %eax              #  50    0x2704c  3      OPC=cmpl_r32_imm8    
  cmovgel %eax, %edx           #  51    0x2704f  3      OPC=cmovgel_r32_r32  
  jmpq .L_27000                #  52    0x27052  2      OPC=jmpq_label       
  nop                          #  53    0x27054  1      OPC=nop              
  nop                          #  54    0x27055  1      OPC=nop              
  nop                          #  55    0x27056  1      OPC=nop              
  nop                          #  56    0x27057  1      OPC=nop              
  nop                          #  57    0x27058  1      OPC=nop              
  nop                          #  58    0x27059  1      OPC=nop              
  nop                          #  59    0x2705a  1      OPC=nop              
  nop                          #  60    0x2705b  1      OPC=nop              
  nop                          #  61    0x2705c  1      OPC=nop              
  nop                          #  62    0x2705d  1      OPC=nop              
  nop                          #  63    0x2705e  1      OPC=nop              
  nop                          #  64    0x2705f  1      OPC=nop              
  nop                          #  65    0x27060  1      OPC=nop              
  nop                          #  66    0x27061  1      OPC=nop              
  nop                          #  67    0x27062  1      OPC=nop              
  nop                          #  68    0x27063  1      OPC=nop              
  nop                          #  69    0x27064  1      OPC=nop              
  nop                          #  70    0x27065  1      OPC=nop              
  nop                          #  71    0x27066  1      OPC=nop              
.L_27060:                      #        0x27067  0      OPC=<label>          
  movl $0x10020ae1, %edi       #  72    0x27067  5      OPC=movl_r32_imm32   
  popq %rbx                    #  73    0x2706c  1      OPC=popq_r64_1       
  jmpq .Error                  #  74    0x2706d  5      OPC=jmpq_label_1     
  nop                          #  75    0x27072  1      OPC=nop              
  nop                          #  76    0x27073  1      OPC=nop              
  nop                          #  77    0x27074  1      OPC=nop              
  nop                          #  78    0x27075  1      OPC=nop              
  nop                          #  79    0x27076  1      OPC=nop              
  nop                          #  80    0x27077  1      OPC=nop              
  nop                          #  81    0x27078  1      OPC=nop              
  nop                          #  82    0x27079  1      OPC=nop              
  nop                          #  83    0x2707a  1      OPC=nop              
  nop                          #  84    0x2707b  1      OPC=nop              
  nop                          #  85    0x2707c  1      OPC=nop              
  nop                          #  86    0x2707d  1      OPC=nop              
  nop                          #  87    0x2707e  1      OPC=nop              
  nop                          #  88    0x2707f  1      OPC=nop              
  nop                          #  89    0x27080  1      OPC=nop              
  nop                          #  90    0x27081  1      OPC=nop              
  nop                          #  91    0x27082  1      OPC=nop              
  nop                          #  92    0x27083  1      OPC=nop              
  nop                          #  93    0x27084  1      OPC=nop              
  nop                          #  94    0x27085  1      OPC=nop              
  nop                          #  95    0x27086  1      OPC=nop              
                                                                             
.size Grow, .-Grow

