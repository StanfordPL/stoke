  .text
  .globl _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc
  .type _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, @function

#! file-offset 0xee9c0
#! rip-offset  0xae9c0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc:  #        0xae9c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                               #  1     0xae9c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                      #  2     0xae9c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                #  3     0xae9c7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                     #  4     0xae9cc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  5     0xae9cf  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                     #  6     0xae9d2  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  7     0xae9d5  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                            #  8     0xae9d7  4      OPC=subl_r32_m32    
  movsbl %dl, %r8d                                     #  9     0xae9db  4      OPC=movsbl_r32_r8   
  nop                                                  #  10    0xae9df  1      OPC=nop             
  movl %ebx, %edi                                      #  11    0xae9e0  2      OPC=movl_r32_r32    
  xorl %edx, %edx                                      #  12    0xae9e2  2      OPC=xorl_r32_r32    
  movl $0x1, %ecx                                      #  13    0xae9e4  5      OPC=movl_r32_imm32  
  movl %r12d, %esi                                     #  14    0xae9e9  3      OPC=movl_r32_r32    
  nop                                                  #  15    0xae9ec  1      OPC=nop             
  nop                                                  #  16    0xae9ed  1      OPC=nop             
  nop                                                  #  17    0xae9ee  1      OPC=nop             
  nop                                                  #  18    0xae9ef  1      OPC=nop             
  nop                                                  #  19    0xae9f0  1      OPC=nop             
  nop                                                  #  20    0xae9f1  1      OPC=nop             
  nop                                                  #  21    0xae9f2  1      OPC=nop             
  nop                                                  #  22    0xae9f3  1      OPC=nop             
  nop                                                  #  23    0xae9f4  1      OPC=nop             
  nop                                                  #  24    0xae9f5  1      OPC=nop             
  nop                                                  #  25    0xae9f6  1      OPC=nop             
  nop                                                  #  26    0xae9f7  1      OPC=nop             
  nop                                                  #  27    0xae9f8  1      OPC=nop             
  nop                                                  #  28    0xae9f9  1      OPC=nop             
  nop                                                  #  29    0xae9fa  1      OPC=nop             
  callq ._ZNSs14_M_replace_auxEjjjc                    #  30    0xae9fb  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  31    0xaea00  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  32    0xaea02  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                #  33    0xaea06  3      OPC=leal_r32_m16    
  leal (%r12,%rax,1), %eax                             #  34    0xaea09  4      OPC=leal_r32_m16    
  movl %edx, %edx                                      #  35    0xaea0d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                   #  36    0xaea0f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                 #  37    0xaea18  5      OPC=movq_r64_m64    
  nop                                                  #  38    0xaea1d  1      OPC=nop             
  nop                                                  #  39    0xaea1e  1      OPC=nop             
  nop                                                  #  40    0xaea1f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                #  41    0xaea20  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                     #  42    0xaea25  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  43    0xaea28  3      OPC=addq_r64_r64    
  popq %r11                                            #  44    0xaea2b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  45    0xaea2d  7      OPC=andl_r32_imm32  
  nop                                                  #  46    0xaea34  1      OPC=nop             
  nop                                                  #  47    0xaea35  1      OPC=nop             
  nop                                                  #  48    0xaea36  1      OPC=nop             
  nop                                                  #  49    0xaea37  1      OPC=nop             
  addq %r15, %r11                                      #  50    0xaea38  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  51    0xaea3b  3      OPC=jmpq_r64        
  nop                                                  #  52    0xaea3e  1      OPC=nop             
  nop                                                  #  53    0xaea3f  1      OPC=nop             
  nop                                                  #  54    0xaea40  1      OPC=nop             
  nop                                                  #  55    0xaea41  1      OPC=nop             
  nop                                                  #  56    0xaea42  1      OPC=nop             
  nop                                                  #  57    0xaea43  1      OPC=nop             
  nop                                                  #  58    0xaea44  1      OPC=nop             
  nop                                                  #  59    0xaea45  1      OPC=nop             
  nop                                                  #  60    0xaea46  1      OPC=nop             
                                                                                                    
.size _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, .-_ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc

