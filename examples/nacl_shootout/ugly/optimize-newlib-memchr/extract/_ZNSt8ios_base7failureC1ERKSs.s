  .text
  .globl _ZNSt8ios_base7failureC1ERKSs
  .type _ZNSt8ios_base7failureC1ERKSs, @function

#! file-offset 0x129040
#! rip-offset  0xe9040
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7failureC1ERKSs:    #        0xe9040  0      OPC=<label>         
  pushq %rbx                       #  1     0xe9040  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe9041  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe9043  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe9045  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe9048  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe904b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe904e  2      OPC=movl_r32_r32    
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe9050  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe9058  1      OPC=nop             
  nop                              #  10    0xe9059  1      OPC=nop             
  nop                              #  11    0xe905a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe905b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe9060  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe9063  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe9066  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe9067  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe9069  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe9070  1      OPC=nop             
  nop                              #  19    0xe9071  1      OPC=nop             
  nop                              #  20    0xe9072  1      OPC=nop             
  nop                              #  21    0xe9073  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe9074  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe9077  3      OPC=jmpq_r64        
  nop                              #  24    0xe907a  1      OPC=nop             
  nop                              #  25    0xe907b  1      OPC=nop             
  nop                              #  26    0xe907c  1      OPC=nop             
  nop                              #  27    0xe907d  1      OPC=nop             
  nop                              #  28    0xe907e  1      OPC=nop             
  nop                              #  29    0xe907f  1      OPC=nop             
  nop                              #  30    0xe9080  1      OPC=nop             
  nop                              #  31    0xe9081  1      OPC=nop             
  nop                              #  32    0xe9082  1      OPC=nop             
  nop                              #  33    0xe9083  1      OPC=nop             
  nop                              #  34    0xe9084  1      OPC=nop             
  nop                              #  35    0xe9085  1      OPC=nop             
  nop                              #  36    0xe9086  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe9087  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe9089  4      OPC=movl_m32_r32    
  movq %rdx, (%rsp)                #  39    0xe908d  4      OPC=movq_m64_r64    
  xchgw %ax, %ax                   #  40    0xe9091  2      OPC=xchgw_ax_r16    
  nop                              #  41    0xe9093  1      OPC=nop             
  nop                              #  42    0xe9094  1      OPC=nop             
  nop                              #  43    0xe9095  1      OPC=nop             
  nop                              #  44    0xe9096  1      OPC=nop             
  nop                              #  45    0xe9097  1      OPC=nop             
  nop                              #  46    0xe9098  1      OPC=nop             
  nop                              #  47    0xe9099  1      OPC=nop             
  nop                              #  48    0xe909a  1      OPC=nop             
  nop                              #  49    0xe909b  1      OPC=nop             
  nop                              #  50    0xe909c  1      OPC=nop             
  nop                              #  51    0xe909d  1      OPC=nop             
  nop                              #  52    0xe909e  1      OPC=nop             
  nop                              #  53    0xe909f  1      OPC=nop             
  nop                              #  54    0xe90a0  1      OPC=nop             
  nop                              #  55    0xe90a1  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  56    0xe90a2  5      OPC=callq_label     
  movq (%rsp), %rdx                #  57    0xe90a7  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %eax             #  58    0xe90ab  4      OPC=movl_r32_m32    
  cmpq $0xff, %rdx                 #  59    0xe90af  4      OPC=cmpq_r64_imm8   
  je .L_e90c0                      #  60    0xe90b3  2      OPC=je_label        
  movl %eax, %edi                  #  61    0xe90b5  2      OPC=movl_r32_r32    
  nop                              #  62    0xe90b7  1      OPC=nop             
  nop                              #  63    0xe90b8  1      OPC=nop             
  nop                              #  64    0xe90b9  1      OPC=nop             
  nop                              #  65    0xe90ba  1      OPC=nop             
  nop                              #  66    0xe90bb  1      OPC=nop             
  nop                              #  67    0xe90bc  1      OPC=nop             
  nop                              #  68    0xe90bd  1      OPC=nop             
  nop                              #  69    0xe90be  1      OPC=nop             
  nop                              #  70    0xe90bf  1      OPC=nop             
  nop                              #  71    0xe90c0  1      OPC=nop             
  nop                              #  72    0xe90c1  1      OPC=nop             
  callq ._Unwind_Resume            #  73    0xe90c2  5      OPC=callq_label     
.L_e90c0:                          #        0xe90c7  0      OPC=<label>         
  movl %eax, %edi                  #  74    0xe90c7  2      OPC=movl_r32_r32    
  nop                              #  75    0xe90c9  1      OPC=nop             
  nop                              #  76    0xe90ca  1      OPC=nop             
  nop                              #  77    0xe90cb  1      OPC=nop             
  nop                              #  78    0xe90cc  1      OPC=nop             
  nop                              #  79    0xe90cd  1      OPC=nop             
  nop                              #  80    0xe90ce  1      OPC=nop             
  nop                              #  81    0xe90cf  1      OPC=nop             
  nop                              #  82    0xe90d0  1      OPC=nop             
  nop                              #  83    0xe90d1  1      OPC=nop             
  nop                              #  84    0xe90d2  1      OPC=nop             
  nop                              #  85    0xe90d3  1      OPC=nop             
  nop                              #  86    0xe90d4  1      OPC=nop             
  nop                              #  87    0xe90d5  1      OPC=nop             
  nop                              #  88    0xe90d6  1      OPC=nop             
  nop                              #  89    0xe90d7  1      OPC=nop             
  nop                              #  90    0xe90d8  1      OPC=nop             
  nop                              #  91    0xe90d9  1      OPC=nop             
  nop                              #  92    0xe90da  1      OPC=nop             
  nop                              #  93    0xe90db  1      OPC=nop             
  nop                              #  94    0xe90dc  1      OPC=nop             
  nop                              #  95    0xe90dd  1      OPC=nop             
  nop                              #  96    0xe90de  1      OPC=nop             
  nop                              #  97    0xe90df  1      OPC=nop             
  nop                              #  98    0xe90e0  1      OPC=nop             
  nop                              #  99    0xe90e1  1      OPC=nop             
  callq .__cxa_call_unexpected     #  100   0xe90e2  5      OPC=callq_label     
                                                                                
.size _ZNSt8ios_base7failureC1ERKSs, .-_ZNSt8ios_base7failureC1ERKSs

