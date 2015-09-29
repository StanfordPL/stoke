  .text
  .globl __ctloc
  .type __ctloc, @function

#! file-offset 0x181be0
#! rip-offset  0x141be0
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.__ctloc:                        #        0x141be0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)         #  1     0x141be0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                #  2     0x141be5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)          #  3     0x141be7  5      OPC=movq_m64_r64    
  movl %ebx, %edi                #  4     0x141bec  2      OPC=movl_r32_r32    
  subl $0x18, %esp               #  5     0x141bee  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                #  6     0x141bf1  3      OPC=addq_r64_r64    
  movl %edx, %r12d               #  7     0x141bf4  3      OPC=movl_r32_r32    
  nop                            #  8     0x141bf7  1      OPC=nop             
  nop                            #  9     0x141bf8  1      OPC=nop             
  nop                            #  10    0x141bf9  1      OPC=nop             
  nop                            #  11    0x141bfa  1      OPC=nop             
  nop                            #  12    0x141bfb  1      OPC=nop             
  nop                            #  13    0x141bfc  1      OPC=nop             
  nop                            #  14    0x141bfd  1      OPC=nop             
  nop                            #  15    0x141bfe  1      OPC=nop             
  nop                            #  16    0x141bff  1      OPC=nop             
  movl %ebx, %ebx                #  17    0x141c00  2      OPC=movl_r32_r32    
  movl $0x0, 0x3fc(%r15,%rbx,1)  #  18    0x141c02  12     OPC=movl_m32_imm32  
  movl $0xff, %edx               #  19    0x141c0e  5      OPC=movl_r32_imm32  
  movl %esi, %esi                #  20    0x141c13  2      OPC=movl_r32_r32    
  nop                            #  21    0x141c15  1      OPC=nop             
  nop                            #  22    0x141c16  1      OPC=nop             
  nop                            #  23    0x141c17  1      OPC=nop             
  nop                            #  24    0x141c18  1      OPC=nop             
  nop                            #  25    0x141c19  1      OPC=nop             
  nop                            #  26    0x141c1a  1      OPC=nop             
  callq .mbstowcs                #  27    0x141c1b  5      OPC=callq_label     
  movl $0x0, %edx                #  28    0x141c20  5      OPC=movl_r32_imm32  
  cmpl $0xffffffff, %eax         #  29    0x141c25  6      OPC=cmpl_r32_imm32  
  nop                            #  30    0x141c2b  1      OPC=nop             
  nop                            #  31    0x141c2c  1      OPC=nop             
  nop                            #  32    0x141c2d  1      OPC=nop             
  cmovel %edx, %eax              #  33    0x141c2e  3      OPC=cmovel_r32_r32  
  movl %r12d, %r12d              #  34    0x141c31  3      OPC=movl_r32_r32    
  movl %eax, (%r15,%r12,1)       #  35    0x141c34  4      OPC=movl_m32_r32    
  movl %ebx, %eax                #  36    0x141c38  2      OPC=movl_r32_r32    
  movq 0x10(%rsp), %r12          #  37    0x141c3a  5      OPC=movq_r64_m64    
  movq 0x8(%rsp), %rbx           #  38    0x141c3f  5      OPC=movq_r64_m64    
  xchgw %ax, %ax                 #  39    0x141c44  2      OPC=xchgw_ax_r16    
  addl $0x18, %esp               #  40    0x141c46  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                #  41    0x141c49  3      OPC=addq_r64_r64    
  popq %r11                      #  42    0x141c4c  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d        #  43    0x141c4e  7      OPC=andl_r32_imm32  
  nop                            #  44    0x141c55  1      OPC=nop             
  nop                            #  45    0x141c56  1      OPC=nop             
  nop                            #  46    0x141c57  1      OPC=nop             
  nop                            #  47    0x141c58  1      OPC=nop             
  addq %r15, %r11                #  48    0x141c59  3      OPC=addq_r64_r64    
  jmpq %r11                      #  49    0x141c5c  3      OPC=jmpq_r64        
  nop                            #  50    0x141c5f  1      OPC=nop             
  nop                            #  51    0x141c60  1      OPC=nop             
  nop                            #  52    0x141c61  1      OPC=nop             
  nop                            #  53    0x141c62  1      OPC=nop             
  nop                            #  54    0x141c63  1      OPC=nop             
  nop                            #  55    0x141c64  1      OPC=nop             
  nop                            #  56    0x141c65  1      OPC=nop             
  nop                            #  57    0x141c66  1      OPC=nop             
  nop                            #  58    0x141c67  1      OPC=nop             
  nop                            #  59    0x141c68  1      OPC=nop             
  nop                            #  60    0x141c69  1      OPC=nop             
  nop                            #  61    0x141c6a  1      OPC=nop             
  nop                            #  62    0x141c6b  1      OPC=nop             
  nop                            #  63    0x141c6c  1      OPC=nop             
                                                                               
.size __ctloc, .-__ctloc

