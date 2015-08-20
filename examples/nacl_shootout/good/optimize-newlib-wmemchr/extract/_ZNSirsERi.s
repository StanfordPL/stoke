  .text
  .globl _ZNSirsERi
  .type _ZNSirsERi, @function

#! file-offset 0xb0660
#! rip-offset  0x70660
#! capacity    128 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSirsERi:                          #        0x70660  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)              #  1     0x70660  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)               #  2     0x70665  5      OPC=movq_m64_r64    
  subl $0x28, %esp                    #  3     0x7066a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                     #  4     0x7066d  3      OPC=addq_r64_r64    
  movl %edi, %ebx                     #  5     0x70670  2      OPC=movl_r32_r32    
  movl %esi, %r12d                    #  6     0x70672  3      OPC=movl_r32_r32    
  leal 0xc(%rsp), %esi                #  7     0x70675  4      OPC=leal_r32_m16    
  movl %ebx, %edi                     #  8     0x70679  2      OPC=movl_r32_r32    
  callq ._ZNSi10_M_extractIlEERSiRT_  #  9     0x7067b  5      OPC=callq_label     
  movl %ebx, %ebx                     #  10    0x70680  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax            #  11    0x70682  4      OPC=movl_r32_m32    
  subl $0xc, %eax                     #  12    0x70686  3      OPC=subl_r32_imm8   
  movl %eax, %eax                     #  13    0x70689  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax            #  14    0x7068b  4      OPC=movl_r32_m32    
  addl %ebx, %eax                     #  15    0x7068f  2      OPC=addl_r32_r32    
  movl %eax, %eax                     #  16    0x70691  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rax,1)       #  17    0x70693  6      OPC=testb_m8_imm8   
  jne .L_706c0                        #  18    0x70699  2      OPC=jne_label       
  movl 0xc(%rsp), %eax                #  19    0x7069b  4      OPC=movl_r32_m32    
  nop                                 #  20    0x7069f  1      OPC=nop             
  movl %r12d, %r12d                   #  21    0x706a0  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)            #  22    0x706a3  4      OPC=movl_m32_r32    
  nop                                 #  23    0x706a7  1      OPC=nop             
  nop                                 #  24    0x706a8  1      OPC=nop             
  nop                                 #  25    0x706a9  1      OPC=nop             
  nop                                 #  26    0x706aa  1      OPC=nop             
  nop                                 #  27    0x706ab  1      OPC=nop             
  nop                                 #  28    0x706ac  1      OPC=nop             
  nop                                 #  29    0x706ad  1      OPC=nop             
  nop                                 #  30    0x706ae  1      OPC=nop             
  nop                                 #  31    0x706af  1      OPC=nop             
  nop                                 #  32    0x706b0  1      OPC=nop             
  nop                                 #  33    0x706b1  1      OPC=nop             
  nop                                 #  34    0x706b2  1      OPC=nop             
  nop                                 #  35    0x706b3  1      OPC=nop             
  nop                                 #  36    0x706b4  1      OPC=nop             
  nop                                 #  37    0x706b5  1      OPC=nop             
  nop                                 #  38    0x706b6  1      OPC=nop             
  nop                                 #  39    0x706b7  1      OPC=nop             
  nop                                 #  40    0x706b8  1      OPC=nop             
  nop                                 #  41    0x706b9  1      OPC=nop             
  nop                                 #  42    0x706ba  1      OPC=nop             
  nop                                 #  43    0x706bb  1      OPC=nop             
  nop                                 #  44    0x706bc  1      OPC=nop             
  nop                                 #  45    0x706bd  1      OPC=nop             
  nop                                 #  46    0x706be  1      OPC=nop             
  nop                                 #  47    0x706bf  1      OPC=nop             
.L_706c0:                             #        0x706c0  0      OPC=<label>         
  movl %ebx, %eax                     #  48    0x706c0  2      OPC=movl_r32_r32    
  movq 0x20(%rsp), %r12               #  49    0x706c2  5      OPC=movq_r64_m64    
  movq 0x18(%rsp), %rbx               #  50    0x706c7  5      OPC=movq_r64_m64    
  addl $0x28, %esp                    #  51    0x706cc  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                     #  52    0x706cf  3      OPC=addq_r64_r64    
  popq %r11                           #  53    0x706d2  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  54    0x706d4  7      OPC=andl_r32_imm32  
  nop                                 #  55    0x706db  1      OPC=nop             
  nop                                 #  56    0x706dc  1      OPC=nop             
  nop                                 #  57    0x706dd  1      OPC=nop             
  nop                                 #  58    0x706de  1      OPC=nop             
  addq %r15, %r11                     #  59    0x706df  3      OPC=addq_r64_r64    
  jmpq %r11                           #  60    0x706e2  3      OPC=jmpq_r64        
  nop                                 #  61    0x706e5  1      OPC=nop             
  nop                                 #  62    0x706e6  1      OPC=nop             
                                                                                   
.size _ZNSirsERi, .-_ZNSirsERi

