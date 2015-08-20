  .text
  .globl _ZNSt8numpunctIcED1Ev
  .type _ZNSt8numpunctIcED1Ev, @function

#! file-offset 0x11c880
#! rip-offset  0xdc880
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcED1Ev:            #        0xdc880  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc880  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc881  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc883  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc886  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc889  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc88b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc890  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdc892  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc89a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc89d  1      OPC=nop             
  nop                              #  11    0xdc89e  1      OPC=nop             
  nop                              #  12    0xdc89f  1      OPC=nop             
  je .L_dc8c0                      #  13    0xdc8a0  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc8a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc8a4  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc8a8  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc8aa  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc8af  1      OPC=nop             
  nop                              #  19    0xdc8b0  1      OPC=nop             
  nop                              #  20    0xdc8b1  1      OPC=nop             
  nop                              #  21    0xdc8b2  1      OPC=nop             
  nop                              #  22    0xdc8b3  1      OPC=nop             
  nop                              #  23    0xdc8b4  1      OPC=nop             
  nop                              #  24    0xdc8b5  1      OPC=nop             
  nop                              #  25    0xdc8b6  1      OPC=nop             
  nop                              #  26    0xdc8b7  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc8b8  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc8be  1      OPC=nop             
  nop                              #  29    0xdc8bf  1      OPC=nop             
  nop                              #  30    0xdc8c0  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc8c1  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc8c4  2      OPC=callq_r64       
.L_dc8c0:                          #        0xdc8c6  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc8c6  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc8c8  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc8cb  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc8ce  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc8cf  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc8d4  1      OPC=nop             
  nop                              #  39    0xdc8d5  1      OPC=nop             
  nop                              #  40    0xdc8d6  1      OPC=nop             
  nop                              #  41    0xdc8d7  1      OPC=nop             
  nop                              #  42    0xdc8d8  1      OPC=nop             
  nop                              #  43    0xdc8d9  1      OPC=nop             
  nop                              #  44    0xdc8da  1      OPC=nop             
  nop                              #  45    0xdc8db  1      OPC=nop             
  nop                              #  46    0xdc8dc  1      OPC=nop             
  nop                              #  47    0xdc8dd  1      OPC=nop             
  nop                              #  48    0xdc8de  1      OPC=nop             
  nop                              #  49    0xdc8df  1      OPC=nop             
  nop                              #  50    0xdc8e0  1      OPC=nop             
  nop                              #  51    0xdc8e1  1      OPC=nop             
  nop                              #  52    0xdc8e2  1      OPC=nop             
  nop                              #  53    0xdc8e3  1      OPC=nop             
  nop                              #  54    0xdc8e4  1      OPC=nop             
  nop                              #  55    0xdc8e5  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc8e6  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc8e8  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc8ec  1      OPC=nop             
  nop                              #  59    0xdc8ed  1      OPC=nop             
  nop                              #  60    0xdc8ee  1      OPC=nop             
  nop                              #  61    0xdc8ef  1      OPC=nop             
  nop                              #  62    0xdc8f0  1      OPC=nop             
  nop                              #  63    0xdc8f1  1      OPC=nop             
  nop                              #  64    0xdc8f2  1      OPC=nop             
  nop                              #  65    0xdc8f3  1      OPC=nop             
  nop                              #  66    0xdc8f4  1      OPC=nop             
  nop                              #  67    0xdc8f5  1      OPC=nop             
  nop                              #  68    0xdc8f6  1      OPC=nop             
  nop                              #  69    0xdc8f7  1      OPC=nop             
  nop                              #  70    0xdc8f8  1      OPC=nop             
  nop                              #  71    0xdc8f9  1      OPC=nop             
  nop                              #  72    0xdc8fa  1      OPC=nop             
  nop                              #  73    0xdc8fb  1      OPC=nop             
  nop                              #  74    0xdc8fc  1      OPC=nop             
  nop                              #  75    0xdc8fd  1      OPC=nop             
  nop                              #  76    0xdc8fe  1      OPC=nop             
  nop                              #  77    0xdc8ff  1      OPC=nop             
  nop                              #  78    0xdc900  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc901  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc906  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc90a  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc90c  1      OPC=nop             
  nop                              #  83    0xdc90d  1      OPC=nop             
  nop                              #  84    0xdc90e  1      OPC=nop             
  nop                              #  85    0xdc90f  1      OPC=nop             
  nop                              #  86    0xdc910  1      OPC=nop             
  nop                              #  87    0xdc911  1      OPC=nop             
  nop                              #  88    0xdc912  1      OPC=nop             
  nop                              #  89    0xdc913  1      OPC=nop             
  nop                              #  90    0xdc914  1      OPC=nop             
  nop                              #  91    0xdc915  1      OPC=nop             
  nop                              #  92    0xdc916  1      OPC=nop             
  nop                              #  93    0xdc917  1      OPC=nop             
  nop                              #  94    0xdc918  1      OPC=nop             
  nop                              #  95    0xdc919  1      OPC=nop             
  nop                              #  96    0xdc91a  1      OPC=nop             
  nop                              #  97    0xdc91b  1      OPC=nop             
  nop                              #  98    0xdc91c  1      OPC=nop             
  nop                              #  99    0xdc91d  1      OPC=nop             
  nop                              #  100   0xdc91e  1      OPC=nop             
  nop                              #  101   0xdc91f  1      OPC=nop             
  nop                              #  102   0xdc920  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc921  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIcED1Ev, .-_ZNSt8numpunctIcED1Ev

