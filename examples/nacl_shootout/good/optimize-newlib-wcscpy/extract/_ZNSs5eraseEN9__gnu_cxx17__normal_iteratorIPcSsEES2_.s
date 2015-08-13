  .text
  .globl _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_
  .type _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, @function

#! file-offset 0xee840
#! rip-offset  0xae840
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_:  #        0xae840  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                #  1     0xae840  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                       #  2     0xae845  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                 #  3     0xae847  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                      #  4     0xae84c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  5     0xae84f  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                      #  6     0xae852  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                       #  7     0xae855  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                             #  8     0xae857  4      OPC=subl_r32_m32    
  subl %esi, %edx                                       #  9     0xae85b  2      OPC=subl_r32_r32    
  movl %ebx, %edi                                       #  10    0xae85d  2      OPC=movl_r32_r32    
  nop                                                   #  11    0xae85f  1      OPC=nop             
  xorl %ecx, %ecx                                       #  12    0xae860  2      OPC=xorl_r32_r32    
  movl %r12d, %esi                                      #  13    0xae862  3      OPC=movl_r32_r32    
  nop                                                   #  14    0xae865  1      OPC=nop             
  nop                                                   #  15    0xae866  1      OPC=nop             
  nop                                                   #  16    0xae867  1      OPC=nop             
  nop                                                   #  17    0xae868  1      OPC=nop             
  nop                                                   #  18    0xae869  1      OPC=nop             
  nop                                                   #  19    0xae86a  1      OPC=nop             
  nop                                                   #  20    0xae86b  1      OPC=nop             
  nop                                                   #  21    0xae86c  1      OPC=nop             
  nop                                                   #  22    0xae86d  1      OPC=nop             
  nop                                                   #  23    0xae86e  1      OPC=nop             
  nop                                                   #  24    0xae86f  1      OPC=nop             
  nop                                                   #  25    0xae870  1      OPC=nop             
  nop                                                   #  26    0xae871  1      OPC=nop             
  nop                                                   #  27    0xae872  1      OPC=nop             
  nop                                                   #  28    0xae873  1      OPC=nop             
  nop                                                   #  29    0xae874  1      OPC=nop             
  nop                                                   #  30    0xae875  1      OPC=nop             
  nop                                                   #  31    0xae876  1      OPC=nop             
  nop                                                   #  32    0xae877  1      OPC=nop             
  nop                                                   #  33    0xae878  1      OPC=nop             
  nop                                                   #  34    0xae879  1      OPC=nop             
  nop                                                   #  35    0xae87a  1      OPC=nop             
  callq ._ZNSs9_M_mutateEjjj                            #  36    0xae87b  5      OPC=callq_label     
  movl %ebx, %ebx                                       #  37    0xae880  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                              #  38    0xae882  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                 #  39    0xae886  3      OPC=leal_r32_m16    
  leal (%r12,%rax,1), %eax                              #  40    0xae889  4      OPC=leal_r32_m16    
  movl %edx, %edx                                       #  41    0xae88d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                    #  42    0xae88f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                  #  43    0xae898  5      OPC=movq_r64_m64    
  nop                                                   #  44    0xae89d  1      OPC=nop             
  nop                                                   #  45    0xae89e  1      OPC=nop             
  nop                                                   #  46    0xae89f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                 #  47    0xae8a0  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                      #  48    0xae8a5  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  49    0xae8a8  3      OPC=addq_r64_r64    
  popq %r11                                             #  50    0xae8ab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  51    0xae8ad  7      OPC=andl_r32_imm32  
  nop                                                   #  52    0xae8b4  1      OPC=nop             
  nop                                                   #  53    0xae8b5  1      OPC=nop             
  nop                                                   #  54    0xae8b6  1      OPC=nop             
  nop                                                   #  55    0xae8b7  1      OPC=nop             
  addq %r15, %r11                                       #  56    0xae8b8  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  57    0xae8bb  3      OPC=jmpq_r64        
  nop                                                   #  58    0xae8be  1      OPC=nop             
  nop                                                   #  59    0xae8bf  1      OPC=nop             
  nop                                                   #  60    0xae8c0  1      OPC=nop             
  nop                                                   #  61    0xae8c1  1      OPC=nop             
  nop                                                   #  62    0xae8c2  1      OPC=nop             
  nop                                                   #  63    0xae8c3  1      OPC=nop             
  nop                                                   #  64    0xae8c4  1      OPC=nop             
  nop                                                   #  65    0xae8c5  1      OPC=nop             
  nop                                                   #  66    0xae8c6  1      OPC=nop             
                                                                                                     
.size _ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_, .-_ZNSs5eraseEN9__gnu_cxx17__normal_iteratorIPcSsEES2_

