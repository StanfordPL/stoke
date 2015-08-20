  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_, @function

#! file-offset 0x117660
#! rip-offset  0xd7660
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_:                                                     #        0xd7660  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7660  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd7661  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd7663  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                                                 #  4     0xd7665  2      OPC=movl_r32_r32    
  leal (%rdi,%rdx,4), %esi                                                                        #  5     0xd7667  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                                                #  6     0xd766a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  7     0xd766d  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                                                 #  8     0xd7670  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                                               #  9     0xd7672  4      OPC=movb_m8_imm8    
  nop                                                                                             #  10    0xd7676  1      OPC=nop             
  nop                                                                                             #  11    0xd7677  1      OPC=nop             
  nop                                                                                             #  12    0xd7678  1      OPC=nop             
  nop                                                                                             #  13    0xd7679  1      OPC=nop             
  nop                                                                                             #  14    0xd767a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPKwEEPwT_S7_RKS1_St20forward_iterator_tag  #  15    0xd767b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  16    0xd7680  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  17    0xd7682  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  18    0xd7686  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  19    0xd7689  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  20    0xd768c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  21    0xd768d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  22    0xd768f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  23    0xd7696  1      OPC=nop             
  nop                                                                                             #  24    0xd7697  1      OPC=nop             
  nop                                                                                             #  25    0xd7698  1      OPC=nop             
  nop                                                                                             #  26    0xd7699  1      OPC=nop             
  addq %r15, %r11                                                                                 #  27    0xd769a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  28    0xd769d  3      OPC=jmpq_r64        
  nop                                                                                             #  29    0xd76a0  1      OPC=nop             
  nop                                                                                             #  30    0xd76a1  1      OPC=nop             
  nop                                                                                             #  31    0xd76a2  1      OPC=nop             
  nop                                                                                             #  32    0xd76a3  1      OPC=nop             
  nop                                                                                             #  33    0xd76a4  1      OPC=nop             
  nop                                                                                             #  34    0xd76a5  1      OPC=nop             
  nop                                                                                             #  35    0xd76a6  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_

