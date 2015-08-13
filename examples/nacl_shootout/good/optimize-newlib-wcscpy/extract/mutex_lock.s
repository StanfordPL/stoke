  .text
  .globl mutex_lock
  .type mutex_lock, @function

#! file-offset 0x6d480
#! rip-offset  0x2d480
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  Opcode              
.mutex_lock:                      #        0x2d480  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)          #  1     0x2d480  5      OPC=movq_m64_r64    
  movl %edi, %ebx                 #  2     0x2d485  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)           #  3     0x2d487  5      OPC=movq_m64_r64    
  subl $0x28, %esp                #  4     0x2d48c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                 #  5     0x2d48f  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                 #  6     0x2d492  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rbx,1), %eax     #  7     0x2d494  5      OPC=movl_r32_m32    
  movl %edx, %edx                 #  8     0x2d499  2      OPC=movl_r32_r32    
  testl %eax, %eax                #  9     0x2d49b  2      OPC=testl_r32_r32   
  nop                             #  10    0x2d49d  1      OPC=nop             
  nop                             #  11    0x2d49e  1      OPC=nop             
  nop                             #  12    0x2d49f  1      OPC=nop             
  jne .L_2d4c0                    #  13    0x2d4a0  2      OPC=jne_label       
  movl %ebx, %edi                 #  14    0x2d4a2  2      OPC=movl_r32_r32    
  movq 0x20(%rsp), %r12           #  15    0x2d4a4  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx           #  16    0x2d4a9  5      OPC=movq_r64_m64    
  addl $0x28, %esp                #  17    0x2d4ae  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  18    0x2d4b1  3      OPC=addq_r64_r64    
  jmpq .mutex_lock_nonrecursive   #  19    0x2d4b4  5      OPC=jmpq_label_1    
  nop                             #  20    0x2d4b9  1      OPC=nop             
  nop                             #  21    0x2d4ba  1      OPC=nop             
  nop                             #  22    0x2d4bb  1      OPC=nop             
  nop                             #  23    0x2d4bc  1      OPC=nop             
  nop                             #  24    0x2d4bd  1      OPC=nop             
  nop                             #  25    0x2d4be  1      OPC=nop             
  nop                             #  26    0x2d4bf  1      OPC=nop             
.L_2d4c0:                         #        0x2d4c0  0      OPC=<label>         
  movq %rdx, (%rsp)               #  27    0x2d4c0  4      OPC=movq_m64_r64    
  movl %esi, 0x8(%rsp)            #  28    0x2d4c4  4      OPC=movl_m32_r32    
  nop                             #  29    0x2d4c8  1      OPC=nop             
  nop                             #  30    0x2d4c9  1      OPC=nop             
  nop                             #  31    0x2d4ca  1      OPC=nop             
  nop                             #  32    0x2d4cb  1      OPC=nop             
  nop                             #  33    0x2d4cc  1      OPC=nop             
  nop                             #  34    0x2d4cd  1      OPC=nop             
  nop                             #  35    0x2d4ce  1      OPC=nop             
  nop                             #  36    0x2d4cf  1      OPC=nop             
  nop                             #  37    0x2d4d0  1      OPC=nop             
  nop                             #  38    0x2d4d1  1      OPC=nop             
  nop                             #  39    0x2d4d2  1      OPC=nop             
  nop                             #  40    0x2d4d3  1      OPC=nop             
  nop                             #  41    0x2d4d4  1      OPC=nop             
  nop                             #  42    0x2d4d5  1      OPC=nop             
  nop                             #  43    0x2d4d6  1      OPC=nop             
  nop                             #  44    0x2d4d7  1      OPC=nop             
  nop                             #  45    0x2d4d8  1      OPC=nop             
  nop                             #  46    0x2d4d9  1      OPC=nop             
  nop                             #  47    0x2d4da  1      OPC=nop             
  callq .pthread_self             #  48    0x2d4db  5      OPC=callq_label     
  movl %eax, %r12d                #  49    0x2d4e0  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                 #  50    0x2d4e3  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %eax     #  51    0x2d4e5  5      OPC=movl_r32_m32    
  movq (%rsp), %rdx               #  52    0x2d4ea  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %esi            #  53    0x2d4ee  4      OPC=movl_r32_m32    
  cmpl %r12d, %eax                #  54    0x2d4f2  3      OPC=cmpl_r32_r32    
  je .L_2d540                     #  55    0x2d4f5  2      OPC=je_label        
  movl %ebx, %edi                 #  56    0x2d4f7  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                  #  57    0x2d4f9  2      OPC=xchgw_ax_r16    
  callq .mutex_lock_nonrecursive  #  58    0x2d4fb  5      OPC=callq_label     
  testl %eax, %eax                #  59    0x2d500  2      OPC=testl_r32_r32   
  jne .L_2d520                    #  60    0x2d502  2      OPC=jne_label       
  movl %ebx, %ebx                 #  61    0x2d504  2      OPC=movl_r32_r32    
  movl %r12d, 0x8(%r15,%rbx,1)    #  62    0x2d506  5      OPC=movl_m32_r32    
  movl %ebx, %ebx                 #  63    0x2d50b  2      OPC=movl_r32_r32    
  movl $0x1, 0xc(%r15,%rbx,1)     #  64    0x2d50d  9      OPC=movl_m32_imm32  
  nop                             #  65    0x2d516  1      OPC=nop             
  nop                             #  66    0x2d517  1      OPC=nop             
  nop                             #  67    0x2d518  1      OPC=nop             
  nop                             #  68    0x2d519  1      OPC=nop             
  nop                             #  69    0x2d51a  1      OPC=nop             
  nop                             #  70    0x2d51b  1      OPC=nop             
  nop                             #  71    0x2d51c  1      OPC=nop             
  nop                             #  72    0x2d51d  1      OPC=nop             
  nop                             #  73    0x2d51e  1      OPC=nop             
  nop                             #  74    0x2d51f  1      OPC=nop             
