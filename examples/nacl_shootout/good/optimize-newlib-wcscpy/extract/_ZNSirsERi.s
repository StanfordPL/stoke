  .text
  .globl _ZNSirsERi
  .type _ZNSirsERi, @function

#! file-offset 0xb0360
#! rip-offset  0x70360
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSirsERi:                          #        0x70360  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)              #  1     0x70360  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)               #  2     0x70365  5      OPC=movq_m64_r64    
  subl $0x28, %esp                    #  3     0x7036a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  4     0x7036d  3      OPC=addq_r64_r64    
  movl %edi, %ebx                     #  5     0x70370  2      OPC=movl_r32_r32    
  movl %esi, %r12d                    #  6     0x70372  3      OPC=movl_r32_r32    
  leal 0xc(%rsp), %esi                #  7     0x70375  4      OPC=leal_r32_m16    
  movl %ebx, %edi                     #  8     0x70379  2      OPC=movl_r32_r32    
  callq ._ZNSi10_M_extractIlEERSiRT_  #  9     0x7037b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  10    0x70380  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  11    0x70382  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  12    0x70386  3      OPC=subl_r32_imm8   
  movl %eax, %eax                     #  13    0x70389  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax            #  14    0x7038b  4      OPC=movl_r32_m32    
  addl %ebx, %eax                     #  15    0x7038f  2      OPC=addl_r32_r32    
  movl %eax, %eax                     #  16    0x70391  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rax,1)       #  17    0x70393  6      OPC=testb_m8_imm8   
  jne .L_703c0                        #  18    0x70399  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                #  19    0x7039b  4      OPC=movl_r32_m32    
  nop                                 #  20    0x7039f  1      OPC=nop             
  movl %r12d, %r12d                   #  21    0x703a0  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)            #  22    0x703a3  4      OPC=movl_m32_r32    
  nop                                 #  23    0x703a7  1      OPC=nop             
  nop                                 #  24    0x703a8  1      OPC=nop             
  nop                                 #  25    0x703a9  1      OPC=nop             
  nop                                 #  26    0x703aa  1      OPC=nop             
  nop                                 #  27    0x703ab  1      OPC=nop             
  nop                                 #  28    0x703ac  1      OPC=nop             
  nop                                 #  29    0x703ad  1      OPC=nop             
  nop                                 #  30    0x703ae  1      OPC=nop             
  nop                                 #  31    0x703af  1      OPC=nop             
  nop                                 #  32    0x703b0  1      OPC=nop             
  nop                                 #  33    0x703b1  1      OPC=nop             
  nop                                 #  34    0x703b2  1      OPC=nop             
  nop                                 #  35    0x703b3  1      OPC=nop             
  nop                                 #  36    0x703b4  1      OPC=nop             
  nop                                 #  37    0x703b5  1      OPC=nop             
  nop                                 #  38    0x703b6  1      OPC=nop             
  nop                                 #  39    0x703b7  1      OPC=nop             
  nop                                 #  40    0x703b8  1      OPC=nop             
  nop                                 #  41    0x703b9  1      OPC=nop             
  nop                                 #  42    0x703ba  1      OPC=nop             
  nop                                 #  43    0x703bb  1      OPC=nop             
  nop                                 #  44    0x703bc  1      OPC=nop             
  nop                                 #  45    0x703bd  1      OPC=nop             
  nop                                 #  46    0x703be  1      OPC=nop             
  nop                                 #  47    0x703bf  1      OPC=nop             
.L_703c0:                             #        0x703c0  0      OPC=<label>         
  movl %ebx, %eax                     #  48    0x703c0  2      OPC=movl_r32_r32    
  movq 0x20(%rsp), %r12               #  49    0x703c2  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx               #  50    0x703c7  5      OPC=movq_r64_m64    
  addl $0x28, %esp                    #  51    0x703cc  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  52    0x703cf  3      OPC=addq_r64_r64    
  popq %r11                           #  53    0x703d2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  54    0x703d4  7      OPC=andl_r32_imm32  
  nop                                 #  55    0x703db  1      OPC=nop             
  nop                                 #  56    0x703dc  1      OPC=nop             
  nop                                 #  57    0x703dd  1      OPC=nop             
  nop                                 #  58    0x703de  1      OPC=nop             
  addq %r15, %r11                     #  59    0x703df  3      OPC=addq_r64_r64    
  jmpq %r11                           #  60    0x703e2  3      OPC=jmpq_r64        
  nop                                 #  61    0x703e5  1      OPC=nop             
  nop                                 #  62    0x703e6  1      OPC=nop             
                                                                                   
.size _ZNSirsERi, .-_ZNSirsERi

