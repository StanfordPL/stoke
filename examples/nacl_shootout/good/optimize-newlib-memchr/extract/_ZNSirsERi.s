  .text
  .globl _ZNSirsERi
  .type _ZNSirsERi, @function

#! file-offset 0xb0d80
#! rip-offset  0x70d80
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSirsERi:                          #        0x70d80  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)              #  1     0x70d80  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)               #  2     0x70d85  5      OPC=movq_m64_r64    
  subl $0x28, %esp                    #  3     0x70d8a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  4     0x70d8d  3      OPC=addq_r64_r64    
  movl %edi, %ebx                     #  5     0x70d90  2      OPC=movl_r32_r32    
  movl %esi, %r12d                    #  6     0x70d92  3      OPC=movl_r32_r32    
  leal 0xc(%rsp), %esi                #  7     0x70d95  4      OPC=leal_r32_m16    
  movl %ebx, %edi                     #  8     0x70d99  2      OPC=movl_r32_r32    
  callq ._ZNSi10_M_extractIlEERSiRT_  #  9     0x70d9b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  10    0x70da0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  11    0x70da2  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  12    0x70da6  3      OPC=subl_r32_imm8   
  movl %eax, %eax                     #  13    0x70da9  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax            #  14    0x70dab  4      OPC=movl_r32_m32    
  addl %ebx, %eax                     #  15    0x70daf  2      OPC=addl_r32_r32    
  movl %eax, %eax                     #  16    0x70db1  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rax,1)       #  17    0x70db3  6      OPC=testb_m8_imm8   
  jne .L_70de0                        #  18    0x70db9  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                #  19    0x70dbb  4      OPC=movl_r32_m32    
  nop                                 #  20    0x70dbf  1      OPC=nop             
  movl %r12d, %r12d                   #  21    0x70dc0  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)            #  22    0x70dc3  4      OPC=movl_m32_r32    
  nop                                 #  23    0x70dc7  1      OPC=nop             
  nop                                 #  24    0x70dc8  1      OPC=nop             
  nop                                 #  25    0x70dc9  1      OPC=nop             
  nop                                 #  26    0x70dca  1      OPC=nop             
  nop                                 #  27    0x70dcb  1      OPC=nop             
  nop                                 #  28    0x70dcc  1      OPC=nop             
  nop                                 #  29    0x70dcd  1      OPC=nop             
  nop                                 #  30    0x70dce  1      OPC=nop             
  nop                                 #  31    0x70dcf  1      OPC=nop             
  nop                                 #  32    0x70dd0  1      OPC=nop             
  nop                                 #  33    0x70dd1  1      OPC=nop             
  nop                                 #  34    0x70dd2  1      OPC=nop             
  nop                                 #  35    0x70dd3  1      OPC=nop             
  nop                                 #  36    0x70dd4  1      OPC=nop             
  nop                                 #  37    0x70dd5  1      OPC=nop             
  nop                                 #  38    0x70dd6  1      OPC=nop             
  nop                                 #  39    0x70dd7  1      OPC=nop             
  nop                                 #  40    0x70dd8  1      OPC=nop             
  nop                                 #  41    0x70dd9  1      OPC=nop             
  nop                                 #  42    0x70dda  1      OPC=nop             
  nop                                 #  43    0x70ddb  1      OPC=nop             
  nop                                 #  44    0x70ddc  1      OPC=nop             
  nop                                 #  45    0x70ddd  1      OPC=nop             
  nop                                 #  46    0x70dde  1      OPC=nop             
  nop                                 #  47    0x70ddf  1      OPC=nop             
.L_70de0:                             #        0x70de0  0      OPC=<label>         
  movl %ebx, %eax                     #  48    0x70de0  2      OPC=movl_r32_r32    
  movq 0x20(%rsp), %r12               #  49    0x70de2  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx               #  50    0x70de7  5      OPC=movq_r64_m64    
  addl $0x28, %esp                    #  51    0x70dec  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  52    0x70def  3      OPC=addq_r64_r64    
  popq %r11                           #  53    0x70df2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  54    0x70df4  7      OPC=andl_r32_imm32  
  nop                                 #  55    0x70dfb  1      OPC=nop             
  nop                                 #  56    0x70dfc  1      OPC=nop             
  nop                                 #  57    0x70dfd  1      OPC=nop             
  nop                                 #  58    0x70dfe  1      OPC=nop             
  addq %r15, %r11                     #  59    0x70dff  3      OPC=addq_r64_r64    
  jmpq %r11                           #  60    0x70e02  3      OPC=jmpq_r64        
  nop                                 #  61    0x70e05  1      OPC=nop             
  nop                                 #  62    0x70e06  1      OPC=nop             
                                                                                   
.size _ZNSirsERi, .-_ZNSirsERi

