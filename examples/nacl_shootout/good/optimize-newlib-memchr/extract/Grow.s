  .text
  .globl Grow
  .type Grow, @function

#! file-offset 0x67560
#! rip-offset  0x27560
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode               
.Grow:                         #        0x27560  0      OPC=<label>          
  pushq %rbx                   #  1     0x27560  1      OPC=pushq_r64_1      
  movl %edi, %ebx              #  2     0x27561  2      OPC=movl_r32_r32     
  movl %ebx, %ebx              #  3     0x27563  2      OPC=movl_r32_r32     
  movl 0x4(%r15,%rbx,1), %eax  #  4     0x27565  5      OPC=movl_r32_m32     
  cmpl $0x1ff, %eax            #  5     0x2756a  5      OPC=cmpl_eax_imm32   
  jle .L_275c0                 #  6     0x2756f  2      OPC=jle_label        
  movl $0x200, %edx            #  7     0x27571  5      OPC=movl_r32_imm32   
  nop                          #  8     0x27576  1      OPC=nop              
  nop                          #  9     0x27577  1      OPC=nop              
  nop                          #  10    0x27578  1      OPC=nop              
  nop                          #  11    0x27579  1      OPC=nop              
  nop                          #  12    0x2757a  1      OPC=nop              
  nop                          #  13    0x2757b  1      OPC=nop              
  nop                          #  14    0x2757c  1      OPC=nop              
  nop                          #  15    0x2757d  1      OPC=nop              
  nop                          #  16    0x2757e  1      OPC=nop              
  nop                          #  17    0x2757f  1      OPC=nop              
.L_27580:                      #        0x27580  0      OPC=<label>          
  leal (%rdx,%rax,1), %eax     #  18    0x27580  3      OPC=leal_r32_m16     
  movl %ebx, %ebx              #  19    0x27583  2      OPC=movl_r32_r32     
  movl %eax, 0x4(%r15,%rbx,1)  #  20    0x27585  5      OPC=movl_m32_r32     
  leal (,%rax,4), %esi         #  21    0x2758a  7      OPC=leal_r32_m16     
  movl %ebx, %ebx              #  22    0x27591  2      OPC=movl_r32_r32     
  movl (%r15,%rbx,1), %edi     #  23    0x27593  4      OPC=movl_r32_m32     
  nop                          #  24    0x27597  1      OPC=nop              
  nop                          #  25    0x27598  1      OPC=nop              
  nop                          #  26    0x27599  1      OPC=nop              
  nop                          #  27    0x2759a  1      OPC=nop              
  callq .realloc               #  28    0x2759b  5      OPC=callq_label      
  movl %eax, %eax              #  29    0x275a0  2      OPC=movl_r32_r32     
  movl %ebx, %ebx              #  30    0x275a2  2      OPC=movl_r32_r32     
  movl %eax, (%r15,%rbx,1)     #  31    0x275a4  4      OPC=movl_m32_r32     
  testq %rax, %rax             #  32    0x275a8  3      OPC=testq_r64_r64    
  je .L_275e0                  #  33    0x275ab  2      OPC=je_label         
  popq %rbx                    #  34    0x275ad  1      OPC=popq_r64_1       
  popq %r11                    #  35    0x275ae  2      OPC=popq_r64_1       
  andl $0xffffffe0, %r11d      #  36    0x275b0  7      OPC=andl_r32_imm32   
  nop                          #  37    0x275b7  1      OPC=nop              
  nop                          #  38    0x275b8  1      OPC=nop              
  nop                          #  39    0x275b9  1      OPC=nop              
  nop                          #  40    0x275ba  1      OPC=nop              
  addq %r15, %r11              #  41    0x275bb  3      OPC=addq_r64_r64     
  jmpq %r11                    #  42    0x275be  3      OPC=jmpq_r64         
  nop                          #  43    0x275c1  1      OPC=nop              
  nop                          #  44    0x275c2  1      OPC=nop              
  nop                          #  45    0x275c3  1      OPC=nop              
  nop                          #  46    0x275c4  1      OPC=nop              
  nop                          #  47    0x275c5  1      OPC=nop              
  nop                          #  48    0x275c6  1      OPC=nop              
.L_275c0:                      #        0x275c7  0      OPC=<label>          
  movl $0x2, %edx              #  49    0x275c7  5      OPC=movl_r32_imm32   
  cmpl $0x2, %eax              #  50    0x275cc  3      OPC=cmpl_r32_imm8    
  cmovgel %eax, %edx           #  51    0x275cf  3      OPC=cmovgel_r32_r32  
  jmpq .L_27580                #  52    0x275d2  2      OPC=jmpq_label       
  nop                          #  53    0x275d4  1      OPC=nop              
  nop                          #  54    0x275d5  1      OPC=nop              
  nop                          #  55    0x275d6  1      OPC=nop              
  nop                          #  56    0x275d7  1      OPC=nop              
  nop                          #  57    0x275d8  1      OPC=nop              
  nop                          #  58    0x275d9  1      OPC=nop              
  nop                          #  59    0x275da  1      OPC=nop              
  nop                          #  60    0x275db  1      OPC=nop              
  nop                          #  61    0x275dc  1      OPC=nop              
  nop                          #  62    0x275dd  1      OPC=nop              
  nop                          #  63    0x275de  1      OPC=nop              
  nop                          #  64    0x275df  1      OPC=nop              
  nop                          #  65    0x275e0  1      OPC=nop              
  nop                          #  66    0x275e1  1      OPC=nop              
  nop                          #  67    0x275e2  1      OPC=nop              
  nop                          #  68    0x275e3  1      OPC=nop              
  nop                          #  69    0x275e4  1      OPC=nop              
  nop                          #  70    0x275e5  1      OPC=nop              
  nop                          #  71    0x275e6  1      OPC=nop              
.L_275e0:                      #        0x275e7  0      OPC=<label>          
  movl $0x10020ae1, %edi       #  72    0x275e7  5      OPC=movl_r32_imm32   
  popq %rbx                    #  73    0x275ec  1      OPC=popq_r64_1       
  jmpq .Error                  #  74    0x275ed  5      OPC=jmpq_label_1     
  nop                          #  75    0x275f2  1      OPC=nop              
  nop                          #  76    0x275f3  1      OPC=nop              
  nop                          #  77    0x275f4  1      OPC=nop              
  nop                          #  78    0x275f5  1      OPC=nop              
  nop                          #  79    0x275f6  1      OPC=nop              
  nop                          #  80    0x275f7  1      OPC=nop              
  nop                          #  81    0x275f8  1      OPC=nop              
  nop                          #  82    0x275f9  1      OPC=nop              
  nop                          #  83    0x275fa  1      OPC=nop              
  nop                          #  84    0x275fb  1      OPC=nop              
  nop                          #  85    0x275fc  1      OPC=nop              
  nop                          #  86    0x275fd  1      OPC=nop              
  nop                          #  87    0x275fe  1      OPC=nop              
  nop                          #  88    0x275ff  1      OPC=nop              
  nop                          #  89    0x27600  1      OPC=nop              
  nop                          #  90    0x27601  1      OPC=nop              
  nop                          #  91    0x27602  1      OPC=nop              
  nop                          #  92    0x27603  1      OPC=nop              
  nop                          #  93    0x27604  1      OPC=nop              
  nop                          #  94    0x27605  1      OPC=nop              
  nop                          #  95    0x27606  1      OPC=nop              
                                                                             
.size Grow, .-Grow

