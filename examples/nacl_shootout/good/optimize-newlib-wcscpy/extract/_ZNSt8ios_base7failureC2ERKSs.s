  .text
  .globl _ZNSt8ios_base7failureC2ERKSs
  .type _ZNSt8ios_base7failureC2ERKSs, @function

#! file-offset 0x1286c0
#! rip-offset  0xe86c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7failureC2ERKSs:    #        0xe86c0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe86c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe86c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe86c3  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe86c5  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe86c8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe86cb  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe86ce  2      OPC=movl_r32_r32    
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe86d0  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe86d8  1      OPC=nop             
  nop                              #  10    0xe86d9  1      OPC=nop             
  nop                              #  11    0xe86da  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe86db  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe86e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe86e3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe86e6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe86e7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe86e9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe86f0  1      OPC=nop             
  nop                              #  19    0xe86f1  1      OPC=nop             
  nop                              #  20    0xe86f2  1      OPC=nop             
  nop                              #  21    0xe86f3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe86f4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe86f7  3      OPC=jmpq_r64        
  nop                              #  24    0xe86fa  1      OPC=nop             
  nop                              #  25    0xe86fb  1      OPC=nop             
  nop                              #  26    0xe86fc  1      OPC=nop             
  nop                              #  27    0xe86fd  1      OPC=nop             
  nop                              #  28    0xe86fe  1      OPC=nop             
  nop                              #  29    0xe86ff  1      OPC=nop             
  nop                              #  30    0xe8700  1      OPC=nop             
  nop                              #  31    0xe8701  1      OPC=nop             
  nop                              #  32    0xe8702  1      OPC=nop             
  nop                              #  33    0xe8703  1      OPC=nop             
  nop                              #  34    0xe8704  1      OPC=nop             
  nop                              #  35    0xe8705  1      OPC=nop             
  nop                              #  36    0xe8706  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe8707  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe8709  4      OPC=movl_m32_r32    
  movq %rdx, (%rsp)                #  39    0xe870d  4      OPC=movq_m64_r64    
  xchgw %ax, %ax                   #  40    0xe8711  2      OPC=xchgw_ax_r16    
  nop                              #  41    0xe8713  1      OPC=nop             
  nop                              #  42    0xe8714  1      OPC=nop             
  nop                              #  43    0xe8715  1      OPC=nop             
  nop                              #  44    0xe8716  1      OPC=nop             
  nop                              #  45    0xe8717  1      OPC=nop             
  nop                              #  46    0xe8718  1      OPC=nop             
  nop                              #  47    0xe8719  1      OPC=nop             
  nop                              #  48    0xe871a  1      OPC=nop             
  nop                              #  49    0xe871b  1      OPC=nop             
  nop                              #  50    0xe871c  1      OPC=nop             
  nop                              #  51    0xe871d  1      OPC=nop             
  nop                              #  52    0xe871e  1      OPC=nop             
  nop                              #  53    0xe871f  1      OPC=nop             
  nop                              #  54    0xe8720  1      OPC=nop             
  nop                              #  55    0xe8721  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  56    0xe8722  5      OPC=callq_label     
  movq (%rsp), %rdx                #  57    0xe8727  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %eax             #  58    0xe872b  4      OPC=movl_r32_m32    
  cmpq $0xff, %rdx                 #  59    0xe872f  4      OPC=cmpq_r64_imm8   
  je .L_e8740                      #  60    0xe8733  2      OPC=je_label        
  movl %eax, %edi                  #  61    0xe8735  2      OPC=movl_r32_r32    
  nop                              #  62    0xe8737  1      OPC=nop             
  nop                              #  63    0xe8738  1      OPC=nop             
  nop                              #  64    0xe8739  1      OPC=nop             
  nop                              #  65    0xe873a  1      OPC=nop             
  nop                              #  66    0xe873b  1      OPC=nop             
  nop                              #  67    0xe873c  1      OPC=nop             
  nop                              #  68    0xe873d  1      OPC=nop             
  nop                              #  69    0xe873e  1      OPC=nop             
  nop                              #  70    0xe873f  1      OPC=nop             
  nop                              #  71    0xe8740  1      OPC=nop             
  nop                              #  72    0xe8741  1      OPC=nop             
  callq ._Unwind_Resume            #  73    0xe8742  5      OPC=callq_label     
.L_e8740:                          #        0xe8747  0      OPC=<label>         
  movl %eax, %edi                  #  74    0xe8747  2      OPC=movl_r32_r32    
  nop                              #  75    0xe8749  1      OPC=nop             
  nop                              #  76    0xe874a  1      OPC=nop             
  nop                              #  77    0xe874b  1      OPC=nop             
  nop                              #  78    0xe874c  1      OPC=nop             
  nop                              #  79    0xe874d  1      OPC=nop             
  nop                              #  80    0xe874e  1      OPC=nop             
  nop                              #  81    0xe874f  1      OPC=nop             
  nop                              #  82    0xe8750  1      OPC=nop             
  nop                              #  83    0xe8751  1      OPC=nop             
  nop                              #  84    0xe8752  1      OPC=nop             
  nop                              #  85    0xe8753  1      OPC=nop             
  nop                              #  86    0xe8754  1      OPC=nop             
  nop                              #  87    0xe8755  1      OPC=nop             
  nop                              #  88    0xe8756  1      OPC=nop             
  nop                              #  89    0xe8757  1      OPC=nop             
  nop                              #  90    0xe8758  1      OPC=nop             
  nop                              #  91    0xe8759  1      OPC=nop             
  nop                              #  92    0xe875a  1      OPC=nop             
  nop                              #  93    0xe875b  1      OPC=nop             
  nop                              #  94    0xe875c  1      OPC=nop             
  nop                              #  95    0xe875d  1      OPC=nop             
  nop                              #  96    0xe875e  1      OPC=nop             
  nop                              #  97    0xe875f  1      OPC=nop             
  nop                              #  98    0xe8760  1      OPC=nop             
  nop                              #  99    0xe8761  1      OPC=nop             
  callq .__cxa_call_unexpected     #  100   0xe8762  5      OPC=callq_label     
                                                                                
.size _ZNSt8ios_base7failureC2ERKSs, .-_ZNSt8ios_base7failureC2ERKSs

