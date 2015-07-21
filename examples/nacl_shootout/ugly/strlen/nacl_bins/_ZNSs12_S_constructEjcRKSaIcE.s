  .text
  .globl _ZNSs12_S_constructEjcRKSaIcE
  .type _ZNSs12_S_constructEjcRKSaIcE, @function

#! file-offset 0xed5c0
#! rip-offset  0xad5c0
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  Opcode    
._ZNSs12_S_constructEjcRKSaIcE:          #        0xad5c0  0      OPC=0     
  movq %rbx, -0x20(%rsp)                 #  1     0xad5c0  5      OPC=1138  
  movq %r12, -0x18(%rsp)                 #  2     0xad5c5  5      OPC=1138  
  movl $0x1007358c, %r12d                #  3     0xad5ca  6      OPC=1154  
  movq %r13, -0x10(%rsp)                 #  4     0xad5d0  5      OPC=1138  
  movq %r14, -0x8(%rsp)                  #  5     0xad5d5  5      OPC=1138  
  subl $0x38, %esp                       #  6     0xad5da  3      OPC=2384  
  addq %r15, %rsp                        #  7     0xad5dd  3      OPC=72    
  testl %edi, %edi                       #  8     0xad5e0  2      OPC=2436  
  movl %edi, %ebx                        #  9     0xad5e2  2      OPC=1157  
  movl %esi, %r13d                       #  10    0xad5e4  3      OPC=1157  
  movl %edx, %edx                        #  11    0xad5e7  2      OPC=1157  
  movl %r12d, %r12d                      #  12    0xad5e9  3      OPC=1157  
  je .L_ad640                            #  13    0xad5ec  6      OPC=893   
  nop                                    #  14    0xad5f2  1      OPC=1343  
  nop                                    #  15    0xad5f3  1      OPC=1343  
  xorl %esi, %esi                        #  16    0xad5f4  2      OPC=3758  
  movb %r13b, 0x8(%rsp)                  #  17    0xad5f6  5      OPC=1141  
  nop                                    #  18    0xad5fb  1      OPC=1343  
  nop                                    #  19    0xad5fc  1      OPC=1343  
  nop                                    #  20    0xad5fd  1      OPC=1343  
  nop                                    #  21    0xad5fe  1      OPC=1343  
  nop                                    #  22    0xad5ff  1      OPC=1343  
  nop                                    #  23    0xad600  1      OPC=1343  
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  24    0xad601  5      OPC=260   
  cmpl $0x1, %ebx                        #  25    0xad606  3      OPC=470   
  movl %eax, %r14d                       #  26    0xad609  3      OPC=1157  
  movzbl 0x8(%rsp), %ecx                 #  27    0xad60c  5      OPC=1302  
  leal 0xc(%r14), %r12d                  #  28    0xad611  4      OPC=1066  
  je .L_ad680                            #  29    0xad615  6      OPC=893   
  nop                                    #  30    0xad61b  1      OPC=1343  
  nop                                    #  31    0xad61c  1      OPC=1343  
  movsbl %cl, %esi                       #  32    0xad61d  3      OPC=1282  
  movl %ebx, %edx                        #  33    0xad620  2      OPC=1157  
  movl %r12d, %edi                       #  34    0xad622  3      OPC=1157  
  xchgw %ax, %ax                         #  35    0xad625  2      OPC=3700  
  callq .memset                          #  36    0xad627  5      OPC=260   
.L_ad620:                                #        0xad62c  0      OPC=0     
  movl %r14d, %r14d                      #  37    0xad62c  3      OPC=1157  
  movl %ebx, (%r15,%r14,1)               #  38    0xad62f  4      OPC=1136  
  addl %r12d, %ebx                       #  39    0xad633  3      OPC=67    
  movl %r14d, %r14d                      #  40    0xad636  3      OPC=1157  
  movl $0x0, 0x8(%r15,%r14,1)            #  41    0xad639  9      OPC=1135  
  movl %ebx, %ebx                        #  42    0xad642  2      OPC=1157  
  movb $0x0, (%r15,%rbx,1)               #  43    0xad644  5      OPC=1140  
  nop                                    #  44    0xad649  1      OPC=1343  
  nop                                    #  45    0xad64a  1      OPC=1343  
  nop                                    #  46    0xad64b  1      OPC=1343  
