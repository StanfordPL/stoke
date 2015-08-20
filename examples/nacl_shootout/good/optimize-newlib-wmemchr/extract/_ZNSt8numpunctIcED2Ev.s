  .text
  .globl _ZNSt8numpunctIcED2Ev
  .type _ZNSt8numpunctIcED2Ev, @function

#! file-offset 0x11c920
#! rip-offset  0xdc920
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8numpunctIcED2Ev:            #        0xdc920  0      OPC=<label>         
  pushq %rbx                       #  1     0xdc920  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xdc921  2      OPC=movl_r32_r32    
  subl $0x10, %esp                 #  3     0xdc923  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  4     0xdc926  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  5     0xdc929  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rbx,1), %edi      #  6     0xdc92b  5      OPC=movl_r32_m32    
  movl %ebx, %ebx                  #  7     0xdc930  2      OPC=movl_r32_r32    
  movl $0x1003afa8, (%r15,%rbx,1)  #  8     0xdc932  8      OPC=movl_m32_imm32  
  testq %rdi, %rdi                 #  9     0xdc93a  3      OPC=testq_r64_r64   
  nop                              #  10    0xdc93d  1      OPC=nop             
  nop                              #  11    0xdc93e  1      OPC=nop             
  nop                              #  12    0xdc93f  1      OPC=nop             
  je .L_dc960                      #  13    0xdc940  2      OPC=je_label        
  movl %edi, %edi                  #  14    0xdc942  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax         #  15    0xdc944  4      OPC=movl_r32_m32    
  movl %eax, %eax                  #  16    0xdc948  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rax,1), %eax      #  17    0xdc94a  5      OPC=movl_r32_m32    
  nop                              #  18    0xdc94f  1      OPC=nop             
  nop                              #  19    0xdc950  1      OPC=nop             
  nop                              #  20    0xdc951  1      OPC=nop             
  nop                              #  21    0xdc952  1      OPC=nop             
  nop                              #  22    0xdc953  1      OPC=nop             
  nop                              #  23    0xdc954  1      OPC=nop             
  nop                              #  24    0xdc955  1      OPC=nop             
  nop                              #  25    0xdc956  1      OPC=nop             
  nop                              #  26    0xdc957  1      OPC=nop             
  andl $0xffffffe0, %eax           #  27    0xdc958  6      OPC=andl_r32_imm32  
  nop                              #  28    0xdc95e  1      OPC=nop             
  nop                              #  29    0xdc95f  1      OPC=nop             
  nop                              #  30    0xdc960  1      OPC=nop             
  addq %r15, %rax                  #  31    0xdc961  3      OPC=addq_r64_r64    
  callq %rax                       #  32    0xdc964  2      OPC=callq_r64       
