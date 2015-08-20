  .text
  .globl _ZNSt8ios_base7failureC2ERKSs
  .type _ZNSt8ios_base7failureC2ERKSs, @function

#! file-offset 0x1289c0
#! rip-offset  0xe89c0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base7failureC2ERKSs:    #        0xe89c0  0      OPC=<label>         
  pushq %rbx                       #  1     0xe89c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                  #  2     0xe89c1  2      OPC=movl_r32_r32    
  movl %esi, %esi                  #  3     0xe89c3  2      OPC=movl_r32_r32    
  leal 0x4(%rbx), %edi             #  4     0xe89c5  3      OPC=leal_r32_m16    
  subl $0x10, %esp                 #  5     0xe89c8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                  #  6     0xe89cb  3      OPC=addq_r64_r64    
  movl %ebx, %ebx                  #  7     0xe89ce  2      OPC=movl_r32_r32    
  movl $0x1003d968, (%r15,%rbx,1)  #  8     0xe89d0  8      OPC=movl_m32_imm32  
  nop                              #  9     0xe89d8  1      OPC=nop             
  nop                              #  10    0xe89d9  1      OPC=nop             
  nop                              #  11    0xe89da  1      OPC=nop             
  callq ._ZNSsC1ERKSs              #  12    0xe89db  5      OPC=callq_label     
  addl $0x10, %esp                 #  13    0xe89e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                  #  14    0xe89e3  3      OPC=addq_r64_r64    
  popq %rbx                        #  15    0xe89e6  1      OPC=popq_r64_1      
  popq %r11                        #  16    0xe89e7  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d          #  17    0xe89e9  7      OPC=andl_r32_imm32  
  nop                              #  18    0xe89f0  1      OPC=nop             
  nop                              #  19    0xe89f1  1      OPC=nop             
  nop                              #  20    0xe89f2  1      OPC=nop             
  nop                              #  21    0xe89f3  1      OPC=nop             
  addq %r15, %r11                  #  22    0xe89f4  3      OPC=addq_r64_r64    
  jmpq %r11                        #  23    0xe89f7  3      OPC=jmpq_r64        
  nop                              #  24    0xe89fa  1      OPC=nop             
  nop                              #  25    0xe89fb  1      OPC=nop             
  nop                              #  26    0xe89fc  1      OPC=nop             
  nop                              #  27    0xe89fd  1      OPC=nop             
  nop                              #  28    0xe89fe  1      OPC=nop             
  nop                              #  29    0xe89ff  1      OPC=nop             
  nop                              #  30    0xe8a00  1      OPC=nop             
  nop                              #  31    0xe8a01  1      OPC=nop             
  nop                              #  32    0xe8a02  1      OPC=nop             
  nop                              #  33    0xe8a03  1      OPC=nop             
  nop                              #  34    0xe8a04  1      OPC=nop             
  nop                              #  35    0xe8a05  1      OPC=nop             
  nop                              #  36    0xe8a06  1      OPC=nop             
  movl %ebx, %edi                  #  37    0xe8a07  2      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)             #  38    0xe8a09  4      OPC=movl_m32_r32    
  movq %rdx, (%rsp)                #  39    0xe8a0d  4      OPC=movq_m64_r64    
  xchgw %ax, %ax                   #  40    0xe8a11  2      OPC=xchgw_ax_r16    
  nop                              #  41    0xe8a13  1      OPC=nop             
  nop                              #  42    0xe8a14  1      OPC=nop             
  nop                              #  43    0xe8a15  1      OPC=nop             
  nop                              #  44    0xe8a16  1      OPC=nop             
  nop                              #  45    0xe8a17  1      OPC=nop             
  nop                              #  46    0xe8a18  1      OPC=nop             
  nop                              #  47    0xe8a19  1      OPC=nop             
  nop                              #  48    0xe8a1a  1      OPC=nop             
  nop                              #  49    0xe8a1b  1      OPC=nop             
  nop                              #  50    0xe8a1c  1      OPC=nop             
  nop                              #  51    0xe8a1d  1      OPC=nop             
  nop                              #  52    0xe8a1e  1      OPC=nop             
  nop                              #  53    0xe8a1f  1      OPC=nop             
  nop                              #  54    0xe8a20  1      OPC=nop             
  nop                              #  55    0xe8a21  1      OPC=nop             
  callq ._ZNSt9exceptionD2Ev       #  56    0xe8a22  5      OPC=callq_label     
  movq (%rsp), %rdx                #  57    0xe8a27  4      OPC=movq_r64_m64    
  movl 0x8(%rsp), %eax             #  58    0xe8a2b  4      OPC=movl_r32_m32    
  cmpq $0xff, %rdx                 #  59    0xe8a2f  4      OPC=cmpq_r64_imm8   
  je .L_e8a40                      #  60    0xe8a33  2      OPC=je_label        
  movl %eax, %edi                  #  61    0xe8a35  2      OPC=movl_r32_r32    
  nop                              #  62    0xe8a37  1      OPC=nop             
  nop                              #  63    0xe8a38  1      OPC=nop             
  nop                              #  64    0xe8a39  1      OPC=nop             
  nop                              #  65    0xe8a3a  1      OPC=nop             
  nop                              #  66    0xe8a3b  1      OPC=nop             
  nop                              #  67    0xe8a3c  1      OPC=nop             
  nop                              #  68    0xe8a3d  1      OPC=nop             
  nop                              #  69    0xe8a3e  1      OPC=nop             
  nop                              #  70    0xe8a3f  1      OPC=nop             
  nop                              #  71    0xe8a40  1      OPC=nop             
  nop                              #  72    0xe8a41  1      OPC=nop             
  callq ._Unwind_Resume            #  73    0xe8a42  5      OPC=callq_label     