.L_ad640:                                #        0xad64c  0      OPC=0     
  movl %r12d, %eax                       #  47    0xad64c  3      OPC=1157  
  movq 0x18(%rsp), %rbx                  #  48    0xad64f  5      OPC=1161  
  movq 0x20(%rsp), %r12                  #  49    0xad654  5      OPC=1161  
  movq 0x28(%rsp), %r13                  #  50    0xad659  5      OPC=1161  
  movq 0x30(%rsp), %r14                  #  51    0xad65e  5      OPC=1161  
  addl $0x38, %esp                       #  52    0xad663  3      OPC=65    
  addq %r15, %rsp                        #  53    0xad666  3      OPC=72    
  popq %r11                              #  54    0xad669  2      OPC=1694  
  nop                                    #  55    0xad66b  1      OPC=1343  
  andl $0xffffffe0, %r11d                #  56    0xad66c  7      OPC=131   
  nop                                    #  57    0xad673  1      OPC=1343  
  nop                                    #  58    0xad674  1      OPC=1343  
  nop                                    #  59    0xad675  1      OPC=1343  
  nop                                    #  60    0xad676  1      OPC=1343  
  addq %r15, %r11                        #  61    0xad677  3      OPC=72    
  jmpq %r11                              #  62    0xad67a  3      OPC=928   
  nop                                    #  63    0xad67d  1      OPC=1343  
  nop                                    #  64    0xad67e  1      OPC=1343  
  nop                                    #  65    0xad67f  1      OPC=1343  
  nop                                    #  66    0xad680  1      OPC=1343  
  nop                                    #  67    0xad681  1      OPC=1343  
  nop                                    #  68    0xad682  1      OPC=1343  
  nop                                    #  69    0xad683  1      OPC=1343  
  nop                                    #  70    0xad684  1      OPC=1343  
  nop                                    #  71    0xad685  1      OPC=1343  
  nop                                    #  72    0xad686  1      OPC=1343  
  nop                                    #  73    0xad687  1      OPC=1343  
  nop                                    #  74    0xad688  1      OPC=1343  
  nop                                    #  75    0xad689  1      OPC=1343  
  nop                                    #  76    0xad68a  1      OPC=1343  
  nop                                    #  77    0xad68b  1      OPC=1343  
  nop                                    #  78    0xad68c  1      OPC=1343  
  nop                                    #  79    0xad68d  1      OPC=1343  
  nop                                    #  80    0xad68e  1      OPC=1343  
  nop                                    #  81    0xad68f  1      OPC=1343  
  nop                                    #  82    0xad690  1      OPC=1343  
  nop                                    #  83    0xad691  1      OPC=1343  
  nop                                    #  84    0xad692  1      OPC=1343  
.L_ad680:                                #        0xad693  0      OPC=0     
  movl %r12d, %r12d                      #  85    0xad693  3      OPC=1157  
  movb %r13b, (%r15,%r12,1)              #  86    0xad696  4      OPC=1141  
  jmpq .L_ad620                          #  87    0xad69a  5      OPC=930   
  nop                                    #  88    0xad69f  1      OPC=1343  
  nop                                    #  89    0xad6a0  1      OPC=1343  
  nop                                    #  90    0xad6a1  1      OPC=1343  
  nop                                    #  91    0xad6a2  1      OPC=1343  
  nop                                    #  92    0xad6a3  1      OPC=1343  
  nop                                    #  93    0xad6a4  1      OPC=1343  
  nop                                    #  94    0xad6a5  1      OPC=1343  
  nop                                    #  95    0xad6a6  1      OPC=1343  
  nop                                    #  96    0xad6a7  1      OPC=1343  
  nop                                    #  97    0xad6a8  1      OPC=1343  
  nop                                    #  98    0xad6a9  1      OPC=1343  
  nop                                    #  99    0xad6aa  1      OPC=1343  
  nop                                    #  100   0xad6ab  1      OPC=1343  
  nop                                    #  101   0xad6ac  1      OPC=1343  
  nop                                    #  102   0xad6ad  1      OPC=1343  
  nop                                    #  103   0xad6ae  1      OPC=1343  
  nop                                    #  104   0xad6af  1      OPC=1343  
  nop                                    #  105   0xad6b0  1      OPC=1343  
  nop                                    #  106   0xad6b1  1      OPC=1343  
  nop                                    #  107   0xad6b2  1      OPC=1343  
  nop                                    #  108   0xad6b3  1      OPC=1343  
  nop                                    #  109   0xad6b4  1      OPC=1343  
  nop                                    #  110   0xad6b5  1      OPC=1343  
  nop                                    #  111   0xad6b6  1      OPC=1343  
  nop                                    #  112   0xad6b7  1      OPC=1343  
                                                                            
.size _ZNSs12_S_constructEjcRKSaIcE, .-_ZNSs12_S_constructEjcRKSaIcE