.L_2d520:                         #        0x2d520  0      OPC=<label>         
  movq 0x18(%rsp), %rbx           #  75    0x2d520  5      OPC=movq_r64_m64    
  movq 0x20(%rsp), %r12           #  76    0x2d525  5      OPC=movq_r64_m64    
  addl $0x28, %esp                #  77    0x2d52a  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  78    0x2d52d  3      OPC=addq_r64_r64    
  popq %r11                       #  79    0x2d530  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d         #  80    0x2d532  7      OPC=andl_r32_imm32  
  nop                             #  81    0x2d539  1      OPC=nop             
  nop                             #  82    0x2d53a  1      OPC=nop             
  nop                             #  83    0x2d53b  1      OPC=nop             
  nop                             #  84    0x2d53c  1      OPC=nop             
  addq %r15, %r11                 #  85    0x2d53d  3      OPC=addq_r64_r64    
  jmpq %r11                       #  86    0x2d540  3      OPC=jmpq_r64        
  nop                             #  87    0x2d543  1      OPC=nop             
  nop                             #  88    0x2d544  1      OPC=nop             
  nop                             #  89    0x2d545  1      OPC=nop             
  nop                             #  90    0x2d546  1      OPC=nop             
.L_2d540:                         #        0x2d547  0      OPC=<label>         
  movl %ebx, %ebx                 #  91    0x2d547  2      OPC=movl_r32_r32    
  cmpl $0x2, 0x4(%r15,%rbx,1)     #  92    0x2d549  6      OPC=cmpl_m32_imm8   
  movl $0x23, %eax                #  93    0x2d54f  5      OPC=movl_r32_imm32  
  je .L_2d520                     #  94    0x2d554  2      OPC=je_label        
  movl %ebx, %ebx                 #  95    0x2d556  2      OPC=movl_r32_r32    
  addl $0x1, 0xc(%r15,%rbx,1)     #  96    0x2d558  6      OPC=addl_m32_imm8   
  xorb %al, %al                   #  97    0x2d55e  2      OPC=xorb_r8_r8      
  jmpq .L_2d520                   #  98    0x2d560  2      OPC=jmpq_label      
  nop                             #  99    0x2d562  1      OPC=nop             
  nop                             #  100   0x2d563  1      OPC=nop             
  nop                             #  101   0x2d564  1      OPC=nop             
  nop                             #  102   0x2d565  1      OPC=nop             
  nop                             #  103   0x2d566  1      OPC=nop             
                                                                               
.size mutex_lock, .-mutex_lock

