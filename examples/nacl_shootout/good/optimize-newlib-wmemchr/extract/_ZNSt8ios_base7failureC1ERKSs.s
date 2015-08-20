  .text
  .globl _ZNSt8ios_base7failureC1ERKSs
  .type _ZNSt8ios_base7failureC1ERKSs, @function

#! file-offset 0x128920
#! rip-offset  0xe8920
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7failureC1ERKSs:    #        0xe8920  0      OPC=<label>         
  pushq %rbx                       #  1     0xe8920  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe8921  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe8923  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe8925  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe8928  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe892b  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe892e  2      OPC=movl_r32_r32    
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe8930  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe8938  1      OPC=nop             
  nop                              #  10    0xe8939  1      OPC=nop             
  nop                              #  11    0xe893a  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe893b  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe8940  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe8943  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe8946  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe8947  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe8949  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe8950  1      OPC=nop             
  nop                              #  19    0xe8951  1      OPC=nop             
  nop                              #  20    0xe8952  1      OPC=nop             
  nop                              #  21    0xe8953  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe8954  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe8957  3      OPC=jmpq_r64        
  nop                              #  24    0xe895a  1      OPC=nop             
  nop                              #  25    0xe895b  1      OPC=nop             
  nop                              #  26    0xe895c  1      OPC=nop             
  nop                              #  27    0xe895d  1      OPC=nop             
  nop                              #  28    0xe895e  1      OPC=nop             
  nop                              #  29    0xe895f  1      OPC=nop             
  nop                              #  30    0xe8960  1      OPC=nop             
  nop                              #  31    0xe8961  1      OPC=nop             
  nop                              #  32    0xe8962  1      OPC=nop             
  nop                              #  33    0xe8963  1      OPC=nop             
  nop                              #  34    0xe8964  1      OPC=nop             
  nop                              #  35    0xe8965  1      OPC=nop             
  nop                              #  36    0xe8966  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe8967  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe8969  4      OPC=movl_m32_r32    
  movq %rdx, (%rsp)                #  39    0xe896d  4      OPC=movq_m64_r64    
  xchgw %ax, %ax                   #  40    0xe8971  2      OPC=xchgw_ax_r16    
  nop                              #  41    0xe8973  1      OPC=nop             
  nop                              #  42    0xe8974  1      OPC=nop             
  nop                              #  43    0xe8975  1      OPC=nop             
  nop                              #  44    0xe8976  1      OPC=nop             
  nop                              #  45    0xe8977  1      OPC=nop             
  nop                              #  46    0xe8978  1      OPC=nop             
  nop                              #  47    0xe8979  1      OPC=nop             
  nop                              #  48    0xe897a  1      OPC=nop             
  nop                              #  49    0xe897b  1      OPC=nop             
  nop                              #  50    0xe897c  1      OPC=nop             
  nop                              #  51    0xe897d  1      OPC=nop             
  nop                              #  52    0xe897e  1      OPC=nop             
  nop                              #  53    0xe897f  1      OPC=nop             
  nop                              #  54    0xe8980  1      OPC=nop             
  nop                              #  55    0xe8981  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  56    0xe8982  5      OPC=callq_label     
  movq (%rsp), %rdx                #  57    0xe8987  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %eax             #  58    0xe898b  4      OPC=movl_r32_m32    
  cmpq $0xff, %rdx                 #  59    0xe898f  4      OPC=cmpq_r64_imm8   
  je .L_e89a0                      #  60    0xe8993  2      OPC=je_label        
  movl %eax, %edi                  #  61    0xe8995  2      OPC=movl_r32_r32    
  nop                              #  62    0xe8997  1      OPC=nop             
  nop                              #  63    0xe8998  1      OPC=nop             
  nop                              #  64    0xe8999  1      OPC=nop             
  nop                              #  65    0xe899a  1      OPC=nop             
  nop                              #  66    0xe899b  1      OPC=nop             
  nop                              #  67    0xe899c  1      OPC=nop             
  nop                              #  68    0xe899d  1      OPC=nop             
  nop                              #  69    0xe899e  1      OPC=nop             
  nop                              #  70    0xe899f  1      OPC=nop             
  nop                              #  71    0xe89a0  1      OPC=nop             
  nop                              #  72    0xe89a1  1      OPC=nop             
  callq ._Unwind_Resume            #  73    0xe89a2  5      OPC=callq_label     
.L_e89a0:                          #        0xe89a7  0      OPC=<label>         
  movl %eax, %edi                  #  74    0xe89a7  2      OPC=movl_r32_r32    
  nop                              #  75    0xe89a9  1      OPC=nop             
  nop                              #  76    0xe89aa  1      OPC=nop             
  nop                              #  77    0xe89ab  1      OPC=nop             
  nop                              #  78    0xe89ac  1      OPC=nop             
  nop                              #  79    0xe89ad  1      OPC=nop             
  nop                              #  80    0xe89ae  1      OPC=nop             
  nop                              #  81    0xe89af  1      OPC=nop             
  nop                              #  82    0xe89b0  1      OPC=nop             
  nop                              #  83    0xe89b1  1      OPC=nop             
  nop                              #  84    0xe89b2  1      OPC=nop             
  nop                              #  85    0xe89b3  1      OPC=nop             
  nop                              #  86    0xe89b4  1      OPC=nop             
  nop                              #  87    0xe89b5  1      OPC=nop             
  nop                              #  88    0xe89b6  1      OPC=nop             
  nop                              #  89    0xe89b7  1      OPC=nop             
  nop                              #  90    0xe89b8  1      OPC=nop             
  nop                              #  91    0xe89b9  1      OPC=nop             
  nop                              #  92    0xe89ba  1      OPC=nop             
  nop                              #  93    0xe89bb  1      OPC=nop             
  nop                              #  94    0xe89bc  1      OPC=nop             
  nop                              #  95    0xe89bd  1      OPC=nop             
  nop                              #  96    0xe89be  1      OPC=nop             
  nop                              #  97    0xe89bf  1      OPC=nop             
  nop                              #  98    0xe89c0  1      OPC=nop             
  nop                              #  99    0xe89c1  1      OPC=nop             
  callq .__cxa_call_unexpected     #  100   0xe89c2  5      OPC=callq_label     
                                                                                
.size _ZNSt8ios_base7failureC1ERKSs, .-_ZNSt8ios_base7failureC1ERKSs

