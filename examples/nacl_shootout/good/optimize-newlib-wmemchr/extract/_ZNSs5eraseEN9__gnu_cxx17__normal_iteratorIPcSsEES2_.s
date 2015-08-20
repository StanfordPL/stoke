  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, @function

#! file-offset 0xeeb40
#! rip-offset  0xaeb40
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_:  #        0xaeb40  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                #  1     0xaeb40  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                       #  2     0xaeb45  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                 #  3     0xaeb47  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                      #  4     0xaeb4c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  5     0xaeb4f  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                      #  6     0xaeb52  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  7     0xaeb55  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                             #  8     0xaeb57  4      OPC=subl_r32_m32    
  subl %esi, %edx                                       #  9     0xaeb5b  2      OPC=subl_r32_r32    
  movl %ebx, %edi                                       #  10    0xaeb5d  2      OPC=movl_r32_r32    
  nop                                                   #  11    0xaeb5f  1      OPC=nop             
  xorl %ecx, %ecx                                       #  12    0xaeb60  2      OPC=xorl_r32_r32    
  movl %r12d, %esi                                      #  13    0xaeb62  3      OPC=movl_r32_r32    
  nop                                                   #  14    0xaeb65  1      OPC=nop             
  nop                                                   #  15    0xaeb66  1      OPC=nop             
  nop                                                   #  16    0xaeb67  1      OPC=nop             
  nop                                                   #  17    0xaeb68  1      OPC=nop             
  nop                                                   #  18    0xaeb69  1      OPC=nop             
  nop                                                   #  19    0xaeb6a  1      OPC=nop             
  nop                                                   #  20    0xaeb6b  1      OPC=nop             
  nop                                                   #  21    0xaeb6c  1      OPC=nop             
  nop                                                   #  22    0xaeb6d  1      OPC=nop             
  nop                                                   #  23    0xaeb6e  1      OPC=nop             
  nop                                                   #  24    0xaeb6f  1      OPC=nop             
  nop                                                   #  25    0xaeb70  1      OPC=nop             
  nop                                                   #  26    0xaeb71  1      OPC=nop             
  nop                                                   #  27    0xaeb72  1      OPC=nop             
  nop                                                   #  28    0xaeb73  1      OPC=nop             
  nop                                                   #  29    0xaeb74  1      OPC=nop             
  nop                                                   #  30    0xaeb75  1      OPC=nop             
  nop                                                   #  31    0xaeb76  1      OPC=nop             
  nop                                                   #  32    0xaeb77  1      OPC=nop             
  nop                                                   #  33    0xaeb78  1      OPC=nop             
  nop                                                   #  34    0xaeb79  1      OPC=nop             
  nop                                                   #  35    0xaeb7a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj                            #  36    0xaeb7b  5      OPC=callq_label     
  movl %ebx, %ebx                                       #  37    0xaeb80  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  38    0xaeb82  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                 #  39    0xaeb86  3      OPC=leal_r32_m16    
  leal (%r12,%rax,1), %eax                              #  40    0xaeb89  4      OPC=leal_r32_m16    
  movl %edx, %edx                                       #  41    0xaeb8d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                    #  42    0xaeb8f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                  #  43    0xaeb98  5      OPC=movq_r64_m64    
  nop                                                   #  44    0xaeb9d  1      OPC=nop             
  nop                                                   #  45    0xaeb9e  1      OPC=nop             
  nop                                                   #  46    0xaeb9f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                 #  47    0xaeba0  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                      #  48    0xaeba5  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  49    0xaeba8  3      OPC=addq_r64_r64    
  popq %r11                                             #  50    0xaebab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  51    0xaebad  7      OPC=andl_r32_imm32  
  nop                                                   #  52    0xaebb4  1      OPC=nop             
  nop                                                   #  53    0xaebb5  1      OPC=nop             
  nop                                                   #  54    0xaebb6  1      OPC=nop             
  nop                                                   #  55    0xaebb7  1      OPC=nop             
  addq %r15, %r11                                       #  56    0xaebb8  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  57    0xaebbb  3      OPC=jmpq_r64        
  nop                                                   #  58    0xaebbe  1      OPC=nop             
  nop                                                   #  59    0xaebbf  1      OPC=nop             
  nop                                                   #  60    0xaebc0  1      OPC=nop             
  nop                                                   #  61    0xaebc1  1      OPC=nop             
  nop                                                   #  62    0xaebc2  1      OPC=nop             
  nop                                                   #  63    0xaebc3  1      OPC=nop             
  nop                                                   #  64    0xaebc4  1      OPC=nop             
  nop                                                   #  65    0xaebc5  1      OPC=nop             
  nop                                                   #  66    0xaebc6  1      OPC=nop             
                                                                                                     
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_