.L_e8a40:                          #        0xe8a47  0      OPC=<label>         
  movl %eax, %edi                  #  74    0xe8a47  2      OPC=movl_r32_r32    
  nop                              #  75    0xe8a49  1      OPC=nop             
  nop                              #  76    0xe8a4a  1      OPC=nop             
  nop                              #  77    0xe8a4b  1      OPC=nop             
  nop                              #  78    0xe8a4c  1      OPC=nop             
  nop                              #  79    0xe8a4d  1      OPC=nop             
  nop                              #  80    0xe8a4e  1      OPC=nop             
  nop                              #  81    0xe8a4f  1      OPC=nop             
  nop                              #  82    0xe8a50  1      OPC=nop             
  nop                              #  83    0xe8a51  1      OPC=nop             
  nop                              #  84    0xe8a52  1      OPC=nop             
  nop                              #  85    0xe8a53  1      OPC=nop             
  nop                              #  86    0xe8a54  1      OPC=nop             
  nop                              #  87    0xe8a55  1      OPC=nop             
  nop                              #  88    0xe8a56  1      OPC=nop             
  nop                              #  89    0xe8a57  1      OPC=nop             
  nop                              #  90    0xe8a58  1      OPC=nop             
  nop                              #  91    0xe8a59  1      OPC=nop             
  nop                              #  92    0xe8a5a  1      OPC=nop             
  nop                              #  93    0xe8a5b  1      OPC=nop             
  nop                              #  94    0xe8a5c  1      OPC=nop             
  nop                              #  95    0xe8a5d  1      OPC=nop             
  nop                              #  96    0xe8a5e  1      OPC=nop             
  nop                              #  97    0xe8a5f  1      OPC=nop             
  nop                              #  98    0xe8a60  1      OPC=nop             
  nop                              #  99    0xe8a61  1      OPC=nop             
  callq .__cxa_call_unexpected     #  100   0xe8a62  5      OPC=callq_label     
                                                                                
.size _ZNSt8ios_base7failureC2ERKSs, .-_ZNSt8ios_base7failureC2ERKSs

