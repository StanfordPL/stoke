  .text
  .globl _ZNSt8ios_base7failureC1ERKSs
  .type _ZNSt8ios_base7failureC1ERKSs, @function

#! file-offset 0x128620
#! rip-offset  0xe8620
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7failureC1ERKSs:    #        0xe8620  0      OPC=<label>         
  pushq %rbx                       #  1     0xe8620  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe8621  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe8623  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe8625  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe8628  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe862b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe862e  2      OPC=movl_r32_r32    
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe8630  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe8638  1      OPC=nop             
  nop                              #  10    0xe8639  1      OPC=nop             
  nop                              #  11    0xe863a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe863b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe8640  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe8643  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe8646  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe8647  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe8649  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe8650  1      OPC=nop             
  nop                              #  19    0xe8651  1      OPC=nop             
  nop                              #  20    0xe8652  1      OPC=nop             
  nop                              #  21    0xe8653  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe8654  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe8657  3      OPC=jmpq_r64        
  nop                              #  24    0xe865a  1      OPC=nop             
  nop                              #  25    0xe865b  1      OPC=nop             
  nop                              #  26    0xe865c  1      OPC=nop             
  nop                              #  27    0xe865d  1      OPC=nop             
  nop                              #  28    0xe865e  1      OPC=nop             
  nop                              #  29    0xe865f  1      OPC=nop             
  nop                              #  30    0xe8660  1      OPC=nop             
  nop                              #  31    0xe8661  1      OPC=nop             
  nop                              #  32    0xe8662  1      OPC=nop             
  nop                              #  33    0xe8663  1      OPC=nop             
  nop                              #  34    0xe8664  1      OPC=nop             
  nop                              #  35    0xe8665  1      OPC=nop             
  nop                              #  36    0xe8666  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe8667  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe8669  4      OPC=movl_m32_r32    
  movq %rdx, (%rsp)                #  39    0xe866d  4      OPC=movq_m64_r64    
  xchgw %ax, %ax                   #  40    0xe8671  2      OPC=xchgw_ax_r16    
  nop                              #  41    0xe8673  1      OPC=nop             
  nop                              #  42    0xe8674  1      OPC=nop             
  nop                              #  43    0xe8675  1      OPC=nop             
  nop                              #  44    0xe8676  1      OPC=nop             
  nop                              #  45    0xe8677  1      OPC=nop             
  nop                              #  46    0xe8678  1      OPC=nop             
  nop                              #  47    0xe8679  1      OPC=nop             
  nop                              #  48    0xe867a  1      OPC=nop             
  nop                              #  49    0xe867b  1      OPC=nop             
  nop                              #  50    0xe867c  1      OPC=nop             
  nop                              #  51    0xe867d  1      OPC=nop             
  nop                              #  52    0xe867e  1      OPC=nop             
  nop                              #  53    0xe867f  1      OPC=nop             
  nop                              #  54    0xe8680  1      OPC=nop             
  nop                              #  55    0xe8681  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  56    0xe8682  5      OPC=callq_label     
  movq (%rsp), %rdx                #  57    0xe8687  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %eax             #  58    0xe868b  4      OPC=movl_r32_m32    
  cmpq $0xff, %rdx                 #  59    0xe868f  4      OPC=cmpq_r64_imm8   
  je .L_e86a0                      #  60    0xe8693  2      OPC=je_label        
  movl %eax, %edi                  #  61    0xe8695  2      OPC=movl_r32_r32    
  nop                              #  62    0xe8697  1      OPC=nop             
  nop                              #  63    0xe8698  1      OPC=nop             
  nop                              #  64    0xe8699  1      OPC=nop             
  nop                              #  65    0xe869a  1      OPC=nop             
  nop                              #  66    0xe869b  1      OPC=nop             
  nop                              #  67    0xe869c  1      OPC=nop             
  nop                              #  68    0xe869d  1      OPC=nop             
  nop                              #  69    0xe869e  1      OPC=nop             
  nop                              #  70    0xe869f  1      OPC=nop             
  nop                              #  71    0xe86a0  1      OPC=nop             
  nop                              #  72    0xe86a1  1      OPC=nop             
  callq ._Unwind_Resume            #  73    0xe86a2  5      OPC=callq_label     
.L_e86a0:                          #        0xe86a7  0      OPC=<label>         
  movl %eax, %edi                  #  74    0xe86a7  2      OPC=movl_r32_r32    
  nop                              #  75    0xe86a9  1      OPC=nop             
  nop                              #  76    0xe86aa  1      OPC=nop             
  nop                              #  77    0xe86ab  1      OPC=nop             
  nop                              #  78    0xe86ac  1      OPC=nop             
  nop                              #  79    0xe86ad  1      OPC=nop             
  nop                              #  80    0xe86ae  1      OPC=nop             
  nop                              #  81    0xe86af  1      OPC=nop             
  nop                              #  82    0xe86b0  1      OPC=nop             
  nop                              #  83    0xe86b1  1      OPC=nop             
  nop                              #  84    0xe86b2  1      OPC=nop             
  nop                              #  85    0xe86b3  1      OPC=nop             
  nop                              #  86    0xe86b4  1      OPC=nop             
  nop                              #  87    0xe86b5  1      OPC=nop             
  nop                              #  88    0xe86b6  1      OPC=nop             
  nop                              #  89    0xe86b7  1      OPC=nop             
  nop                              #  90    0xe86b8  1      OPC=nop             
  nop                              #  91    0xe86b9  1      OPC=nop             
  nop                              #  92    0xe86ba  1      OPC=nop             
  nop                              #  93    0xe86bb  1      OPC=nop             
  nop                              #  94    0xe86bc  1      OPC=nop             
  nop                              #  95    0xe86bd  1      OPC=nop             
  nop                              #  96    0xe86be  1      OPC=nop             
  nop                              #  97    0xe86bf  1      OPC=nop             
  nop                              #  98    0xe86c0  1      OPC=nop             
  nop                              #  99    0xe86c1  1      OPC=nop             
  callq .__cxa_call_unexpected     #  100   0xe86c2  5      OPC=callq_label     
                                                                                
.size _ZNSt8ios_base7failureC1ERKSs, .-_ZNSt8ios_base7failureC1ERKSs