.L_dc960:                          #        0xdc966  0      OPC=<label>         
  movl %ebx, %edi                  #  33    0xdc966  2      OPC=movl_r32_r32    
  addl $0x10, %esp                 #  34    0xdc968  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  35    0xdc96b  3      OPC=addq_r64_r64    
  popq %rbx                        #  36    0xdc96e  1      OPC=popq_r64_1      
  jmpq ._ZNSt6locale5facetD2Ev     #  37    0xdc96f  5      OPC=jmpq_label_1    
  nop                              #  38    0xdc974  1      OPC=nop             
  nop                              #  39    0xdc975  1      OPC=nop             
  nop                              #  40    0xdc976  1      OPC=nop             
  nop                              #  41    0xdc977  1      OPC=nop             
  nop                              #  42    0xdc978  1      OPC=nop             
  nop                              #  43    0xdc979  1      OPC=nop             
  nop                              #  44    0xdc97a  1      OPC=nop             
  nop                              #  45    0xdc97b  1      OPC=nop             
  nop                              #  46    0xdc97c  1      OPC=nop             
  nop                              #  47    0xdc97d  1      OPC=nop             
  nop                              #  48    0xdc97e  1      OPC=nop             
  nop                              #  49    0xdc97f  1      OPC=nop             
  nop                              #  50    0xdc980  1      OPC=nop             
  nop                              #  51    0xdc981  1      OPC=nop             
  nop                              #  52    0xdc982  1      OPC=nop             
  nop                              #  53    0xdc983  1      OPC=nop             
  nop                              #  54    0xdc984  1      OPC=nop             
  nop                              #  55    0xdc985  1      OPC=nop             
  movl %ebx, %edi                  #  56    0xdc986  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  57    0xdc988  4      OPC=movl_m32_r32    
  nop                              #  58    0xdc98c  1      OPC=nop             
  nop                              #  59    0xdc98d  1      OPC=nop             
  nop                              #  60    0xdc98e  1      OPC=nop             
  nop                              #  61    0xdc98f  1      OPC=nop             
  nop                              #  62    0xdc990  1      OPC=nop             
  nop                              #  63    0xdc991  1      OPC=nop             
  nop                              #  64    0xdc992  1      OPC=nop             
  nop                              #  65    0xdc993  1      OPC=nop             
  nop                              #  66    0xdc994  1      OPC=nop             
  nop                              #  67    0xdc995  1      OPC=nop             
  nop                              #  68    0xdc996  1      OPC=nop             
  nop                              #  69    0xdc997  1      OPC=nop             
  nop                              #  70    0xdc998  1      OPC=nop             
  nop                              #  71    0xdc999  1      OPC=nop             
  nop                              #  72    0xdc99a  1      OPC=nop             
  nop                              #  73    0xdc99b  1      OPC=nop             
  nop                              #  74    0xdc99c  1      OPC=nop             
  nop                              #  75    0xdc99d  1      OPC=nop             
  nop                              #  76    0xdc99e  1      OPC=nop             
  nop                              #  77    0xdc99f  1      OPC=nop             
  nop                              #  78    0xdc9a0  1      OPC=nop             
  callq ._ZNSt6locale5facetD2Ev    #  79    0xdc9a1  5      OPC=callq_label     
  movl 0x8(%rsp), %eax             #  80    0xdc9a6  4      OPC=movl_r32_m32    
  movl %eax, %edi                  #  81    0xdc9aa  2      OPC=movl_r32_r32    
  nop                              #  82    0xdc9ac  1      OPC=nop             
  nop                              #  83    0xdc9ad  1      OPC=nop             
  nop                              #  84    0xdc9ae  1      OPC=nop             
  nop                              #  85    0xdc9af  1      OPC=nop             
  nop                              #  86    0xdc9b0  1      OPC=nop             
  nop                              #  87    0xdc9b1  1      OPC=nop             
  nop                              #  88    0xdc9b2  1      OPC=nop             
  nop                              #  89    0xdc9b3  1      OPC=nop             
  nop                              #  90    0xdc9b4  1      OPC=nop             
  nop                              #  91    0xdc9b5  1      OPC=nop             
  nop                              #  92    0xdc9b6  1      OPC=nop             
  nop                              #  93    0xdc9b7  1      OPC=nop             
  nop                              #  94    0xdc9b8  1      OPC=nop             
  nop                              #  95    0xdc9b9  1      OPC=nop             
  nop                              #  96    0xdc9ba  1      OPC=nop             
  nop                              #  97    0xdc9bb  1      OPC=nop             
  nop                              #  98    0xdc9bc  1      OPC=nop             
  nop                              #  99    0xdc9bd  1      OPC=nop             
  nop                              #  100   0xdc9be  1      OPC=nop             
  nop                              #  101   0xdc9bf  1      OPC=nop             
  nop                              #  102   0xdc9c0  1      OPC=nop             
  callq ._Unwind_Resume            #  103   0xdc9c1  5      OPC=callq_label     
                                                                                
.size _ZNSt8numpunctIcED2Ev, .-_ZNSt8numpunctIcED2Ev

