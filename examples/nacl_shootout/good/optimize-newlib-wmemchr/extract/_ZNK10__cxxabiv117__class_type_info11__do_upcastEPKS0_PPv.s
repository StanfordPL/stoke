  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, @function

#! file-offset 0x122a00
#! rip-offset  0xe2a00
#! capacity    160 bytes

# Text                                                       #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv:  #        0xe2a00  0      OPC=<label>         
  pushq %rbx                                                 #  1     0xe2a00  1      OPC=pushq_r64_1     
  movl %edi, %edi                                            #  2     0xe2a01  2      OPC=movl_r32_r32    
  movl %edx, %ebx                                            #  3     0xe2a03  2      OPC=movl_r32_r32    
  movl %esi, %esi                                            #  4     0xe2a05  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                           #  5     0xe2a07  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                            #  6     0xe2a0a  3      OPC=addq_r64_r64    
  movl %edi, %edi                                            #  7     0xe2a0d  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                   #  8     0xe2a0f  4      OPC=movl_r32_m32    
  movl %ebx, %ebx                                            #  9     0xe2a13  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edx                                   #  10    0xe2a15  4      OPC=movl_r32_m32    
  movl $0x0, (%rsp)                                          #  11    0xe2a19  7      OPC=movl_m32_imm32  
  movl $0x0, 0x4(%rsp)                                       #  12    0xe2a20  8      OPC=movl_m32_imm32  
  movl %esp, %ecx                                            #  13    0xe2a28  2      OPC=movl_r32_r32    
  movl $0x10, 0x8(%rsp)                                      #  14    0xe2a2a  8      OPC=movl_m32_imm32  
  movl $0x0, 0xc(%rsp)                                       #  15    0xe2a32  8      OPC=movl_m32_imm32  
  nop                                                        #  16    0xe2a3a  1      OPC=nop             
  nop                                                        #  17    0xe2a3b  1      OPC=nop             
  nop                                                        #  18    0xe2a3c  1      OPC=nop             
  nop                                                        #  19    0xe2a3d  1      OPC=nop             
  nop                                                        #  20    0xe2a3e  1      OPC=nop             
  nop                                                        #  21    0xe2a3f  1      OPC=nop             
  movl %eax, %eax                                            #  22    0xe2a40  2      OPC=movl_r32_r32    
  movl 0x18(%r15,%rax,1), %eax                               #  23    0xe2a42  5      OPC=movl_r32_m32    
  xchgw %ax, %ax                                             #  24    0xe2a47  2      OPC=xchgw_ax_r16    
  nop                                                        #  25    0xe2a49  1      OPC=nop             
  nop                                                        #  26    0xe2a4a  1      OPC=nop             
  nop                                                        #  27    0xe2a4b  1      OPC=nop             
  nop                                                        #  28    0xe2a4c  1      OPC=nop             
  nop                                                        #  29    0xe2a4d  1      OPC=nop             
  nop                                                        #  30    0xe2a4e  1      OPC=nop             
  nop                                                        #  31    0xe2a4f  1      OPC=nop             
  nop                                                        #  32    0xe2a50  1      OPC=nop             
  nop                                                        #  33    0xe2a51  1      OPC=nop             
  nop                                                        #  34    0xe2a52  1      OPC=nop             
  nop                                                        #  35    0xe2a53  1      OPC=nop             
  nop                                                        #  36    0xe2a54  1      OPC=nop             
  nop                                                        #  37    0xe2a55  1      OPC=nop             
  nop                                                        #  38    0xe2a56  1      OPC=nop             
  nop                                                        #  39    0xe2a57  1      OPC=nop             
  andl $0xffffffe0, %eax                                     #  40    0xe2a58  6      OPC=andl_r32_imm32  
  nop                                                        #  41    0xe2a5e  1      OPC=nop             
  nop                                                        #  42    0xe2a5f  1      OPC=nop             
  nop                                                        #  43    0xe2a60  1      OPC=nop             
  addq %r15, %rax                                            #  44    0xe2a61  3      OPC=addq_r64_r64    
  callq %rax                                                 #  45    0xe2a64  2      OPC=callq_r64       
  movl 0x4(%rsp), %edx                                       #  46    0xe2a66  4      OPC=movl_r32_m32    
  xorl %eax, %eax                                            #  47    0xe2a6a  2      OPC=xorl_r32_r32    
  andl $0x6, %edx                                            #  48    0xe2a6c  3      OPC=andl_r32_imm8   
  cmpl $0x6, %edx                                            #  49    0xe2a6f  3      OPC=cmpl_r32_imm8   
  jne .L_e2a80                                               #  50    0xe2a72  2      OPC=jne_label       
  movl (%rsp), %eax                                          #  51    0xe2a74  3      OPC=movl_r32_m32    
  movl %ebx, %ebx                                            #  52    0xe2a77  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                   #  53    0xe2a79  4      OPC=movl_m32_r32    
  movl $0x1, %eax                                            #  54    0xe2a7d  5      OPC=movl_r32_imm32  
  nop                                                        #  55    0xe2a82  1      OPC=nop             
  nop                                                        #  56    0xe2a83  1      OPC=nop             
  nop                                                        #  57    0xe2a84  1      OPC=nop             
  nop                                                        #  58    0xe2a85  1      OPC=nop             
.L_e2a80:                                                    #        0xe2a86  0      OPC=<label>         
  addl $0x10, %esp                                           #  59    0xe2a86  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                            #  60    0xe2a89  3      OPC=addq_r64_r64    
  popq %rbx                                                  #  61    0xe2a8c  1      OPC=popq_r64_1      
  popq %r11                                                  #  62    0xe2a8d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                    #  63    0xe2a8f  7      OPC=andl_r32_imm32  
  nop                                                        #  64    0xe2a96  1      OPC=nop             
  nop                                                        #  65    0xe2a97  1      OPC=nop             
  nop                                                        #  66    0xe2a98  1      OPC=nop             
  nop                                                        #  67    0xe2a99  1      OPC=nop             
  addq %r15, %r11                                            #  68    0xe2a9a  3      OPC=addq_r64_r64    
  jmpq %r11                                                  #  69    0xe2a9d  3      OPC=jmpq_r64        
  nop                                                        #  70    0xe2aa0  1      OPC=nop             
  nop                                                        #  71    0xe2aa1  1      OPC=nop             
  nop                                                        #  72    0xe2aa2  1      OPC=nop             
  nop                                                        #  73    0xe2aa3  1      OPC=nop             
  nop                                                        #  74    0xe2aa4  1      OPC=nop             
  nop                                                        #  75    0xe2aa5  1      OPC=nop             
  nop                                                        #  76    0xe2aa6  1      OPC=nop             
  nop                                                        #  77    0xe2aa7  1      OPC=nop             
  nop                                                        #  78    0xe2aa8  1      OPC=nop             
  nop                                                        #  79    0xe2aa9  1      OPC=nop             
  nop                                                        #  80    0xe2aaa  1      OPC=nop             
  nop                                                        #  81    0xe2aab  1      OPC=nop             
  nop                                                        #  82    0xe2aac  1      OPC=nop             
                                                                                                          
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv

