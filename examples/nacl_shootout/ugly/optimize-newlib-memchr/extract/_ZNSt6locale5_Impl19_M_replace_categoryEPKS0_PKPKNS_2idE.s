  .text
  .globl _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE
  .type _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE, @function

#! file-offset 0x9f080
#! rip-offset  0x5f080
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE:    #        0x5f080  0      OPC=<label>         
  pushq %r13                                                  #  1     0x5f080  2      OPC=pushq_r64_1     
  movl %edi, %r13d                                            #  2     0x5f082  3      OPC=movl_r32_r32    
  pushq %r12                                                  #  3     0x5f085  2      OPC=pushq_r64_1     
  movl %esi, %r12d                                            #  4     0x5f087  3      OPC=movl_r32_r32    
  pushq %rbx                                                  #  5     0x5f08a  1      OPC=pushq_r64_1     
  movl %edx, %ebx                                             #  6     0x5f08b  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                             #  7     0x5f08d  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx                                    #  8     0x5f08f  4      OPC=movl_r32_m32    
  testq %rdx, %rdx                                            #  9     0x5f093  3      OPC=testq_r64_r64   
  je .L_5f0e0                                                 #  10    0x5f096  2      OPC=je_label        
  nop                                                         #  11    0x5f098  1      OPC=nop             
  nop                                                         #  12    0x5f099  1      OPC=nop             
  nop                                                         #  13    0x5f09a  1      OPC=nop             
  nop                                                         #  14    0x5f09b  1      OPC=nop             
  nop                                                         #  15    0x5f09c  1      OPC=nop             
  nop                                                         #  16    0x5f09d  1      OPC=nop             
  nop                                                         #  17    0x5f09e  1      OPC=nop             
  nop                                                         #  18    0x5f09f  1      OPC=nop             
.L_5f0a0:                                                     #        0x5f0a0  0      OPC=<label>         
  addl $0x4, %ebx                                             #  19    0x5f0a0  3      OPC=addl_r32_imm8   
  movl %r12d, %esi                                            #  20    0x5f0a3  3      OPC=movl_r32_r32    
  movl %r13d, %edi                                            #  21    0x5f0a6  3      OPC=movl_r32_r32    
  nop                                                         #  22    0x5f0a9  1      OPC=nop             
  nop                                                         #  23    0x5f0aa  1      OPC=nop             
  nop                                                         #  24    0x5f0ab  1      OPC=nop             
  nop                                                         #  25    0x5f0ac  1      OPC=nop             
  nop                                                         #  26    0x5f0ad  1      OPC=nop             
  nop                                                         #  27    0x5f0ae  1      OPC=nop             
  nop                                                         #  28    0x5f0af  1      OPC=nop             
  nop                                                         #  29    0x5f0b0  1      OPC=nop             
  nop                                                         #  30    0x5f0b1  1      OPC=nop             
  nop                                                         #  31    0x5f0b2  1      OPC=nop             
  nop                                                         #  32    0x5f0b3  1      OPC=nop             
  nop                                                         #  33    0x5f0b4  1      OPC=nop             
  nop                                                         #  34    0x5f0b5  1      OPC=nop             
  nop                                                         #  35    0x5f0b6  1      OPC=nop             
  nop                                                         #  36    0x5f0b7  1      OPC=nop             
  nop                                                         #  37    0x5f0b8  1      OPC=nop             
  nop                                                         #  38    0x5f0b9  1      OPC=nop             
  nop                                                         #  39    0x5f0ba  1      OPC=nop             
  callq ._ZNSt6locale5_Impl16_M_replace_facetEPKS0_PKNS_2idE  #  40    0x5f0bb  5      OPC=callq_label     
  movl %ebx, %ebx                                             #  41    0x5f0c0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx                                    #  42    0x5f0c2  4      OPC=movl_r32_m32    
  testq %rdx, %rdx                                            #  43    0x5f0c6  3      OPC=testq_r64_r64   
  jne .L_5f0a0                                                #  44    0x5f0c9  2      OPC=jne_label       
  nop                                                         #  45    0x5f0cb  1      OPC=nop             
  nop                                                         #  46    0x5f0cc  1      OPC=nop             
  nop                                                         #  47    0x5f0cd  1      OPC=nop             
  nop                                                         #  48    0x5f0ce  1      OPC=nop             
  nop                                                         #  49    0x5f0cf  1      OPC=nop             
  nop                                                         #  50    0x5f0d0  1      OPC=nop             
  nop                                                         #  51    0x5f0d1  1      OPC=nop             
  nop                                                         #  52    0x5f0d2  1      OPC=nop             
  nop                                                         #  53    0x5f0d3  1      OPC=nop             
  nop                                                         #  54    0x5f0d4  1      OPC=nop             
  nop                                                         #  55    0x5f0d5  1      OPC=nop             
  nop                                                         #  56    0x5f0d6  1      OPC=nop             
  nop                                                         #  57    0x5f0d7  1      OPC=nop             
  nop                                                         #  58    0x5f0d8  1      OPC=nop             
  nop                                                         #  59    0x5f0d9  1      OPC=nop             
  nop                                                         #  60    0x5f0da  1      OPC=nop             
  nop                                                         #  61    0x5f0db  1      OPC=nop             
  nop                                                         #  62    0x5f0dc  1      OPC=nop             
  nop                                                         #  63    0x5f0dd  1      OPC=nop             
  nop                                                         #  64    0x5f0de  1      OPC=nop             
  nop                                                         #  65    0x5f0df  1      OPC=nop             
.L_5f0e0:                                                     #        0x5f0e0  0      OPC=<label>         
  popq %rbx                                                   #  66    0x5f0e0  1      OPC=popq_r64_1      
  popq %r12                                                   #  67    0x5f0e1  2      OPC=popq_r64_1      
  popq %r13                                                   #  68    0x5f0e3  2      OPC=popq_r64_1      
  popq %r11                                                   #  69    0x5f0e5  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                     #  70    0x5f0e7  7      OPC=andl_r32_imm32  
  nop                                                         #  71    0x5f0ee  1      OPC=nop             
  nop                                                         #  72    0x5f0ef  1      OPC=nop             
  nop                                                         #  73    0x5f0f0  1      OPC=nop             
  nop                                                         #  74    0x5f0f1  1      OPC=nop             
  addq %r15, %r11                                             #  75    0x5f0f2  3      OPC=addq_r64_r64    
  jmpq %r11                                                   #  76    0x5f0f5  3      OPC=jmpq_r64        
  nop                                                         #  77    0x5f0f8  1      OPC=nop             
  nop                                                         #  78    0x5f0f9  1      OPC=nop             
  nop                                                         #  79    0x5f0fa  1      OPC=nop             
  nop                                                         #  80    0x5f0fb  1      OPC=nop             
  nop                                                         #  81    0x5f0fc  1      OPC=nop             
  nop                                                         #  82    0x5f0fd  1      OPC=nop             
  nop                                                         #  83    0x5f0fe  1      OPC=nop             
  nop                                                         #  84    0x5f0ff  1      OPC=nop             
  nop                                                         #  85    0x5f100  1      OPC=nop             
  nop                                                         #  86    0x5f101  1      OPC=nop             
  nop                                                         #  87    0x5f102  1      OPC=nop             
  nop                                                         #  88    0x5f103  1      OPC=nop             
  nop                                                         #  89    0x5f104  1      OPC=nop             
  nop                                                         #  90    0x5f105  1      OPC=nop             
  nop                                                         #  91    0x5f106  1      OPC=nop             
                                                                                                           
.size _ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE, .-_ZNSt6locale5_Impl19_M_replace_categoryEPKS0_PKPKNS_2idE

