  .text
  .globl _ZNSt8ios_base7failureC2ERKSs
  .type _ZNSt8ios_base7failureC2ERKSs, @function

#! file-offset 0x1290e0
#! rip-offset  0xe90e0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7failureC2ERKSs:    #        0xe90e0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe90e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe90e1  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe90e3  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe90e5  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe90e8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe90eb  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe90ee  2      OPC=movl_r32_r32    
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe90f0  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe90f8  1      OPC=nop             
  nop                              #  10    0xe90f9  1      OPC=nop             
  nop                              #  11    0xe90fa  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe90fb  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe9100  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe9103  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe9106  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe9107  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe9109  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe9110  1      OPC=nop             
  nop                              #  19    0xe9111  1      OPC=nop             
  nop                              #  20    0xe9112  1      OPC=nop             
  nop                              #  21    0xe9113  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe9114  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe9117  3      OPC=jmpq_r64        
  nop                              #  24    0xe911a  1      OPC=nop             
  nop                              #  25    0xe911b  1      OPC=nop             
  nop                              #  26    0xe911c  1      OPC=nop             
  nop                              #  27    0xe911d  1      OPC=nop             
  nop                              #  28    0xe911e  1      OPC=nop             
  nop                              #  29    0xe911f  1      OPC=nop             
  nop                              #  30    0xe9120  1      OPC=nop             
  nop                              #  31    0xe9121  1      OPC=nop             
  nop                              #  32    0xe9122  1      OPC=nop             
  nop                              #  33    0xe9123  1      OPC=nop             
  nop                              #  34    0xe9124  1      OPC=nop             
  nop                              #  35    0xe9125  1      OPC=nop             
  nop                              #  36    0xe9126  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe9127  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe9129  4      OPC=movl_m32_r32    
  movq %rdx, (%rsp)                #  39    0xe912d  4      OPC=movq_m64_r64    
  xchgw %ax, %ax                   #  40    0xe9131  2      OPC=xchgw_ax_r16    
  nop                              #  41    0xe9133  1      OPC=nop             
  nop                              #  42    0xe9134  1      OPC=nop             
  nop                              #  43    0xe9135  1      OPC=nop             
  nop                              #  44    0xe9136  1      OPC=nop             
  nop                              #  45    0xe9137  1      OPC=nop             
  nop                              #  46    0xe9138  1      OPC=nop             
  nop                              #  47    0xe9139  1      OPC=nop             
  nop                              #  48    0xe913a  1      OPC=nop             
  nop                              #  49    0xe913b  1      OPC=nop             
  nop                              #  50    0xe913c  1      OPC=nop             
  nop                              #  51    0xe913d  1      OPC=nop             
  nop                              #  52    0xe913e  1      OPC=nop             
  nop                              #  53    0xe913f  1      OPC=nop             
  nop                              #  54    0xe9140  1      OPC=nop             
  nop                              #  55    0xe9141  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  56    0xe9142  5      OPC=callq_label     
  movq (%rsp), %rdx                #  57    0xe9147  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %eax             #  58    0xe914b  4      OPC=movl_r32_m32    
  cmpq $0xff, %rdx                 #  59    0xe914f  4      OPC=cmpq_r64_imm8   
  je .L_e9160                      #  60    0xe9153  2      OPC=je_label        
  movl %eax, %edi                  #  61    0xe9155  2      OPC=movl_r32_r32    
  nop                              #  62    0xe9157  1      OPC=nop             
  nop                              #  63    0xe9158  1      OPC=nop             
  nop                              #  64    0xe9159  1      OPC=nop             
  nop                              #  65    0xe915a  1      OPC=nop             
  nop                              #  66    0xe915b  1      OPC=nop             
  nop                              #  67    0xe915c  1      OPC=nop             
  nop                              #  68    0xe915d  1      OPC=nop             
  nop                              #  69    0xe915e  1      OPC=nop             
  nop                              #  70    0xe915f  1      OPC=nop             
  nop                              #  71    0xe9160  1      OPC=nop             
  nop                              #  72    0xe9161  1      OPC=nop             
  callq ._Unwind_Resume            #  73    0xe9162  5      OPC=callq_label     
.L_e9160:                          #        0xe9167  0      OPC=<label>         
  movl %eax, %edi                  #  74    0xe9167  2      OPC=movl_r32_r32    
  nop                              #  75    0xe9169  1      OPC=nop             
  nop                              #  76    0xe916a  1      OPC=nop             
  nop                              #  77    0xe916b  1      OPC=nop             
  nop                              #  78    0xe916c  1      OPC=nop             
  nop                              #  79    0xe916d  1      OPC=nop             
  nop                              #  80    0xe916e  1      OPC=nop             
  nop                              #  81    0xe916f  1      OPC=nop             
  nop                              #  82    0xe9170  1      OPC=nop             
  nop                              #  83    0xe9171  1      OPC=nop             
  nop                              #  84    0xe9172  1      OPC=nop             
  nop                              #  85    0xe9173  1      OPC=nop             
  nop                              #  86    0xe9174  1      OPC=nop             
  nop                              #  87    0xe9175  1      OPC=nop             
  nop                              #  88    0xe9176  1      OPC=nop             
  nop                              #  89    0xe9177  1      OPC=nop             
  nop                              #  90    0xe9178  1      OPC=nop             
  nop                              #  91    0xe9179  1      OPC=nop             
  nop                              #  92    0xe917a  1      OPC=nop             
  nop                              #  93    0xe917b  1      OPC=nop             
  nop                              #  94    0xe917c  1      OPC=nop             
  nop                              #  95    0xe917d  1      OPC=nop             
  nop                              #  96    0xe917e  1      OPC=nop             
  nop                              #  97    0xe917f  1      OPC=nop             
  nop                              #  98    0xe9180  1      OPC=nop             
  nop                              #  99    0xe9181  1      OPC=nop             
  callq .__cxa_call_unexpected     #  100   0xe9182  5      OPC=callq_label     
                                                                                
.size _ZNSt8ios_base7failureC2ERKSs, .-_ZNSt8ios_base7failureC2ERKSs

